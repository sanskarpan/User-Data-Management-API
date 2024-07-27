<?php


namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use League\Csv\Reader;
use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use App\Message\EmailNotification;
use Symfony\Component\Messenger\MessageBusInterface;

class UploadController extends AbstractController
{
    private $em;
    private $mailer;
    private $bus;

    public function __construct(EntityManagerInterface $em, MailerInterface $mailer, MessageBusInterface $bus)
    {
        $this->em = $em;
        $this->mailer = $mailer;
        $this->bus = $bus;
    }

    #[Route('/api/upload', name: 'upload_data', methods: ['POST'])]
    public function upload(Request $request): Response
    {
        $file = $request->files->get('file');
        if ($file->getClientOriginalExtension() !== 'csv') {
            return new Response('Invalid file format', 400);
        }

        $csv = Reader::createFromPath($file->getPathname());
        $csv->setHeaderOffset(0);
        $records = $csv->getRecords();

        foreach ($records as $record) {
            $user = new User();
            $user->setName($record['name']);
            $user->setEmail($record['email']);
            $user->setUsername($record['username']);
            $user->setAddress($record['address']);
            $user->setRole($record['role']);
            $this->em->persist($user);

            // Send email
            $email = (new Email())
                ->from('admin@example.com')
                ->to($record['email'])
                ->subject('Welcome to the system')
                ->text('You have been added to the system.');
            $this->mailer->send($email);

            // Dispatch email notification
            $this->bus->dispatch(new EmailNotification(
                $record['email'],
                'Welcome to the system',
                'You have been added to the system.'
            ));
        }

        $this->em->flush();

        return new Response('Data uploaded successfully', 200);
    }
}

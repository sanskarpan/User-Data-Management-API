<?php

namespace App\MessageHandler;

use App\Message\EmailNotification;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Messenger\Handler\MessageHandlerInterface;

class EmailNotificationHandler implements MessageHandlerInterface
{
    private $mailer;

    public function __construct(MailerInterface $mailer)
    {
        $this->mailer = $mailer;
    }

    public function __invoke(EmailNotification $notification)
    {
        $email = (new Email())
            ->from('admin@example.com')
            ->to($notification->getEmail())
            ->subject($notification->getSubject())
            ->text($notification->getContent());

        $this->mailer->send($email);
    }
}

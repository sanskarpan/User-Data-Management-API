<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class RestoreController extends AbstractController
{
    #[Route('/api/restore', name: 'restore_database', methods: ['POST'])]
    public function restore(Request $request): Response
    {
        $file = $request->files->get('file');
        if ($file->getClientOriginalExtension() !== 'sql') {
            return new Response('Invalid file format', 400);
        }

        $command = sprintf('mysql --user=%s --password=%s --host=%s %s < %s',
            $_ENV['DB_USER'],
            $_ENV['DB_PASSWORD'],
            $_ENV['DB_HOST'],
            $_ENV['DB_NAME'],
            $file->getPathname()
        );

        exec($command);

        return new Response('Database restored successfully', 200);
    }
}

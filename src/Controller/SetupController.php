<?php
// src/Controller/SetupController.php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\DBAL\Connection;

class SetupController extends AbstractController
{
    #[Route('/api/setup', name: 'setup_database', methods: ['GET'])]
    public function setup(Connection $connection): Response
    {
        $setupFile = '/Applications/XAMPP/xamppfiles/htdocs/Project/user-data-management-api/setup.sql';
        $sql = file_get_contents($setupFile);

        if ($sql === false) {
            return new Response('Failed to read setup file', 500);
        }

        try {
            $connection->executeStatement($sql);
        } catch (\Exception $e) {
            return new Response('Database setup failed: ' . $e->getMessage(), 500);
        }

        return new Response('Database setup successfully', 200);
    }
}

<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\UserRepository;

class UserController extends AbstractController
{
    #[Route('/api/users', name: 'view_users', methods: ['GET'])]
    public function index(UserRepository $userRepository): Response
    {
        $users = $userRepository->findAll();
        $data = [];
        foreach ($users as $user) {
            $data[] = [
                'name' => $user->getName(),
                'email' => $user->getEmail(),
                'username' => $user->getUsername(),
                'address' => $user->getAddress(),
                'role' => $user->getRole()
            ];
        }

        return $this->json($data);
    }
}

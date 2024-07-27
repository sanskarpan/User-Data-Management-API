<?php

namespace App\Message;

class EmailNotification
{
    private $email;
    private $subject;
    private $content;

    public function __construct(string $email, string $subject, string $content)
    {
        $this->email = $email;
        $this->subject = $subject;
        $this->content = $content;
    }

    public function getEmail(): string
    {
        return $this->email;
    }

    public function getSubject(): string
    {
        return $this->subject;
    }

    public function getContent(): string
    {
        return $this->content;
    }
}

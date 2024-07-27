# User Data Management API

This project provides a set of APIs for managing user data, interacting with a database, and handling email notifications. The APIs handle operations such as uploading user data, viewing user data, backing up the database, and restoring the database.

## Features

- **Upload and Store Data API**
- **View Data API**
- **Backup Database API**
- **Restore Database API**
- **Email Sending**

## Requirements

- PHP
- Symfony
- MySQL
- Composer

## Setup

### Step 1: Clone the Repository

```sh
git clone https://github.com/sanskarpan/User-Data-Management-API.git
cd User-Data-Management-API
```

### Step 2: Install Dependencies
```sh
composer install
```

### Step 3: Configure Environment Variables
Copy the .env file to create a local configuration file:

```sh
cp .env .env.local
``` 
Edit the .env.local file to configure your database and mailer DSN:

```sh
DATABASE_URL="mysql://php:usermanage@127.0.0.1:3305/user_manage"
MAILER_DSN=gmail+smtp://your-email@gmail.com:your-password@default
```

### Step 4: Run the Setup Script
Run the setup script to create the `users` table:

```sh
php bin/console doctrine:database:create
php bin/console doctrine:migrations:migrate
```
Or visit the `/api/setup endpoint` in your browser:

```sh
http://127.0.0.1:8000/api/setup
```

## Usage
### Upload and Store Data API
1. Endpoint: POST /api/upload
2. Description: Allows an admin to upload the data.csv file.
3. Functionality: Parses the data.csv file, saves the data into a database, and sends an email to each user upon successful storage.

### View Data API
1. Endpoint: GET /api/users
2. Description: Allows viewing of all user data stored in the database.

### Backup Database API
1. Endpoint: GET /api/backup
2. Description: Allows an admin to take a backup of the database.
3. Functionality: Generates a backup file (e.g., backup.sql).

### Restore Database API
1. Endpoint: POST /api/restore
2. Description: Allows an admin to restore the database from the backup.sql file.
3. Functionality: Restores the database using the backup file.

### Email Sending
Emails are sent asynchronously using Symfony Messenger to avoid blocking the API response.

## Testing the Endpoints
You can use Postman or any other API client to test the endpoints.

### Example Requests
* Upload Data
- Method: POST
- URL: http://127.0.0.1:8000/api/upload
- Body: Form-data
-    Key: file
-    Value: Select data.csv file

* View Users
- Method: GET
- URL: http://127.0.0.1:8000/api/users

* Backup Database
- Method: GET
- URL: http://127.0.0.1:8000/api/backup
* Restore Database
- Method: POST
- URL: http://127.0.0.1:8000/api/restore
- Body: Form-data
-   Key: file
-   Value: Select backup.sql file
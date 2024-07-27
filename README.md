# User Data Management API


The User Data Management system is a robust solution that provides a set of APIs for managing user data, interacting with a MySQL database, and handling email notifications. The system supports operations such as uploading user data, viewing user data, backing up the database, and restoring the database, all built using PHP and Symfony.


>## Features
- **Upload and Store Data API**: Easily upload user data from a CSV file.
- **View Data API**: Retrieve all user data stored in the database.
- **Backup Database API**: Generate backups of the database.
- **Restore Database API**: Restore the database from backup files.
- **Email Notifications**: Automatically send emails upon successful data uploads.


## Requirements/Stack

- **Backend**: PHP, Symfony
- **Database**: MySQL
- **Dependencies**: Composer
- **Email Service**: SMTP (using Gmail in this example)

>## Setup

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
Or visit the `http://127.0.0.1:8000/api/setup` endpoint in your browser

### Step 5: Start the Symfony Server
```sh
symfony server:start
```

>## Usage
### Upload and Store Data API
* `Endpoint`: POST /api/upload
* `Description`: Allows an admin to upload the data.csv file.
* `Functionality`: Parses the data.csv file, saves the data into a database, and sends an email to each user upon successful storage.

### View Data API
* `Endpoint`: GET /api/users
* `Description`: Allows viewing of all user data stored in the database.

### Backup Database API
* `Endpoint`: GET /api/backup
* `Description`: Allows an admin to take a backup of the database.
* `Functionality`: Generates a backup file (e.g., backup.sql).

### Restore Database API
* `Endpoint`: POST /api/restore
* `Description`: Allows an admin to restore the database from the backup.sql file.
* `Functionality`: Restores the database using the backup file.

### Email Sending
Emails are sent asynchronously using Symfony Messenger to avoid blocking the API response.
**Test Email Functionality**:
To ensure that the email sending functionality is properly set up and working, you can use the `TestEmailController`.
- `Endpoint`: GET /api/test-email
- `Description`: Sends a test email to verify email configuration.


>## Testing the Endpoints
You can use Postman or any other API client to test the endpoints.

### Example Requests
 **Upload Data**
- Method: POST
- URL: `http://127.0.0.1:8000/api/upload`
- Body: Form-data
-    Key: file
-    Value: Select data.csv file

**View Users**
- Method: GET
- URL: `http://127.0.0.1:8000/api/users`

**Backup Database**
- Method: GET
- URL: `http://127.0.0.1:8000/api/backup`

**Restore Database**
- Method: POST
- URL: `http://127.0.0.1:8000/api/restore`
- Body: Form-data
-   Key: file
-   Value: Select backup.sql file


**Test Email Functionality**
- Method: GET
- URL: `http://127.0.0.1:8000/api/test-email

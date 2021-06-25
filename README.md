# lawfirmx

Welcome To LawFirm X

This is a laravel 8 project.

To use the project please do the following:
1. Download the zipped folder and extract its content(it should be in a folder named lawfirmx)
2. Place the folder in the www directory of your wampserver
3. Open the folder in your choice of editor 

There is no node_modules folder, to get the folder do the following
1. Open your terminal and navigate to the project folder
2. Rum npm install to recover the node_modules folder

Setting Up Database
1. At phpmyadmin, create a database called lawfirmx_clients
2. You canrun migrations using php artisan migrate or upload the sql file to your database to automatically create tables and insert fields. The sql file name is lawfirmx_clients.sql

Getting Emails
1. Open the .env file and edit the code below with your mailtrap.io credentials
MAIL_MAILER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=511f3217699be8
MAIL_PASSWORD=f61854bccfaebd
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS=doveway@lawfirmx.com
MAIL_FROM_NAME="${APP_NAME}"

LUNCH THE APPLICATION

Using localhost, lunch the application (Please ensure wampserver is running)

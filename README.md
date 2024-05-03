# tvProject

Prerequisites
This project is made on a Ubuntu machine

For laravel application:

NPM: https://docs.npmjs.com/downloading-and-installing-node-js-and-npm
This is installed by default on Ubuntu 18.04 or later

PHP 8: https://www.php.net/manual/en/install.php 
This must be installed manually by running the command:
```bash
sudo apt install php libapache2-mod-php php-mysql php-cli unzip
```

Composer: https://getcomposer.org/download/
This must be installed manually by downloading the installing script from composer by Running these commands:
```bash
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer

```
MySQL 8: https://dev.mysql.com/downloads/
This must be installed manually started by running the commands:
```bash
sudo apt install mysql-server
sudo systemctl start mysql.service

```

For Flutter Applicattion:
https://docs.flutter.dev/get-started/install

First time run:

Laravel:
In the folder "tableBooking".
1. Run the command "Composer Install"
2. Run the command "php artisan migrate:fresh"
3. Run the command "php artisan db:seed"
4. Run the command "php artisan serve"
Now the backend should be up and running.

For the Web frontend:
In the folder "tablebooking"
1. Run command "npm install"
2. Run the command "npm run dev"
The frontend is now running

For the flutter Application:
In the folder "booking_application"
1. Run thhe command "flutter run"
Or simply open in VS CODE with the flutter plugin installed and press F5

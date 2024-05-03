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
There is some different ways to install flutter one is:
Firstly download the installation bundle (By the time of writing this is the newest version)
```bash 
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.6-stable.tar.xz
```
move the file to /usr/bin and run the command:
```bash
tar -xvf flutter_linux_3.19.6-stable.tar.xz
```
This extract the extracts the the Flutter SDK
To add the Flutter to your PATH run:
```bash
echo 'export PATH="$HOME/development/flutter/bin:$PATH"' >> ~/.bash_profile
```
You also need Android studio you can download it here:
https://developer.android.com/studio

run the installer and follow the wizard, you need the mfollowing components:
    Android SDK Platform, API 34.0.0
    Android SDK Command-line Tools
    Android SDK Build-Tools
    Android SDK Platform-Tools
    Android Emulator

When you are finished with that run flutter doctor in your terminal to see if anything is installed
```bash
flutter doctor
```


First time run:

Laravel:
In the folder "tableBooking".
run the following commands in your terminal
```bash
Composer Install
php artisan migrate:fresh
php artisan db:seed
php artisan serve
```
Now the backend should be up and running.

For the Web frontend:
In the folder "tablebooking" 
run the following commands in you terminal
```bash
npm install
npm run dev
```
The frontend is now running

For the flutter Application:
In the folder "booking_application"
Run the command
```bash
flutter run
```
Or simply open in VS CODE with the flutter plugin installed and press F5


To set up your own device for debugging Do the following:
1. Enable Developer options and USB debugging on your device as described in the Android documentation:
https://developer.android.com/studio/debug/dev-options

2. Plug your device into your Linux computer. If your device prompts you, authorize your computer to access your device.

3. Verify that Flutter recognizes your connected Android device.
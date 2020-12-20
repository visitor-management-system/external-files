The whole system is using these versions of packages:
postgres: v9.5.24  //required
node: 10.16.3
npm: 6.9.0
react: 17.0.1

This README also assumes that these packages are correctly installed.

Now, the procedure is as follows:

0. Unpacking everything:

You need to extract the three subitems of the zip - frontend(folder), backend(folder), external-files(which contains visitordb.pgsql - dump file) - into a folder (I am doing it into /home/(username you are logged in with)/vms)

1. Getting postgres ready:

Execute these commands(with a fresh shell terminal):
$ sudo -u postgres psql
// You have entered postgres as superuser
# create role iamuser with login password 'password';
# alter role iamuser CREATEDB;
# \q
// You now have a user which can work with the imported db
$ psql -d postgres -U iamuser
// When asked for password, enter 'password' (without quotes)
=> create database visitordb;
=> \q
$ psql -U iamuser visitordb < /home/(username you are logged in with)/vms/external-files/visitordb.pgsql
$ psql -d postgres -U iamuser
// When asked for password, enter 'password' (without quotes)
=> \c visitordb;
// Now you are connected to database 'visitordb' through user 'iamuser'. Now you can view records of 'visitor_master'(master info table) and 'visitor_log'(log table)

2. Starting the nodejs server(backend):

Execute these commands(with a fresh shell terminal):

$ cd /home/(username you are logged in with)/vms/backend/
$ npm i
$ node index.js
// now you have a nodejs server running, ready to listen to api requests

3. Starting the react web app(frontend):

Execute these commands(with a fresh shell terminal):

$ cd /home/(username you are logged in with)/vms/frontend/
$ npm i
$ npm start
// now you have the frontend running.

Command Shell references:
$  - shell commands
#  - when logged into postgres through root user
=> - when logged into postgres through our created user

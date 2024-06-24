# Description

The test task implements an administrator interface for performing CRUD operations with accounts. In addition to this,
there is
authorization that prevents third parties from accessing the administrator interface. The task used: HTML, CSS, PHP, JS,
Bootstrap, jQuery. The application was implemented in MVC architecture; AJAX requests were used to receive and send
data.
All incoming data is validated and errors are displayed.

## Preview

<details>
  <summary>Preview current content</summary>

-

Authorization ![Authorization]

- Creating new
  users ![Creating new users]

- Editing
  users ![Editing users]

</details>

## Receiving

Clone the repository into your server directory:
```https://github.com/Leksizz/test-task.git```
Configure the host so that the root folder is ```public```

## Installing dependencies

Open the console from the project folder and run the command to install the necessary dependencies:
```composer update```

## Database configuration

The file ```database.php```, located in the ```config``` folder, is responsible for the database configuration:
Configure the connection settings according to your database:

```
const DB_DRIVER = 'mysql';
const DB_HOST = 'MySQL-8.2';
const DB_NAME = 'test-task';
const DB_USERNAME = 'root';
const DB_PASSWORD = '';
const DB_CHARSET = 'utf8';
```

## Database Schema

Presented in the file: ```test-task.sql```

##   

To log in as an administrator, enter:
login: Admin
password: Admin123
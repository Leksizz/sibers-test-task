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

Authorization ![auth](https://github.com/Leksizz/sibers-test-task/assets/129582133/1bc786f3-a044-4d6b-8efb-5a8505f25989)

- CRUD  ![CRUD](https://github.com/Leksizz/sibers-test-task/assets/129582133/a0d2e84f-75b8-4aaf-80b0-90f982244f22)

- Errors ![errors](https://github.com/Leksizz/sibers-test-task/assets/129582133/66b938a9-b547-4cc7-82fc-277be137d678)

</details>

## Receiving

Clone the repository into your server directory:
```https://github.com/Leksizz/sibers-test-task.git```
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

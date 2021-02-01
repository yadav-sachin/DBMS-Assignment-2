# Tables:

## Users
- user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT
- email VARCHAR (100) NOT NULL UNIQUE
- password VARCHAR (100) NOT NULL
- username VARCHAR (100) NOT NULL
- phone NUMERIC(10, 0) NOT NULL UNIQUE
- signup_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP

```sql
CREATE TABLE users(
    user_id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR (100) NOT NULL UNIQUE,
    password VARCHAR (100) NOT NULL,
    username VARCHAR (100) NOT NULL,
    phone NUMERIC(10, 0) NOT NULL UNIQUE,
    signup_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id)
);
```

<!-- +-------------+---------------+------+-----+-------------------+-------------------+
| Field       | Type          | Null | Key | Default           | Extra             |
+-------------+---------------+------+-----+-------------------+-------------------+
| user_id     | int           | NO   | PRI | NULL              | auto_increment    |
| email       | varchar(100)  | NO   | UNI | NULL              |                   |
| password    | varchar(100)  | NO   |     | NULL              |                   |
| username    | varchar(100)  | NO   |     | NULL              |                   |
| phone       | decimal(10,0) | NO   |     | NULL              |                   |
| signup_date | datetime      | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-------------+---------------+------+-----+-------------------+-------------------+ -->


## Address
- address_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT
- user_id INT FOREIGN KEY users(user_id)
- line1 VARCHAR (100) NOT NULL
- line2 VARCHAR (100)
- city VARCHAR (100) NOT NULL
- state VARCHAR (100) NOT NULL
- country VARCHAR (100) NOT NULL
- pincode NUMERIC(6,0) NOT NULL
  
```sql
CREATE TABLE addresses(
    address_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT,
    street VARCHAR (100) NOT NULL,
    city VARCHAR (100) NOT NULL,
    state VARCHAR (100) NOT NULL,
    country VARCHAR (100) NOT NULL,
    pincode NUMERIC(6,0) NOT NULL,
    PRIMARY KEY (address_id),
    FOREIGN KEY (user_id)
)
```


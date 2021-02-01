UPDATE reviews
SET user_id = NULL, username = 'Anonymous'
WHERE user_id = (SELECT user_id
    FROM users
    WHERE email = 'niraj@gmail.com');

DELETE FROM users
WHERE email = 'niraj@gmail.com';
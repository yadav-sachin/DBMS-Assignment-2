(SELECT (user_id, email, username) 
FROM users
WHERE user_id in (
    SELECT *    
)
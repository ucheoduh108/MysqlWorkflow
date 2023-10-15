DESC users;

-- FIND 5 OLDEST USES 
SELECT username,created_at FROM users 
GROUP BY id 
ORDER BY created_at ASC
LIMIT 5; 

-- MOST REGULAR REGISTRATION DATE 

SELECT  DAYNAME(created_at) AS Day,
COUNT(*) AS Total
FROM users GROUP BY Day 
ORDER BY Total DESC LIMIT 3;

show tables;
desc tags;
-- identity USERS WHO HAVE NEVER POSTED A PHOTO 
SELECT username,image_url 
FROM users
LEFT JOIN photos 
ON users.id = photos.user_id WHERE image_url IS NULL GROUP BY username ;

-- identity most popular photo (and the user who created it) 
select image_url,username,COUNT(*) AS Total from photos
join likes
on photos.id = likes.photo_id
join users
on users.id = photos.user_id
GROUP BY photos.id
ORDER BY Total DESC
limit 1;

-- Calculate the average number of photo per user
-- Total number photo / total number of users

SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AVG;

-- 5 most popular hashtags
SELECT tag_name,COUNT(*) AS Total FROM tags
JOIN photo_tags
ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY Total desc
LIMIT 5;
 
 -- find Bots - users who have liked every single photo
 SELECT username,
 COUNT(*) AS num_likes
 FROM users
 JOIN likes
 ON users.id = likes.user_id
 GROUP BY likes.user_id
 HAVING num_likes = (SELECT COUNT(*) FROM photos);
 


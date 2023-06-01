
-- A) Marketing: The marketing team wants to launch some campaigns, and they need your help with the following
--  1-Rewarding Most Loyal Users: 
--   People who have been using the platform for the longest time.
select id, username, created_at 
from users 
order by created_at 
LIMIT 5;

-- 2-Remind Inactive Users to Start Posting: 
-- By sending them promotional emails to post their 1st photo.

select username from users 
 left join photos 
 on users.id=photos.user_id 
 where photos.id is null;
 
 -- 3-Declaring Contest Winner:
 -- The team started a contest and the user who gets the most likes on a single photo will win the contest now they wish to declare the winner.
select users.username, photos.id,photos.image_url,count(*) 
as total_likes 
from likes join photos 
on photos.id=likes.photo_id join users 
on users.id=likes.photo_id
group by photos.id order by total_likes desc limit 1;

-- 4-Declaring Contest Winner: 
-- The team started a contest and the user who gets the most likes on a single photo will win the contest now they wish to declare the winner.
SELECT tag_name, COUNT(tag_name) AS total
FROM tags
JOIN photo_tags ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY total DESC LIMIT 5;

-- 5-Launch AD Campaign: 
-- The team wants to know, which day would be the best day to launch ADs.
SELECT date_format(created_at,'%W') AS 'Week Day', COUNT(*) AS 'Number of
Registration '
FROM users
GROUP BY 1
ORDER BY 2 DESC;
-- B) Investor Metrics: 
-- Our investors want to know if Instagram is performing well and is not becoming redundant like Facebook,  they want to assess the app on the following grounds
-- 1-User Engagement: 
-- Are users still as active and post on Instagram or they are making fewer posts
select ROUND((SELECT COUNT(*)FROM photos)/(SELECT COUNT(*) FROM users),2);
-- 2-Bots & Fake Accounts: 
-- The investors want to know if the platform is crowded with fake and dummy accounts
SELECT users.id,username, COUNT(users.id) As total_likes_by_user
FROM users
JOIN likes ON users.id = likes.user_id
GROUP BY users.id
HAVING total_likes_by_user = (SELECT COUNT(*) FROM photos);
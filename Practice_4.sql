USE vk;

# Подсчитать количество групп, в которые вступил каждый пользователь.
SELECT 
	user_id,
	COUNT(community_id) AS communities_count
FROM users_communities
GROUP BY user_id;

# Подсчитать количество пользователей в каждом сообществе.

SELECT 
	id,
    name,
    COUNT(user_id) AS users_count
FROM communities
JOIN users_communities ON communities.id = users_communities.community_id
GROUP BY communities.id
ORDER BY communities.id;

# Пусть задан некоторый пользователь. 
# Из всех пользователей соц. сети найдите человека, 
# который больше всех общался с выбранным пользователем (написал ему сообщений).


SELECT 
	from_user_id,
    to_user_id,
    COUNT(from_user_id) AS messages
FROM messages
WHERE to_user_id = 1
GROUP BY from_user_id
ORDER BY messages DESC
LIMIT 1;

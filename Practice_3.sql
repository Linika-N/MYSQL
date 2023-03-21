USE vk;

#Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке. [ORDER BY]

SELECT DISTINCT firstname
FROM users
ORDER BY firstname;

# Выведите количество мужчин старше 35 лет [COUNT]

SELECT COUNT(*) AS  over_35_years_old
FROM profiles
WHERE TIMESTAMPDIFF(year,birthday,now())>34;

# Сколько заявок в друзья в каждом статусе? (таблица friend_requests) [GROUP BY]

SELECT COUNT(*) as request_count
FROM friend_requests
GROUP BY status;


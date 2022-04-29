# Challenge 1:Find the 5 oldest usersALTER
# SELECT username
# FROM users
# ORDER BY  created_at
# LIMIT 5;

#+------------------+
#| username         |
#+------------------+
#| Darby_Herzog     |
#| Emilio_Bernier52 |
#| Elenor88         |
#| Nicole71         |
#| Jordyn.Jacobson2 |
#+------------------+

#Challenge 2: What day of the week do most users register on?

# SELECT 
#     username, 
#     DAYNAME(created_at) AS day,
#     COUNT(*) AS total
# FROM  users
# GROUP BY DAYNAME(created_at)
# ORDER BY total DESC;

#+-------------------+-----------+-------+
#| username          | day       | total |
#+-------------------+-----------+-------+
#| Kenton_Kirlin     | Thursday  |    16 |
#| Andre_Purdy85     | Sunday    |    16 |
#| Gus93             | Friday    |    15 |
#| Harley_Lind18     | Tuesday   |    14 |
#| Kasandra_Homenick | Monday    |    14 |
#| Aniya_Hackett     | Wednesday |    13 |
#| Arely_Bogan63     | Saturday  |    12 |
#+-------------------+-----------+-------+

# The best 2 days according to this data are Thursday and Sunday

#Challenge 3: Find the users who have never posted a phot0

# SELECT username, image_url
# FROM users
#     LEFT JOIN photos
#      ON users.id = photos.user_id
#      WHERE image_url IS NULL;
     
# +---------------------+-----------+
# | username            | image_url |
# +---------------------+-----------+
# | Aniya_Hackett       | NULL      |
# | Bartholome.Bernhard | NULL      |
# | Bethany20           | NULL      |
# | Darby_Herzog        | NULL      |
# | David.Osinski47     | NULL      |
# | Duane60             | NULL      |
# | Esmeralda.Mraz57    | NULL      |
# | Esther.Zulauf61     | NULL      |
# | Franco_Keebler64    | NULL      |
# | Hulda.Macejkovic    | NULL      |
# | Jaclyn81            | NULL      |
# | Janelle.Nikolaus81  | NULL      |
# | Jessyca_West        | NULL      |
# | Julien_Schmidt      | NULL      |
# | Kasandra_Homenick   | NULL      |
# | Leslie67            | NULL      |
# | Linnea59            | NULL      |
# | Maxwell.Halvorson   | NULL      |
# | Mckenna17           | NULL      |
# | Mike.Auer39         | NULL      |
# | Morgan.Kassulke     | NULL      |
# | Nia_Haag            | NULL      |
# | Ollie_Ledner37      | NULL      |
# | Pearl7              | NULL      |
# | Rocio33             | NULL      |
# | Tierra.Trantow      | NULL      |
# +---------------------+-----------+

# Challenge 4: who has the most likes on a single photo?
# SELECT photos.id, photos.image_url, users.username,
# COUNT(*) AS TOTAL
# FROM   photos
# INNER JOIN likes
#     ON likes.photo_id = photos.id
# INNER JOIN users
#     on photos.user_id = users.id
# GROUP BY photos.id 
# ORDER BY TOTAL DESC
# LIMIT 1;

# +-----+---------------------+---------------+-------+
# | id  | image_url           | username      | TOTAL |
# +-----+---------------------+---------------+-------+
# | 145 | https://jarret.name | Zack_Kemmer93 |    48 |
# +-----+---------------------+---------------+-------+

#Challenge 5: how many times does the average user posted
# calculate the average number of photos per user

# SELECT
# (SELECT COUNT(*) FROM photos) /
# (SELECT COUNT(*) FROM users) AS 'Average photo post per user';

# +-----------------------------+
# | Average photo post per user |
# +-----------------------------+
# |                      2.5700 |
# +-----------------------------+

#Challenge 6: What are the 5 most commonly used hashtags?

# SELECT tag_name, tag_id,
# COUNT(*) as total
# FROM tags 
# JOIN photo_tags
#     ON tags.id = photo_tags.tag_id
# GROUP BY tag_name
# ORDER BY total DESC 
# LIMIT 5;

# +----------+--------+-------+
# | tag_name | tag_id | total |
# +----------+--------+-------+
# | smile    |     21 |    59 |
# | beach    |     20 |    42 |
# | party    |     17 |    39 |
# | fun      |     13 |    38 |
# | lol      |     11 |    24 |
# +----------+--------+-------+

# Challenge 7: Find users who have liked every  photo_tags

# SELECT users.username, 
#     COUNT(*) AS total
# FROM  users
#  INNER JOIN likes
#      ON users.id = likes.user_id
#  GROUP BY likes.user_id
#  HAVING total = (SELECT COUNT(*) FROM photos);
 
#  +--------------------+-------+
# | username           | total |
# +--------------------+-------+
# | Aniya_Hackett      |   257 |
# | Jaclyn81           |   257 |
# | Rocio33            |   257 |
# | Maxwell.Halvorson  |   257 |
# | Ollie_Ledner37     |   257 |
# | Mckenna17          |   257 |
# | Duane60            |   257 |
# | Julien_Schmidt     |   257 |
# | Mike.Auer39        |   257 |
# | Nia_Haag           |   257 |
# | Leslie67           |   257 |
# | Janelle.Nikolaus81 |   257 |
# | Bethany20          |   257 |
# +--------------------+-------+
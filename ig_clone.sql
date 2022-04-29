# CREATE DATABASE ig_clone;
# use ig_clone;

# CREATE TABLE users (
#     id INTEGER AUTO_INCREMENT PRIMARY KEY,
#     username VARCHAR(255) UNIQUE NOT NULL, 
#     create_at  TIMESTAMP DEFAULT NOW()
# )

# INSERT INTO users (username) VALUES
# ('BlueTheCat'),
# ('CharlieBrown'),
# ('AndrewPeterson'),
# ('ColtSteele');

#  CREATE TABLE photos (
#     id INTEGER AUTO_INCREMENT PRIMARY KEY,
#     image_url VARCHAR(255)  NOT NULL, 
#     user_id INTEGER NOT NULL, 
#     create_at  TIMESTAMP DEFAULT NOW(), 
#     FOREIGN KEY(user_id) REFERENCES users(id)
# );

# INSERT INTO photos (image_url, user_id) VALUES
# ('/link1/file.jpg ', 3),
# ('/link2/file.jpg ', 1),
# ('/link3/file.jpg ', 2),
# ('/link4/file.jpg ', 4);

# CREATE TABLE comments (
#     id INTEGER AUTO_INCREMENT PRIMARY KEY,
#     comment_text VARCHAR(255)  NOT NULL, 
#     user_id INTEGER NOT NULL, 
#     photo_id INTEGER NOT NULL,
#     create_at  TIMESTAMP DEFAULT NOW(), 
#     FOREIGN KEY(user_id) REFERENCES users(id),
#     FOREIGN KEY(photo_id) REFERENCES photos(id)
# );

# INSERT INTO comments (comment_text, user_id, photo_id) VALUES
# ('Far out ', 3, 2),
# ('Meow', 1, 2),
# ('I <3 This ', 2, 1),
# ('Amazing ', 4, 2);

# CREATE TABLE likes (
#     user_id INT NOT NULL, 
#     photo_id INT NOT NULL,
#     create_at TIMESTAMP DEFAULT NOW(), 
#     FOREIGN KEY (user_id) REFERENCES users(id), 
#     FOREIGN KEY (photo_id) REFERENCES photos(id),
#     PRIMARY KEY (user_id, photo_id)
# );

# INSERT INTO likes (user_id, photo_id) VALUES
# (1,1),
# (2,1),
# (1,2), 
# (4,3), 
# (3,4),
# (4,2);

# CREATE TABLE follows (
#     follower_id INT NOT NULL, 
#     followee_id INT NOT NULL,
#     create_at TIMESTAMP DEFAULT NOW(), 
#     FOREIGN KEY (follower_id) REFERENCES users(id), 
#     FOREIGN KEY (followee_id) REFERENCES users(id),
#     PRIMARY KEY (follower_id, followee_id)
# );

# INSERT INTO follows (follower_id, followee_id) VALUES
# (1,2),
# (1,3),
# (3,1), 
# (2,3), 
# (3,4),
# (4,2);

# CREATE TABLE tags (
#     id INTEGER AUTO_INCREMENT PRIMARY KEY,
#     tag_name VARCHAR(255) UNIQUE, 
#     create_at TIMESTAMP DEFAULT NOW()
#    );

# CREATE TABLE photo_tags (
#    photo_id INT NOT NULL, 
#    tag_id INT NOT NULL, 
#    FOREIGN KEY (photo_id) REFERENCES photos(id),    
#    FOREIGN KEY (tag_id) REFERENCES tags(id), 
#     PRIMARY KEY (photo_id, tag_id)
#    );

# INSERT INTO tags (tag_name) VALUES
# ('adorable'),
# ('cute'),
# ('sunrise');


# INSERT INTO photo_tags (photo_id, tag_id) VALUES
# (1,1),
# (1,2),
# (3,2),
# (2,3);
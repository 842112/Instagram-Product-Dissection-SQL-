
-- ------------------------
-- 1. Create Tables
-- ------------------------

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Email VARCHAR(100),
    Full_Name VARCHAR(100),
    Bio TEXT,
    Registration_Date DATE
);

CREATE TABLE Posts (
    PostID INT PRIMARY KEY,
    UserID INT,
    Caption TEXT,
    Image_URL VARCHAR(255),
    Location VARCHAR(100),
    Post_Date DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Comments (
    CommentID INT PRIMARY KEY,
    PostID INT,
    UserID INT,
    Text TEXT,
    Comment_Date DATE,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Likes (
    LikeID INT PRIMARY KEY,
    PostID INT,
    UserID INT,
    Like_Date DATE,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Followers (
    FollowerID INT PRIMARY KEY,
    FollowingUserID INT,
    FollowerUserID INT,
    Follow_Date DATE,
    FOREIGN KEY (FollowingUserID) REFERENCES Users(UserID),
    FOREIGN KEY (FollowerUserID) REFERENCES Users(UserID)
);

CREATE TABLE Hashtags (
    HashtagID INT PRIMARY KEY,
    Tag VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE PostHashtag (
    PostHashtagID INT PRIMARY KEY,
    PostID INT,
    HashtagID INT,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (HashtagID) REFERENCES Hashtags(HashtagID)
);

-- ------------------------
-- 2. Insert Data
-- ------------------------

-- Users
INSERT INTO Users VALUES
(1, 'arjun_m', 'arjunm@gmail.com', 'Arjun Mehta', 'Food lover 🍲', '2023-01-01'),
(2, 'priya_singh', 'priyasingh@gmail.com', 'Priya Singh', 'Traveler ✈️', '2023-01-05'),
(3, 'rahul_k', 'rahulk@yahoo.com', 'Rahul Kapoor', 'Tech enthusiast 💻', '2023-01-10'),
(4, 'aarti_b', 'aarti.b@gmail.com', 'Aarti Bhatt', 'Artist 🎨', '2023-01-12'),
(5, 'vishal_d', 'vishald@hotmail.com', 'Vishal Deshmukh', 'Nature explorer 🌿', '2023-01-15'),
(6, 'neha_rao', 'neha.rao@gmail.com', 'Neha Rao', 'Blogger & Cook 🍰', '2023-01-18'),
(7, 'kiran_p', 'kiranp@rediffmail.com', 'Kiran Patil', 'Cinematographer 🎬', '2023-01-20'),
(8, 'ananya_r', 'ananyar@gmail.com', 'Ananya Reddy', 'Fashion & Lifestyle', '2023-01-22'),
(9, 'amit_s', 'amit123@gmail.com', 'Amit Shah', 'Cricket Fan 🏏', '2023-01-24'),
(10, 'sneha_g', 'snehag@gmail.com', 'Sneha Gupta', 'Photographer 📸', '2023-01-26'),
(11, 'rohit_t', 'rohit@gmail.com', 'Rohit Tiwari', 'Adventure Seeker', '2023-01-28'),
(12, 'deepa_v', 'deepav@yahoo.com', 'Deepa Verma', 'Yoga & Wellness 🧘', '2023-01-30'),
(13, 'ankit_r', 'ankitr@gmail.com', 'Ankit Rathi', 'Engineer 🤖', '2023-02-01'),
(14, 'shruti_m', 'shrutim@gmail.com', 'Shruti Mishra', 'Music lover 🎶', '2023-02-03'),
(15, 'karan_d', 'karan_d@outlook.com', 'Karan Dey', 'Poet & Writer ✍️', '2023-02-05'),
(16, 'isha_s', 'ishas@gmail.com', 'Isha Seth', 'Animal lover 🐾', '2023-02-07'),
(17, 'saurav_j', 'saurav.j@gmail.com', 'Saurav Joshi', 'Gamer 🎮', '2023-02-09'),
(18, 'rhea_n', 'rhea.n@yahoo.com', 'Rhea Nair', 'Traveller & Vlogger', '2023-02-11'),
(19, 'manoj_k', 'manojk@gmail.com', 'Manoj Kumar', 'Stock Market Analyst 📊', '2023-02-13'),
(20, 'poonam_b', 'poonam.b@gmail.com', 'Poonam Batra', 'Fitness Freak 💪', '2023-02-15');

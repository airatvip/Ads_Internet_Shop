
CREATE TABLE "ads"
(
    pk            BIGINT generated by default as identity primary key,
    user          TEXT NOT NULL,
    imageAddress  TEXT NOT NULL,
    description   TEXT NOT NULL,
    price         TEXT NOT NULL,
    title         TEXT NOT NULL,
    comments      BIGINT
);

CREATE TABLE "comment"
(
    comments      BIGINT generated by default as identity primary key,
    ad            TEXT NOT NULL,
    author        TEXT NOT NULL,
    createdTime   timestamp,
    text          TEXT NOT NULL,
);

CREATE TABLE "authors"
(
    userId        BIGINT generated by default as identity primary key,
    login         TEXT NOT NULL,
    password      TEXT NOT NULL,
    firstName     TEXT NOT NULL,
    lastName      TEXT,
    phone         TEXT NOT NULL,
    ad            BIGINT,
    roleDto       TEXT NOT NULL,
    image         TEXT NOT NULL,
    comments      BIGINT
);


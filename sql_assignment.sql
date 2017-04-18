-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
SELECT id FROM artists WHERE name = 'Queen';
 id
----
 51
(1 row)

SELECT title FROM albums WHERE artist_id = '51';
 title
-------------------
 Greatest Hits II
 Greatest Hits I
 News Of The World


-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
SELECT * FROM media_types;
 id |            name             |         created_at         |         updated_at
----+-----------------------------+----------------------------+----------------------------
  1 | MPEG audio file             | 2006-11-24 08:21:33.800863 | 2014-01-29 22:14:22.80134
  2 | Protected AAC audio file    | 2005-10-15 15:38:18.803463 | 2014-01-29 22:14:22.803915
  3 | Protected MPEG-4 video file | 2007-12-07 13:17:17.805185 | 2014-01-29 22:14:22.805487
  4 | Purchased AAC audio file    | 2012-06-10 16:54:26.806645 | 2014-01-29 22:14:22.806934
  5 | AAC audio file              | 2011-07-19 19:21:12.807909 | 2014-01-29 22:14:22.808152
-- Looking for id = 3

SELECT COUNT( * ) FROM tracks WHERE media_type_id = '3';
 count
-------
  214


-- 3) Find the least expensive track that has the genre "Electronica/Dance".
SELECT * FROM genres;
 id |        name        |         created_at         |         updated_at
----+--------------------+----------------------------+----------------------------
  1 | Rock               | 2008-02-17 12:06:26.896342 | 2014-01-29 22:14:08.896971
  2 | Jazz               | 2006-06-11 22:16:36.899235 | 2014-01-29 22:14:08.899567
  3 | Metal              | 2012-11-15 10:40:49.900941 | 2014-01-29 22:14:08.90127
  4 | Alternative & Punk | 2013-03-04 00:20:35.90248  | 2014-01-29 22:14:08.902773
  5 | Rock And Roll      | 2006-08-25 00:39:25.903877 | 2014-01-29 22:14:08.904128
  6 | Blues              | 2011-03-13 07:33:57.905151 | 2014-01-29 22:14:08.905397
  7 | Latin              | 2008-06-06 11:13:18.906497 | 2014-01-29 22:14:08.906741
  8 | Reggae             | 2005-11-25 11:00:53.907712 | 2014-01-29 22:14:08.907944
  9 | Pop                | 2010-07-12 20:04:53.908872 | 2014-01-29 22:14:08.909092
 10 | Soundtrack         | 2009-06-06 16:55:48.910008 | 2014-01-29 22:14:08.910255
 11 | Bossa Nova         | 2013-11-04 17:47:42.911335 | 2014-01-29 22:14:08.911564
 12 | Easy Listening     | 2010-01-04 02:36:39.912502 | 2014-01-29 22:14:08.912722
 13 | Heavy Metal        | 2013-06-09 11:39:27.913613 | 2014-01-29 22:14:08.913832
 14 | R&B/Soul           | 2004-07-30 05:06:53.914716 | 2014-01-29 22:14:08.914933
 15 | Electronica/Dance  | 2008-05-25 12:13:42.91584  | 2014-01-29 22:14:08.916059
 16 | World              | 2004-07-24 12:29:29.91692  | 2014-01-29 22:14:08.917138
 17 | Hip Hop/Rap        | 2013-01-20 02:04:31.917982 | 2014-01-29 22:14:08.918193
 18 | Science Fiction    | 2004-08-02 15:40:12.919181 | 2014-01-29 22:14:08.919412
 19 | TV Shows           | 2007-08-05 07:31:41.92043  | 2014-01-29 22:14:08.920682
 20 | Sci Fi & Fantasy   | 2008-10-23 01:12:41.921777 | 2014-01-29 22:14:08.922019
 21 | Drama              | 2008-11-02 03:41:13.923004 | 2014-01-29 22:14:08.923221
 22 | Comedy             | 2012-03-31 09:20:08.924112 | 2014-01-29 22:14:08.924331
 23 | Alternative        | 2006-04-21 10:08:22.925228 | 2014-01-29 22:14:08.925447
 24 | Classical          | 2010-10-12 17:26:41.926293 | 2014-01-29 22:14:08.926515
 25 | Opera              | 2006-08-21 02:26:50.927432 | 2014-01-29 22:14:08.927673

 SELECT name FROM tracks WHERE unit_price = '0.99' AND genre_id = '15';
 name
-----------------------------
 Instinto Colectivo
 Chapa o Coco
 Prostituta
 Eu So Queria Sumir
 Tres Reis
 Um Lugar ao Sol
 Batalha Naval
 O Misterio do Samba
 Armadura
 Na Ladeira
 Carimbo
 Catimbo
 Chega no Suingue
 Mun-Ra
 Freestyle Love
 Distance
 One Step Beyond
 Stillness In Time
 Journey To Arnhemland
 Just Another Story
 Todo o Carnaval tem seu Fim
 Funk de Bamba
 Half The Man
 Light Years
 Manifest Destiny
 The Kids
 Mr. Moon
 Scam
 Morning Glory
 Space Cowboy


-- 4) Find the all the artists whose names start with A.
SELECT name FROM artists WHERE name LIKE 'A%';
 name
---------------------------------------------------------------------------------------
 Aerosmith
 Alice In Chains
 Antônio Carlos Jobim
 Apocalyptica
 Azymuth
 Aquaman
 AC/DC
 Alanis Morissette
 Audioslave
 Avril Lavigne
 Aisha Duo
 Aaron Goldberg
 Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
 Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
 Aaron Copland & London Symphony Orchestra
 Antal Doráti & London Symphony Orchestra
 Amy Winehouse
 Adrian Leaper & Doreen de Feis
 Accept
 Aerosmith & Sierra Leone''s Refugee Allstars
 Alberto Turco & Nova Schola Gregoriana
 Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker
 Academy of St. Martin in the Fields & Sir Neville Marriner
 Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett
 Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart
 A Cor Do Som


-- 5) Find all the tracks that belong to playlist 1.
SELECT * FROM playlists_tracks WHERE playlist_id = '1';
(3290 rows)

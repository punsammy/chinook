### Active Record Query Interface Assignment

### Provide one or more Active Record queries that retrieve the requested data
### below each of the following questions:


# 1a) Find the genre with the name "Hip Hop/Rap".
Genre.where("name = ?", 'Hip Hop/Rap')
OR
Genre.where(name: 'Hip Hop/Rap')
Returns : Genre id: 17


# 1b) Count how many tracks belong to the "Hip Hop/Rap" genre
Track.where(genre_id: 17).size
Returns : 35


# 2) Find the total amount of time required to listen to all the tracks in the database.
Track.sum(:milliseconds)    or    Track.sum("millisecond")
Returns : 1378575827


# 3a) Find the highest price of any track that has the media type "MPEG audio file"
MediaType.where(name: 'MPEG audio file')   or   MediaType.all
Returns id: 1
Track.where(media_type_id: 1).maximum(:unit_price)
Returns : 0.99


# 3b) Find the name of the most expensive track that has the media type "MPEG audio file".
Track.where(media_type_id: 1).where("unit_price = ?", 0.99)

# 4) Find the 2 oldest artists.
Artist.order(created_at: :DESC).limit(2)
Returns: [<Artist id: 187, name: "Los Hermanos", created_at: "2014-01-17 12:58:54", updated_at: "2014-01-29 22:10:22">, <Artist id: 41, name: "Elis Regina", created_at: "2014-01-07 04:35:27", updated_at: "2014-01-29 22:10:22">]>]



### Stretch Exercise (Active Record Query Interface)


# 1) Find all the albums whose titles start with B.
Album.where('title like ?','B%').count

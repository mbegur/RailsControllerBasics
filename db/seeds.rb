# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: 'momo')
user2 = User.create(username: 'bobo')

artwork1 = Artwork.create(title: 'banana', image_url: 'banana.com', artist_id: user1.id)
artwork2 = Artwork.create(title: 'apple', image_url: 'apple.com', artist_id: user2.id)

artwork_shares1 = ArtworkShare.create(artwork_id: artwork1.id, viewer_id: user2.id)
artwork_shares2 = ArtworkShare.create(artwork_id: artwork2.id, viewer_id: user1.id)
artwork_shares2 = ArtworkShare.create(artwork_id: artwork1.id, viewer_id: user1.id)

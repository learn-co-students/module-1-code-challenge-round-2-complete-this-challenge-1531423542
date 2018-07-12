require 'bundler/setup'
Bundler.require
require_rel '../app'

require 'pry'

viewer_one = Viewer.new("user1")
viewer_two = Viewer.new("user2")
viewer_three = Viewer.new("user3")

movie_one = Movie.new("Titanic")
movie_two = Movie.new("Toy Story 1")
movie_three = Movie.new("Toy Story 4")

queue_item_one = QueueItem.new(viewer_one,movie_one,5)
queue_item_two = QueueItem.new(viewer_two,movie_two,4)
queue_item_three = QueueItem.new(viewer_three,movie_three,3)


binding.pry
false

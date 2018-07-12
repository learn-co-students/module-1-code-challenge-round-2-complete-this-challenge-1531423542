class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
      QueueItem.all.select do|item|
        item.viewer == self
      end
  end

  def queue_movies
     queue_items.map do |item|
       item.movie
     end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self,movie,rating)
  end

  def rate_movie(movie,rating)
    if movie.viewer != self
      add_movie_to_queue
    else    
      #assign the rating to the viewer's QueueItem
    end
  end


end

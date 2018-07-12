class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do|item|
      item.movie == self
    end
  end

  def viewers
    queue_items.map do |item|
      item.viewer
    end
  end

  def average_rating
    arr = queue_items
    arr.inject{ |sum, el| sum + el }.to_f / arr.size
  end

  def highest_rated
  end
end

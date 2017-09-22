class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create(new_song)
    new_song = Song.new(name).save
    # binding.pry
  end

  def self.destroy_all
    @@all.clear
  end
end

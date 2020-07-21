class Artist
  attr_reader :name, :yrs_experience

  @@all = []

  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.filter { |painting| painting.artist == self }
  end

  def galleries
    paintings.map { |painting| painting.gallery.name }
  end

  def cities
    paintings.map { |painting| painting.gallery.city }
  end

  def self.total_experience
    self.all.sum { |artist| artist.yrs_experience }
  end

  def self.most_prolific
    self.all.max_by { |artist| artist.yrs_experience }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
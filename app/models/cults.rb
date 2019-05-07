class Cult

  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end


  def self.all
    @@all
  end

  def followers
    f = BloodOath.all.select { |bo| bo.cult == self }
    f.map {|bo| bo.follower}
  end

  def recruit_follower(follower, initiation_date)
    BloodOath.new(follower, self, initiation_date)
  end

  def cult_population
    #fixnum of cult's followers
    cult_pop = BloodOath.all.select {|bo| bo.cult == self }
    cult_pop.count
  end

  def self.find_by_name(cult_string)
    self.all.select {|cult| cult.name == cult_string}
  end

  def self.find_by_location(location_string)
    self.all.select {|cult| cult.location == location_string}
  end

  def self.find_by_founding_year(fixnum)
    self.all.select {|cult| cult.founding_year == fixnum}
  end

  def average_age
    followers
    ages = followers.map { |follower| follower.age }
    avg = ages.sum / ages.length
    avg.to_f
  end

  def my_followers_mottos
    followers.map {|follower| follower.life_motto }
  end

  def self.least_popular

    arr = self.all.map { |cult| cult.followers }
    arr.sort_by { |c_f| c_f.length }[0]

  end

  def self.most_common_location
    
    arr = self.all.map {|cult| cult.location }
    l = Hash.new (0)
    counter = 0
    arr.each do |location|
      if l[location]
        l[location] = counter += 1
      else
        l[location] = 1
      end
    end
    x = l.max_by{ |k, v| v }
    x[0]

  end




end

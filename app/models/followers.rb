require 'pry'

class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def cults
    oaths_arr = BloodOath.all.select { |bo| bo.follower == self }
    oaths_arr.map { |oath| oath.cult }
  end

  def join_cult(cult, initiation_date)
    BloodOath.new(self, cult, initiation_date)
  end

  def self.of_a_certain_age(fixnum)
    self.all.select { |follower| follower.age == fixnum}
  end

  def my_cults_slogans
    cults.map { |cult| cult.slogan }
  end

  def self.most_active
    counter = 0
    most_a = most_a
    self.all.each do |follower|
      if follower.cults.length > counter
        most_a = follower
      end
    end
    most_a
  end


  def self.top_ten
    arr = self.all.sort_by { |follower| follower.cults.length }
    rev = arr.reverse
    y = rev[0..9]
    y

  end


end

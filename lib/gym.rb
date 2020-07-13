class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def lifters
    self.memberships.map { |membership| membership.lifter }.uniq
  end

  def lifter_names
    self.lifters.map { |lifter| lifter.name }
  end

  def lift_total
    self.lifters.reduce(0) { |sum, lifter| sum += lifter.lift_total }
  end

  def self.all 
    @@all
  end
end

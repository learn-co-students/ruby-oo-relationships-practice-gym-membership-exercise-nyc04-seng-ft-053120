class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def self.total_lifts
    self.all.sum do |lifter|
      lifter.lift_total
    end
  end

  def self.average_lift_totals
    self.total_lifts/self.all.count
  end

  def total_membership_costs
    memberships.sum do |membership|
      membership.cost
    end
  end

  def signup(gym, cost)
    Membership.new(self, gym, cost)
  end
  
end

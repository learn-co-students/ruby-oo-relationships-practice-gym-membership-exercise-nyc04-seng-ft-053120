class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end

  def gyms
    self.memberships.map { |membership| membership.gym }
  end

  def total_cost
    self.memberships.reduce(0) { |sum, membership| sum += membership.cost }
  end

  def self.lift_sum
    self.all.reduce(0) { |sum, lifter| sum += lifter.lift_total }
  end

  def self.avg_lift_total
    self.lift_sum.fdiv(self.all.length)
  end

  def self.all 
    @@all
  end
end

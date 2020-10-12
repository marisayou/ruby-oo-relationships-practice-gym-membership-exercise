class Lifter
  attr_reader :name, :lift_total

  @@all = []
  
  def self.all 
    @@all
  end

  def self.average_lift_total
    total_lifts = self.all.map do |lifter|
      lifter.lift_total
    end.reduce(:+)
    total_lifts/self.all.length
  end
  
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def add_membership(gym, cost)
    new_membership = Membership.new(cost)
    new_membership.lifter = self
    new_membership.gym = gym
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym
    end
  end

  def total_cost
    cost_arr = self.memberships.map do |membership|
      membership.cost
    end
    cost_arr.reduce(:+)
  end
  
end

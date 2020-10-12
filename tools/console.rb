# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
bob = Lifter.new("Bob", 60)
jenny = Lifter.new("Jenny", 75)
liam = Lifter.new("Liam", 84)

gym1 = Gym.new("Gym 1")
gym2 = Gym.new("Gym 2")
gym3 = Gym.new("Gym 3")

bob.add_membership(gym1, 300)
bob.add_membership(gym2, 210)
jenny.add_membership(gym3, 500)
jenny.add_membership(gym2, 250)
jenny.add_membership(gym1, 130)
liam.add_membership(gym1, 400)
liam.add_membership(gym3, 260)

binding.pry

puts "Gains!"

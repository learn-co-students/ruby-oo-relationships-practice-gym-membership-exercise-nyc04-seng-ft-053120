# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

g1 = Gym.new("Cake")
g2 = Gym.new("Donut")
g3 = Gym.new("Tart")

l1 = Lifter.new("Rock", 200)
l2 = Lifter.new("Stone", 300)
l3 = Lifter.new("Pebble", 100)

l1.sign_up(50, g1)
l1.sign_up(30, g2)
l2.sign_up(40, g3)
l2.sign_up(50, g1)
l3.sign_up(20, g2)

binding.pry

puts "Gains!"

# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("NYSC")
gym2 = Gym.new("Planet Fitness")
gym3 = Gym.new("Dolphins")

lifter1 = Lifter.new("Bill", 50)
lifter2 = Lifter.new("Jake", 50)
lifter3 = Lifter.new("John", 50)
lifter4 = Lifter.new("Josh", 50)
lifter5 = Lifter.new("Samantha", 50)
lifter6 = Lifter.new("Samuel", 50)
lifter7 = Lifter.new("Mike", 50)

lifter1.signup(gym1, 20)
lifter1.signup(gym2, 20)
lifter1.signup(gym3, 20)
lifter2.signup(gym1, 20)
lifter2.signup(gym2, 20)
lifter3.signup(gym1, 20)
lifter4.signup(gym1, 20)
lifter5.signup(gym2, 20)
lifter6.signup(gym1, 20)
lifter7.signup(gym2, 20)
lifter7.signup(gym3, 20)


binding.pry

puts "Gains!"

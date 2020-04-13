require 'pry'

class Dog

attr_accessor :name
# Create a class variable @@all set to an empty array inside your class.
@@all = [] # Has a class variable, @@all, the points to an array

def initialize(name) # initializes with one argument - a name
        self.name = name
        self.save
    end

# Write a class method, .all, that reads this variable.
# From inside the Dog class, we can access the @@all class variable,
# but whenever we might be interacting with our Dog class from the outside,
# this .all class method acts as our direct interface to the @@all variable.
# It returns all dog instances
    def self.all
        @@all
    end

# A class method that empties the @@all array of all existing dogs
    def self.clear_all
        @@all.clear
    end

#You will need to write a class method, .print_all,
#that iterates over all of the individual dogs stored
#in the @@all array and puts out their name to the terminal.
    def self.print_all
       i = 0
       while i < all.length do
            puts all[i].name
            i += 1
       end
    end


# .print_all iterates over all of the individual dogs stored in the @@all array and puts out their name to the terminal.
# # adds this dog instance to the @@all array when called
# # gets called inside initialize when a new Dog is created
    def save
        @@all << self
    end

end

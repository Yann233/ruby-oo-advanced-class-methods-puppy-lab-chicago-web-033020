require 'pry'

class Dog

attr_accessor :name
# Create a class variable @@all set to an empty array inside your class.
@@all = []

    def initialize(name)
        self.name = name
        self.save
    end

# Write a class method, .all, that reads this variable.
# From inside the Dog class, we can access the @@all class variable,
# but whenever we might be interacting with our Dog class from the outside,
# this .all class method acts as our direct interface to the @@all variable.
    def self.all
        @@all
    end

    def self.clear_all
        # binding.pry
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

    def self.save
        @@all << self
    end

end

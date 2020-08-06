class Dog
  @@all = []   # class variable @@all is being set to an empty array, giving the variable a value of    [], it basically is a storage container for each instance of Dog

  def initialize(name)  # the self in the initialze method is refering to the new instance of dog we are trying to store in the @@all array
    @name = name
    self.save
  end

  def self.all  #class method which reads assigns a all method which calls the @@all class value.     The purpose of this .all method is to be able to access the @@all method, 
   # it's basically an interface
    @@all
  end

  def self.clear_all  #this assigns our dog class value , @@all a value of 0, clearing it out
    @@all = [] 
  end

  def self.print_all     #class method that iterates over every dog stored in the @@all array, then puts out their name to the terminal
    @@all.each do |dog|
      puts dog.name
    end
  end

  def save    # this is to be able to manually extract the name of the dog
    @@all << self
  end

  def name
    @name
  end

end 
class Owner
  # code goes here
  OWNERS=[]
  attr_accessor :name, :pets
  attr_reader :species 
  
  def initialize(name)
    @name = name 
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    OWNERS<<self 
  end 
  
  def all_pets 
    @pets
  end 

  def self.all
   OWNERS
  end 
  
  def self.reset_all 
    OWNERS.clear
  end
  
  def self.count 
    OWNERS.size 
  end 
  
  def say_species
    "I am a human."
  end 
  
  def buy_fish(name)
   pet_fish= Fish.new(name)
   @pets[:fishes]<<pet_fish 
 end 
 
  def buy_cat(name)
   pet_cat = Cat.new(name)
   @pets[:cats]<<pet_cat
 end 
 
  def buy_dog(name)
   pet_dog = Dog.new(name)
   @pets[:dogs]<<pet_dog
 end 
 
  def walk_dogs 
    @pets[:dogs].each do |dogs|
    dogs.mood="happy"
  end
end

  def play_with_cats 
  @pets[:cats].each do |cats|
    cats.mood= "happy"
  end 
end 

  def feed_fish 
    @pets[:fishes].each do |fishes|
    fishes.mood="happy"
  end 
end 

  def sell_pets
    pets.each do |species, animals |
    animals.each do |species, animals|
     animals.mood="nervous"
    end 
  end 
end
end 

  

  
   
    
  
  
  


end
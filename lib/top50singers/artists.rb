class Top50singers::Artist 

attr_accessor :name, :description

  def self.all 
    #binding.pry
    art_1 = self.new 
    art_1.name = "Beyonce"
    art_1.description = "I am a singer"
    array = []
    array << art_1
    array
    
  end 


  
end 

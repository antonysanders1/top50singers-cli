class Top50singers::Artist 

attr_accessible :name, :description

  def self.all 
    
    art_1 = self.new 
    art_1.name = "Beyonce"
    art_1.description = "I am a singer"
    
    [art_1]
    
  end 


  
end 

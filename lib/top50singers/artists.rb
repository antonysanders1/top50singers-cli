class Top50singers::Artist 

attr_accessor :name, :about, #:birthdate, :influenced_artists

  def self.all 
    
    self.artists_list
    
  end 
  
  
  
   def self.artists_list
     artists = []
     
     artists << self.scrape
    
     artists
    
   end 
  
  
  
  def self.scrape
    doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls002987241/"))
   
    artist = self.new
    
    artist.name = doc.search(".lister-item-header a").text
    artist.about = doc.search(".lister-item-content p").text
    
    #artist.name = doc.search(".lister-item-header").collect{|name| name.css("a").text }
    #artist.about = doc.search(".lister-item-content").collect{|about| about.css("p").text}
    
    artist
    #binding.pry
    

  
  end 


  
end 

class Top50singers::Scraper


def self.scrape
    doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls002987241/"))
   
    artists = doc.search(".lister-item-content")
    puts artists
    
    
    artists.collect do |artist|
      name = artist.css(".lister-item-header a").text
     # puts name
      puts about = artist.css("p").text
     # puts about
     # binding.pry
      Top50singers::Artist.new(name, about)
    end 
    
    #artist.name = doc.search(".lister-item-header a").text
    #artist.about = doc.search(".lister-item-content p").text
    
    # artist.name = doc.search(".lister-item-header").collect{|name| name.css("a").text }
    # artist.about = doc.search(".lister-item-content").collect{|about| about.css("p").text.strip}
    
    #artist
    
  end   
  
  
  
end 
#require_relative './top50singers/artist'
#This is my CLI Controller
require 'pry'
class Top50singers::CLI
  
  def call
    puts <<-DOC.gsub /^\s*/, ''
    
      Greetings!
      So, Negan is a music and movie buff who created a list of his favorite Actor/Musicians..
    DOC
    sleep 4
    puts "He believes their the best..."
    sleep 1
    puts "OF ALL TIME SWAY!!! (Kanye West voice)"
    sleep 2
    puts ""
    puts ""
    
    yes_or_no
    #finish
  end
  
  
  
  def yes_or_no
    puts "Would you like to see the list of his top Actor/Musicians?"
    puts "Enter: yes / no"
    puts ""
    input = nil 
      input = gets.strip.downcase
      if input == "yes"
        puts ""
        list_of_singers
      elsif input != "yes" || input == "exit"
        #puts "Avaialble numbers: 1 - #{@artists.name.length}"
        finish
     else
        #puts "Avaialble numbers: 1 - #{@artists.name.length}"
        puts "Invalid entry. Please enter yes or no"
      end 

  end 
  
  
  
  def list_of_singers
    Top50singers::Scraper.scrape
    @artists = Top50singers::Artist.all
    
    @artists.each.with_index(1) do |artist, i|
      puts "#{i}. #{artist.name}"
    end 
  
    user_input_2
    
  end 
  
  
  
  def user_input_2
  
     input = nil
     puts ""
     puts "Enter a number from the list to see more details on that Artist:"
     puts "Avaialble numbers: 1 - #{@artists.length}"
     puts ""
     while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0 &&  input.to_i < @artists.length
        puts @artists[input.to_i - 1].name
        sleep 1.5
        puts @artists[input.to_i - 1].about
        sleep 3
        puts ""
        puts ""
        puts "Want to see another artist? Enter another available number:"
        puts "Avaialble numbers: 1 - #{@artists.length}"
        puts "Finished? Enter: 'exit'"
        puts ""
      elsif  input == "exit"
        puts ""
        finish
        puts ""
     else
       puts ""
       puts "Invalid entry."
       puts ""
      end 
    end
   end 
  
  
  def finish
    puts "Thank you for using my directory!!!"
    sleep 1.5
    puts "Run the program again if you happen to change your mind."
    sleep 1.5
    puts "See you later!!!"
    input = "exit"
  
  end
  
end 
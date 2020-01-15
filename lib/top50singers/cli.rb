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
    puts "Would you like to see the list of his top 35 Actor/Musicians?"
    puts "Enter: yes / no"
    input = nil 
      input = gets.strip.downcase
      if input == "yes"
        list_of_singers
      elsif input == "no" || input == "exit"
      
        finish
     else
        puts "Invalid entry. Please enter yes or no"
      end 
    #end
  end 
  
  
  
  def list_of_singers
    @artists = Top50singers::Artist.scrape
    
    @artists.name.each.with_index(1) do |artist, i|
      puts "#{i}. #{artist}"
    end 
  
    user_input_2
    
  end 
  
  
  
  def user_input_2
  
     input = nil
     puts "Enter a number 1-35 to see more details on that Artist:"
     while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0
        puts @artists.name[input.to_i - 1]
        puts ""
        sleep 1.5
        puts @artists.about[input.to_i - 1]
        sleep 3
        puts ""
        puts ""
        puts "Want to see another artist? Enter another number: 1-35"
        puts "Finished? Enter: 'exit'"
      elsif  input == "exit"
        finish
     else
        puts "Invalid entry."
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
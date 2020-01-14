#require_relative './top50singers/artist'
#This is my CLI Controller
require 'pry'
class Top50singers::CLI
  
  def call
    puts <<-DOC.gsub /^\s*/, ''
    
      Hello!
      You are now about to take a look at a directory of Best Singers...
    DOC
    sleep 4
    puts "OF ALL TIME SWAY!!! (Kanye West voice)"
    sleep 2
    puts ""
    puts ""
    
  
    
    yes_or_no
    # user_input_2
  end
  
  def yes_or_no
    puts "Would you like to see a list of the top 50 Singers?"
    puts "Enter: yes / no"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      if input == "yes"
        list_of_singers
      elsif input == "no" || "exit"
        input = "exit"
        finish
     else
        puts "Invalid entry. Please enter yes or no"
      end 
    end
  end 
  
  
  def list_of_singers
    @artists = Top50singers::Artist.all
    
    @artists.each.with_index do |artist, i|
      puts "#{i}. #{artist.name}"
    end 
    
    user_input_2
    
  end 
  
  
   def user_input_2
  
     input = nil
     puts "Enter a number 1-25 to see more details on that Artist:"
     while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0
        puts @artists[input.to_i - 1].name
        
      elsif input == "no" || "exit"
        input = "exit"
        finish
     else
        puts "Invalid entry. Please enter yes or no"
      end 
    end
   end 
  
  
  def finish
    puts "Thank you for using my directory!!!"
    sleep 1.5
    puts "Run the program again if you happen to change your mind."
    sleep 1.5
    puts "See you later!!!"
  
  end
  
end 
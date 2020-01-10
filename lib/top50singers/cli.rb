#This is my CLI Controller
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
    user_input_2
    finish
  end
  
  def yes_or_no
    puts "Would you like to see a list of the top 50 Singers?"
    puts "Enter: yes / no"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "yes"
        list_of_singers
      when "no"
        finish
      end 
    end
  end 
  
  
  def list_of_singers
    puts <<-DOC.gsub /^\s*/, ''
    
      1
      2 
      3 
      4 
      5
    DOC
    
  end 
  
  
  def user_input_2
    input = nil
    puts "Enter a number 1-50 to see more details on that Singer:"
    puts "Enter "
  end 
  
  
  def finish
    puts "Thank you for using my directory!!!"
  end
  
end 
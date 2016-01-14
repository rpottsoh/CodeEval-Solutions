#Roller Coaster
File.open(ARGV[0]).each do |line|
  newLine = ""
  upCaseChar = true
  line.capitalize!
  line.each_char do |linechar|
    character = linechar[/[a-zA-Z]/]
    if character == nil 
	  newLine << linechar
	else
	    if (upCaseChar)
	       upCaseChar = false
		   newLine << character.upcase
	    else
	       upCaseChar = true
		   newLine << character
		end
    end
  end
  print newLine
end

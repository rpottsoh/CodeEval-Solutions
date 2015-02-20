#Fizz Buzz
def fizzbuzz(fileName)
  puts File.size(fileName)
  File.open(fileName).each do |line|
    if line.length > 0
      x = " "
      arr = line.split(' ').map(&:to_i)
      (1..arr[2]).each do |val|
         x = "" if val === arr[2]
	     if (val %  arr[0] === 0) && (val % arr[1] === 0)
	       print "FB#{x}"
	     elsif (val %  arr[0] === 0)
	       print "F#{x}"
	     elsif (val %  arr[1] === 0)
	       print "B#{x}"
	     else
	       print "#{val}#{x}"
	     end
      end
	  print "\n"
	end  
  end 
end

fizzbuzz(ARGV[0])

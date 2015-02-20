def sumVals(fileName)
  total = 0
  File.open(fileName).each {|line| total += line.to_i if line.size > 0}
  puts total
end

sumVals(ARGV[0])

#Armstrong Numbers
def armstrongNum? n
  sval = n.to_s
  numArr = sval.split(//)
  e = numArr.size
  sum = 0
  numArr.each {|s| sum += s.to_i ** e}
  sum == n
end

File.open(ARGV[0]).each {|line| puts (armstrongNum? line.to_i) ? "True" : "False" if line != "\n"}

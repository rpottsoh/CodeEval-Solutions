#Remove Characters
File.open(ARGV[0]).each do |line|
  strippedLine = line.strip
  if strippedLine.length > 0
    arr = strippedLine.split(', ')
    arr2 = arr[0].tr(arr[1],'')
	puts arr2.strip
  end
end

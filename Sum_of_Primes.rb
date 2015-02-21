#Sum of First 1000 Primes
def prime? n
  return false if n < 2
  (2..Math.sqrt(n)).none? {|num| n % num == 0}
end

primeCount = 0
primeTotal = 0
iter = 0
while primeCount < 1000
  iter += 1
  if prime? iter
    primeTotal += iter
	primeCount += 1
  end
end
puts primeTotal

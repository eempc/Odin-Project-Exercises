def sumOfMultiples x
    result = 0
    x.times do |i|
        if (i % 3 == 0 || i % 5 == 0)
            result += i
        end
    end
    return result
end

puts sumOfMultiples 10

def fibonacci x
    if x == 0
        return 0
    elsif x <= 2
        return 1
    else
        return fibonacci(x-1) + fibonacci(x-2)
    end
end

puts fibonacci 10

$primeFactors = []
$primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 27, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71]

def findPrimeFactor x
    if (x >= 3) 
        x.downto(3) do |i| 
            if (($primeNumbers.include?(i)) && (x % i == 0))
                $primeFactors.push(i)
                findPrimeFactor(x/i)
                break
            end
        end
    end
end            


findPrimeFactor 13195
puts $primeFactors
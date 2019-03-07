def fibonacci x
    if x == 0
        return 0
    elsif x <= 2
        return 1
    else
        return fibonacci(x-1) + fibonacci(x-2)
    end
end

puts fibonacci 7
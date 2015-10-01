def alphabetize(arr, rev=false)
    if rev == true
        arr.sort!.reverse!
    else
        arr.sort!
    end
end

numbers = [2,5,6,7,4,1]

puts alphabetize(numbers)


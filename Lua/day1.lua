function ends_in_three(num)
    if num % 10 == 3 then 
        return true
    end
    return false
end

function is_prime(num)
    for i = 2, num do
        if (num % i == 0) and (i ~= num) then
            return false
        end
    end
    return true
end  


function n_prime_numbers(num)
    local i = 0
    local prime = 1
    while i < num do
        if is_prime(prime) and ends_in_three(prime) then
            print(prime)
            i = i + 1
        end
        prime = prime + 1
    end
end

n_prime_numbers(3)
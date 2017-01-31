-- Day 1 Easy Challenge
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

-- Day 1 Medium Challenge
function for_loop(start, finish, func)
    local counter = start
    while counter <= finish do
        func(counter)
        counter = counter + 1
    end
end

for_loop(1, 5, print)

-- Day 1 Hard Challenge

function add(previous, next)
    return previous + next
end

function multiply(previous, next)
    return previous * next
end

function reduce(max, init, func)
    local i = 1
    local total = init
    while i <= max do
        total = func(total, i)
        i = i + 1
    end
    return total
end

function factorial(n)
    return reduce(n, 1, multiply)
end

print(factorial(10))
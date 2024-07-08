n = input("")
i = n
one = 0
while i > 0
    digit = mod(i, 10)
    if digit == 1
        one = one + 1
    end
    i = floor(i / 10)
end
if mod(one, 2) == 1
    fprintf("Odd numbers of one")
else 
    fprintf("Even numbers of one")
end
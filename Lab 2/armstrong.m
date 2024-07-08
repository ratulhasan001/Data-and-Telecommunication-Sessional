n = input("")
digits = numel(num2str(n))
i = n
sum = 0
while i > 0
    digit = mod(i, 10)
    sum = sum + digit^digits
    i = floor(i / 10)
end
if sum == n
    fprintf("Armstrong")
else
    fprintf("Not Armstrong")
end
disp(sum)
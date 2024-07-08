n = input("")
fib = zeros(1, n)
fib(1) = 0
fib(2) = 1
for i = 3 : n
    fib(i) = fib(i - 1) + fib(i - 2)
end
disp(fib)
n = input("")
div = []
for i = 1:sqrt(n)
    if(mod(n,i) == 0)
        div(end + 1) = i
        if i ~= n / i
            div(end + 1) = (n / i)
        end
    end
end
sum = 0
for i = 1:length(div)
    sum = sum + div(i)
end
sum = sum - n
if sum == n
    fprintf("Perfect")
else
    fprintf("Not Perfect")
end

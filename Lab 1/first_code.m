% prime in a range, switch case diye positive negative zero

x = input("")s
y = input("")
for i = x:y
    flag = 0
    for j = 2:sqrt(i)
        if mod(i,j) == 0
            flag = 1
            break
        end
    end
    if flag == 0
        disp(i)
    end
end


a = [1, 2, 3; 4, 5, 6; 7, 8, 9]
b = [3, 2, 1; 6, 5, 4; 9, 7, 8]
c = a + b
d = a * b
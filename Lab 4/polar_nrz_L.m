m = [0 1 0 0 1 1 1 0];
n = length(m);
x = [];
y = [];

for i=1:n
    x = [x i-1 i];
    if(m(i) == 0)
        y = [y 1 1];
    else
        y = [y -1 -1];
    end
end

plot(x, y, 'LineWidth', 2), axis([0, n, -2, 2]);
title('Polar NRZ L');
xlabel('Time');
ylabel('Amplitude');

% Adding the bitstream text on the plot
for i = 1:n
    text(i-0.5, 1.5, num2str(m(i)), 'FontSize', 12, 'HorizontalAlignment', 'center');
end

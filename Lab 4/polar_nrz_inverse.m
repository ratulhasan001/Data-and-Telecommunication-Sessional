m = [0 1 0 0 1 1 1 0];
n = length(m);
x = [];
y = [];
a = 1;

for i = 1:n
    x = [x i-1 i];
    if (m(i) == 1)
        y = [y -a -a];
    else
        y = [y a a];
    end
    a = y(length(y));  % Update the current level
end

plot(x, y, 'LineWidth', 2), axis([0, n, -2, 2]);
title('Polar NRZ I');
xlabel('Time');
ylabel('Amplitude');

% Adding the bitstream text on the plot
for i = 1:n
    text(i-0.5, 1.5, num2str(m(i)), 'FontSize', 12, 'HorizontalAlignment', 'center');
end

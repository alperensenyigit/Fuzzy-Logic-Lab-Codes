%% Question 1

x = -5:0.1:5;
C = [-5, 0, 5];
SIGMA = [1, 2, 3];

figure;
hold on;
for i = 1:length(C)
    for j = 1:length(SIGMA)
        c = C(i);
        sigma = SIGMA(j);
        y = gaussmf(x, [sigma, c]);
        plot(x, y);
    end
end
xlabel('x');
ylabel('gaussmf(x, [sigma, c]');
legend('c=-5, \sigma=1', 'c=-5, \sigma=2', 'c=-5, \sigma=3', ...
       'c=0, \sigma=1', 'c=0, \sigma=2', 'c=0, \sigma=3', ...
       'c=5, \sigma=1', 'c=5, \sigma=2', 'c=5, \sigma=3');

%% Question 2
% Define range of input variable x
x = -5:0.1:5;

% Randomly generated membership functions
a_values = [1 2 3];
b_values = [0.5 1 1.5];
c_values = [-2 0 2];

figure;
for i = 1:length(a_values)
    for j = 1:length(b_values)
        for k = 1:length(c_values)
            subplot(length(a_values), ...
                length(b_values), (i-1)*length(b_values)+j)
            y = gbellmf(x,[a_values(i), b_values(j), c_values(k)]);
            plot(x,y)
            xlabel('x')
            ylabel(['MF(',num2str(a_values(i)), ...
                ',',num2str(b_values(j)),',',num2str(c_values(k)),')'])
            ylim([0 1])
        end
    end
end

%% Question 3

% I did something but I'm sure thats alllllllll wrong

x = -8:0.1:8;

mf_Gaussian = gaussmf(x, [1, 0]);

mf_Bell = gbellmf(x, [1, 2, 0]);

figure;
hold on;
plot(x, mf_Gaussian, 'LineWidth', 2)
plot(x, mf_Bell, 'LineWidth', 2)
title('Comparison of Gaussian and Generalized Bell MFs')
legend('Gaussian MF', 'Generalized Bell MF')
hold off;


%% Question 4
% x refers to weight with the interval 40 to 200
x = 40:0.1:200;

very_light = gaussmf(x, [15 0]);        %{  I am
light = trapmf(x, [40 50 80 90]);       %   not
average = trimf(x, [70 100 130]);       %   sure
heavy = trapmf(x, [110 140 200 200]);   %   about
very_heavy = gbellmf(x, [5 8 150]);     %   these }

figure;
plot(x, very_light, 'LineWidth', 2);
hold on;
plot(x, light, 'LineWidth', 2);
plot(x, average, 'LineWidth', 2);
plot(x, heavy, 'LineWidth', 2);
plot(x, very_heavy, 'LineWidth', 2);
xlabel('Weight (kg)');
ylabel('Membership Degree');
title('Fuzzy Sets for Weight of People');
legend('Very Light', 'Light', 'Average', 'Heavy', 'Very Heavy');

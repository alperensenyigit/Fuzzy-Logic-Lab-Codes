%% Question 1
%a
V = [0.2/30, 0.8/45, 1/60, 0.9/75, 0.7/90];
I = [0.4/0.8, 0.7/0.9, 1/1, 0.8/1.1, 0.6/1.2];

P = zeros(length(V), length(I));
for i = 1:length(V)
    for j = 1:length(I)
        P(i,j) = min(V(i), I(j));
    end
end

%b

C = [0.4/0.5, 1/0.6, 0.5/0.7];

T = zeros(length(I), length(C));
for i = 1:length(I)
    for j = 1:length(C)
        T(i,j) = min(I(i), C(j));
    end
end

%c
E = zeros(length(V), length(C));
for i = 1:length(V)
    for j = 1:length(C)
        E(i,j) = max(min(P(i,:), T(:,j)'));
    end
end

%% Question 2
%a
S = [0.2 0.6 1 0.7 0.5]';
L = [0.3 0.4 0.7 1 0.7 0.4 0.1];
R = S * L;

%b
I = [0.2 0.4 0.7 0.2 0.5 0.8 1];

Qmaxmin = zeros(size(R,1),1);
for i=1:size(R,1)
    Qmaxmin(i) = max(min(R(i,:), I));
end

%c

Qmaxprod = zeros(size(R,1),1);
for i=1:size(R,1)
    Qmaxprod(i) = max(min(R(i,:).*I));
end




%% 1. soru
w = [0,1,2,3,4,5];
x = [0,0.3,0.7,0.8,0.9,1];
y = [1,0.5,0,0.5,0.8,0.3];
figure
stem(w,x,"filled")
hold on
stem(w,y,"filled")
ylabel("x and y");
xlabel("w");
b = max(x,y);
c = min(x,y);
d = 1 - b;
e = 1 - c;  

%% 2. soru

w = [1,2,3,4,5,6,7,8,9,10];


A = [1,1,0.5,0,0,0,0,0,0,0];

B = [0,0,0,0.5,1,0.75,0.5,0.25,0,0];

C = [0,0,0,0,0,0.25,0.5,0.75,1,1];
figure
plot(w,A,LineWidth=3,Color='red')
hold on
plot(w,B,LineWidth=3,Color='blue')

plot(w,C,LineWidth=3,Color='green')
grid on

%b sikki
dummy_ab = max(A,B);
plot_b = max(dummy_ab,C);
plot(plot_b,LineWidth=2)

%c sikki
dummy_bc = max(B,C);
plot_c = min(A,dummy_bc);
plot(plot_c,LineWidth=2,Color='red')

%d sikki
dummy_ac = min(A,C);
plot_d = min(dummy_ac,B);
plot(plot_d,LineWidth=2)

%e sikki

dummy_ba = max(A,B);
plot_e = max(dummy_ba,C);
plot(plot_e,LineWidth = 2)


 
clear 
close all

%% �`�B�֐����`
num=[1];
den=[4 2 5]; 
sys=tf(num,den);

%% �R�}���h�ŕ`��
bode(sys)
grid on

%% �֐����g�킸�ɍ쐬
% �ΐ��I�ɓ��Ԋu�ȍs���p��
omega = logspace(-1,2,1000); 
figure;
plot(omega)
grid on

Gjw = polyval(num,sqrt(-1)*omega)./polyval(den,sqrt(-1)*omega);

Mag = 20*log10(abs(Gjw)); 
Phase = rad2deg(unwrap(angle(Gjw)));

figure;
subplot(211)
semilogx(omega,Mag)
ylabel('Magnitude (dB)');
xlim([-10^-1 10^1]);
ylim([-60 0]);
yticks([-60 -50 -40 -30 -20 -10 0]);
grid on

subplot(212)
semilogx(omega,Phase)
xlabel('Frequency (rad/s)'); 
ylabel('Phase (deg)');
xlim([-10^-1 10^1])
ylim([-182 0]);
yticks([-180 -135 -90 -45 0]);
grid on

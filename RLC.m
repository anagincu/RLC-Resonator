R= 390;
C= 240*10^(-9);
L= 10^(-2);
A=5;
f=logspace(2,5,1000000);
w=2*pi.*f;
Z_R=R;
Z_L=1i*L.*w;
Z_C=1./(1i*C.*w);
Z_TOT = Z_R+Z_L+Z_C;
Hr = abs(A.*Z_R./Z_TOT);
semilogx(f,20*log10(Hr));
grid on;
hold on;

Hc = abs(A.*Z_C./Z_TOT);
semilogx(f,20*log10(Hc),':');
grid on;
hold on;

Hl = abs(A.*Z_L./Z_TOT);
semilogx(f,20*log10(Hl),'--');
grid on;
hold on;

Hlc = abs(A.*(Z_C+Z_L)./Z_TOT);
semilogx(f,20*log10(Hlc),'.-');

xlabel('Frequency')
ylabel('Voltage Drop')
legend('Resistor','Capacitor','Inductor','Capacitor and Inductor','Location','southwest')


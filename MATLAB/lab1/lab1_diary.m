%% Mērījumu datu apstrāde

%% pieņemsim ka mums ir mērījumu dati
%% mainam spriegumu un mēram strāvu
Vm = [-1 0.3 1.5 2.5 3.2]

Vm =

   -1.0000    0.3000    1.5000    2.5000    3.2000

;
Im = [1.1 2.2 2.1 3.2 4.7]*1e-3;
plot(Vm,Im,'-o')
%% pielaikosim 2. kārtas polinomu
% y = a*x^2+b*x+c
%
% polyfit - meklē polinoma koefcientus
% C = polyfit(x,y,N)
% N - polinoma kārta
C = polyfit(Vm,Im,2)

C =

    0.0002    0.0004    0.0015

% šie cipari nozīmē
% y = C(1)*x^2+C(2)*x+C(3);
% definēsim x ar sīkāku soli
V = -1:0.01:3.2;
V = min(Vm):0.01:max(Vm);
V = linscape(min(Vm),max(Vm),100);
{Undefined function or variable 'linscape'.
} 
V = linspace(min(Vm),max(Vm),100);
% liekam x mūsu iteksmē
% liekam x mūsu izteksm;e
I = C(1)*V.^2+C(2)*V+C(3);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

V = -1:0.01:3.2;
V =-linspace(min(Vm),max(Vm),100);
V =linspace(min(Vm),max(Vm),100);
I = C(1)*V.^3+C(2)*V+C(3)*V+C(4);
plot(Vm,Im,'o',V,I)
%% to pašu var izdarīt šādi:
C = polyfit(Vm,Im,3);
% izmantosim polyval funkciju, kas aprēķinās polinoma vērtības
%I = C(1)*V.^3+C(2)*V+C(3)*V+C(4);
I = polyval(C,V);
% sintakse y = polyval(C,x);
plot(Vm,Im,'o',V,I)
%% uzdevums atkārtot to pašu 4. kārtai
C = polyfit(Vm,Im,4);
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
% gadījumu, kad pielaikot;a polinoma kārta ir vienāda ar(N-1), kur N - punktu skaits
% sauc par polinomin;alo interpolācīju
% (polinoms iet tieši caur mērījumu punktu
% )
% bet citus gadījumus sauc par polinimālo aproksimācīju
% (tad polinoms un mērījumu punkti var nesakrist)


% uzdevums atkārtot 1. kārtai
C = polyfit(Vm,Im,1);
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
%% Mērījummu sērijas
% pieņemsim, ka mēs katrai sprieguma vērtībai strāvu nomērīsim 5 reizes
Vm = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
         0.9 1.8 2.6 3.3 4.5;
         1.0 2.0 2.4 3.4 4.3;
         0.8 2.1 2.5 3.2 4.6;
         0.9 1.9 2.3 3.2 4.4]

Im =

    1.1000    2.2000    2.1000    3.2000    4.7000
    0.9000    1.8000    2.6000    3.3000    4.5000
    1.0000    2.0000    2.4000    3.4000    4.3000
    0.8000    2.1000    2.5000    3.2000    4.6000
    0.9000    1.9000    2.3000    3.2000    4.4000

% pamēģināsim to uzzīmēt ar plot
figure
plot(Vm,Im,'-o')
% Matlab zīmē matricas pa kolonnām
% mūsu dati bija ierakstīti pa rindām
% tāpēc ir jatransponē matrica
plot(Vm,Im','-o')
plot(Vm,Im','-o')
C = polyfit(Vm,Im,1);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m', 44)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m',44,0)">line 44</a>)
X and Y vectors must be the same size.
} 
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
%%
% Pielaikosim polinomu
% funkcija polyfit strādā tikai ar vektoriem
% ir funkcija, kas sasummē vektoru
Im

Im =

    1.1000    2.2000    2.1000    3.2000    4.7000
    0.9000    1.8000    2.6000    3.3000    4.5000
    1.0000    2.0000    2.4000    3.4000    4.3000
    0.8000    2.1000    2.5000    3.2000    4.6000
    0.9000    1.9000    2.3000    3.2000    4.4000

A = [1 2 3 4 5];
sum(A0
 sum(A0
       ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
} 
sum(A)

ans =

    15

sum(Im)

ans =

    4.7000   10.0000   11.9000   16.3000   22.5000

% vidējā vērtība būtu
Ivid = sum(Im)/5

Ivid =

    0.9400    2.0000    2.3800    3.2600    4.5000

%tas būtu tas, kas jāatrod
sum(Im,1)

ans =

    4.7000   10.0000   11.9000   16.3000   22.5000

sum(Im,2)

ans =

   13.3000
   13.1000
   13.1000
   13.2000
   12.7000

% otrais arguments norāda virzienu, kā summēt
% 1 - summē elementus katrā kolonnā 
% 2 - summē elementus katrā rindā
Ivid = mean(Im)

Ivid =

    0.9400    2.0000    2.3800    3.2600    4.5000

% pielaikosim polinomu
C = polyfit(Vm,Ivid,3);
V =linspace(min(Vm),max(Vm),100);
I = polyval(C,V);
% Jūsu uzdevums attelot grafiku ar 'o' attelot mērījuma datus, ar '*' vidējo vērtību,
% ar '-' attēlot pielaikotot polinomu
plot(Vm,Im','o',Vm,Ivid,'*',V,I)
Inovirze = std(Im)

Inovirze =

    0.1140    0.1581    0.1924    0.0894    0.1581

errorbar(Vm,Ivid,Inovirze)
errorbar(Vm,Ivid,Inovirze,'.')
hold on
plot(V,I)
hold off
xlabel('U,V')
ylabel('I,mA')
title('Strāvas atkarība no sprieguma')
legend('dati1','dati2')
legend('eksperimentālie dati','pielaikotais polinoms')
grid
ls
bilde1.png  bilde2.png	lab1_diary.m

%% Datu nolasīšana no grafika
imread('bilde1.png');
B = imread('bilde2.png');
A = imread('bilde1.png');
figure(1),image(A)
figure(2),image(B)
figure(2),image([500 800],[0 1],B)
figure(2),image([500 800],[0 1],B)
figure(2),image([500 800],[1 0],B)
set(gca, 'Ydir','normal')
%% varma nolasīt grafiku
% izmantosim funkciju ginput(N)
[x,y] = ginplt(10)
{Undefined function or variable 'ginplt'.
} 
[x,y] = ginput(10)

x =

  551.0382
  576.2037
  591.1670
  601.3693
  611.5715
  614.9723
  619.0532
  619.7333
  629.2554
  640.1378


y =

    0.0044
    0.0730
    0.1716
    0.3000
    0.5030
    0.6015
    0.7120
    0.8434
    0.9628
    0.9479

hold on , plot (x,y,'o')
hold off
diary off

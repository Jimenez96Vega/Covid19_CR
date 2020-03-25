%----------------------------------------------------------Creating Vectors
%Creating Time Vector
    t = [0:19];
    
%Creating vector of infections per day
    di = [1,4,4,0,4,9,1,3,1,8,6,9,19,18,26,4,17,24,19,24];
   
%Counter of cases
    c = 0;
    
%Loop to sum all cases
    for z = 1:length(t)     %z goes from ONE to the length of t vector

        c = di(z) + c;      %Suming all cases
        i(z) = c;
        
        %Creating and initializing vector i
        disp(i(z))

    end
        
%Ploting infected cases per day
    figure;
    plot(t,di,'b-o');
    grid on;
    grid minor;
    title('Casos nuevos por día');
    xlabel('Día');
    ylabel('Infectados');
    legend('Casos nuevos por día');
    
%Ploting total infected cases
    figure;
    plot(t,i,'r-o');
    grid on;
    grid minor;
    title('Total de infectados');
    xlabel('Día');
    ylabel('Infectados');
    legend('Total de infectados');
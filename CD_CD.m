function dx = CD_CD(t, x)
    %% PARAMETOS
    L = 0.002;
    R = 10;
    C = 1e-5;
    Uin = 32;
    dt = 0.4;

    
    %% DINAMICA DEL SISTEMA
    dx = zeros(2, 1);
    
    %% MATRICES
    A = [0 -1/L; 1/C -1/(R*C)];
    B = [Uin/L; 0];
    
    dx(1:2) = A*[x(1); x(2)]+B*dt;
end
%{
Gabriel Alves Silva
https://github.com/gabrielcte/Aero_Math/blob/main/R_to_Quarternion.m
Função que retorna o vetor de quaternions (q) da matriz de cossenos diretores
(Rbi) no caso com q4 << 1.
%}

function [q]=R_to_Quaternion(Rbi)
     
    q1 = (1/2)*sqrt(1+Rbi(1,1)-Rbi(2,2)-Rbi(3,3));
    q2 = (1/(4*q1))*(Rbi(1,2)+Rbi(2,1));
    q3 = (1/(4*q1))*(Rbi(1,3)+Rbi(3,1));
    q4 = (1/(4*q1))*(Rbi(2,3)-Rbi(3,2));    
    q = [q1 q2 q3 q4]
    
end

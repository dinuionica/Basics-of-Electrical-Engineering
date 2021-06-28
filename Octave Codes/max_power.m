function max_power() 
  R6 = [0.01:0.1:10];
  Ee = 22.363;
  Re = 2.726;
    
  I = Ee ./ (Re .+ R6);
  U = R6 .* I;
  P = U .* I;
  
  # valoarea initiala a rezistentei
  R6_int = 1;
  # intensitatea curentului la functionarea initiala
  I_int = Ee ./ (R6_int + Re);
  # puterea la functionarea initiala
  P_int = I_int^2 + R6_int;
  Power_max = (Ee^2) / (4 * Re);
  
  figure(1);
  plot(R6, I, R6, U, R6, P);
  hold on
  plot(Re, Power_max, "r*");
  plot(R6_int, P_int, "o*");
  xlabel("Rezistenata:");
  title("Transferul maxim de putere si functionare initiala a rezistorului");
  legend("Intensitate" , "Tensiune", "Putere", "Puterea maxima", "Functionarea initiala");
endfunction



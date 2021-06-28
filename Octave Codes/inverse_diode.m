function inverse_diode()
  R6 = 2;
  Ee = -22.36359;
  Re = 2.72726707;
  Isc = Ee / Re;
  
  I_s = 10^(-11);
  V_t = 0.026;
  
  U_gol = Ee;
  U = [-30:0.01:23];
  I = (Ee - U) ./ Re;
  I2 = I_s * (e.^(U / V_t) - 1);
  
  figure(1);
  plot(U, I2);
  plot(U, I, U, I2);
  hold on
  plot(Ee, 0, "r*","markersize", 10);
  axis([-30 5 Isc 5]);
  xlabel("Tensiune");
  ylabel("Intensitate");
  title("Caracteristica diodei semiconductoare polarizata invers si a generatorului echivalent");
  legend("Caracteristica generator", "Caracteristica dioda", "Tensiune gol");

endfunction


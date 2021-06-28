function direct_diode()
  R6 = 2;
  Ee = 22.36359;
  Re = 2.72726707;
  Isc = Ee / Re;
  
  # calculare punct static de functionare
  I_f = (Ee - 0.6) ./ Re;
  U_f = 0.667;
  I_s = 10^(-11);
  V_t = 0.026;
  
  U_gol = Ee;
  U = [0:0.01:Ee];
  I = (Ee - U) ./ Re;
  I2 = I_s * (e.^(U / V_t) - 1);
  figure(1);
  plot(U, I2);
  plot(U, I, U, I2);
  hold on
  plot(U_gol, 0, "bo");
  plot(0, Isc, "go");
  plot(U_f, I_f, "r*","markersize",10);
  axis([0 30 0 15]);
  xlabel("Tensiune");
  ylabel("Intensitate");
  title("Caracteristica diodei semiconductoare polarizata direct si a generatorului echivalent");
  legend("Caracteristica generator", "Caracteristica dioda", "Tensiune gol", "Curent de scurtcircuit", "Punct static de functionare");

endfunction


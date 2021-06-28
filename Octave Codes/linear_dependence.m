function linear_dependence()
  R6 = 1;
  Ee = 22.36359;
  Re = 2.72726707;
  Isc = Ee / Re;
  I_p = 6;
  U_p = 6;
  I = [0:0.1: Isc];
  U1 = -Re .* I + Ee;
  U2 = R6 .* I;
  U_gol = Ee;
  
  figure(1);
  plot(I, U1, I, U2);
  hold on
  plot(0, U_gol, "go");
  plot(Isc, 0, "bo");
  plot(I_p, U_p, "ro");
  ylabel("Tensiune");
  xlabel("Intensitate");
  title("Caracteristica rezistorului liniar si a generatorului echivalent");
  legend("Caracteristica generator", "Caracteristica rezistor", "Tensiune gol",
        "Intesitate Scurtcircuit" , "Punct static de functionare");
endfunction


function display_plot3() 
  R6 = [0.1:0.1:10];
  Ee = 22.363;
  Re = 2.726;
    
  I = Ee ./ (Re .+ R6);
  U = R6 .* I;
  P = U .* I;
  figure(1);
  plot(R6, P);
  xlabel("Rezistenata:");
  ylabel("Putere:");
  title("Dependenta puterii curentului de rezistenta");
endfunction

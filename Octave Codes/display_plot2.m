function display_plot2() 
  R6 = [0.1:0.1:10];
  Ee = 22.363;
  Re = 2.726;
    
  I = Ee ./ (Re .+ R6);
  U = R6 .* I;
  
  figure(1);
  plot(R6, U);
  xlabel("Rezistenata:");
  ylabel("Tensiune:");
  title("Dependenta tensiunii curentului de rezistenta");
endfunction

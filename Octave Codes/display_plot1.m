function display_plot1() 
  R6 = [0.1:0.1:10];
  Ee = 22.363;
  Re = 2.726;
    
  I = Ee ./ (Re .+ R6);
  
  figure(1);
  plot(R6, I);
  xlabel("Rezistenata:");
  ylabel("Intensitate:");
  title("Dependenta intensitatii curentului de rezistenta");
endfunction


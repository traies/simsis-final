function compareHeights(file1, file2, l1 = 'Theta = 0�', l2 = 'Theta = 45�')
  
  h1 = load(strcat(file1, "/stats.txt"))(:,1);
  h2 = load(strcat(file2, "/stats.txt"))(:,1);
  
  X = 1:length(h1);
  
  plot(X, h1);
  hold on;
  plot(X, h2);
  
  xlabel("Frame");
  ylabel("Altura (m)");
  
  l = legend(l1,l2); 
  set(l, "fontsize", 15, "location", "northeast");
  set(gca, "fontsize", 15);
  
endfunction

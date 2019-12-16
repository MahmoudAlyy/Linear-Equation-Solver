[a,b,method] = reader('C:\Files\git\Linear-Equation-Solver\fgetl.txt');

if strcmp(method,'Gaussian-elimination')
    dip('Gaussian-elimination')
    gaussian_elimination(a,b)
end

if strcmp(method,'Gaussian-Jordan')
    disp('Gaussian-Jordan')
    gaussian_jordan(a,b)
    
  %  disp('Gaussian-elimination')
   % gaussian_elimination(a,b)
end
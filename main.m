[a,b,method] = reader('C:\Files\git\Linear-Equation-Solver\fgetl.txt');

if strcmp(method,'Gaussian-elimination')
    gaussian_elimination(a,b)
end
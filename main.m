[a,b,method,input] = reader('C:\Files\git\Linear-Equation-Solver\fgetl.txt');

if strcmp(method,'Gaussian-elimination')
    dip('Gaussian-elimination')
    gaussian_elimination(a,b)
end

if strcmp(method,'Gaussian-Jordan')
    disp('Gaussian-Jordan')
    gaussian_jordan(a,b)
end

if strcmp(method,'LU decomposition')
    disp('LU decomposition')
    lu_decomposition(a,b)
end
if strcmp(method,'Gauss-Seidel')
    disp('Gauss-Seidel')
    gauss_seidel(a,b,input,50,0.00001)
end
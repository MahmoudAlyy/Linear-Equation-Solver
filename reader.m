function [a,b,method,input] = reader(filename)

%clc
warning('off','symbolic:sym:sym:DeprecateExpressions')
syms x
input=[];
%fid = fopen('fgetl.txt');
fid = fopen(filename);

if fid == -1
  error('Author:Function:OpenFile', 'please specify the file path, cannot open file: %s', filename);
end

iter_s = fgetl(fid);
iter = str2num(['uint8(',iter_s,')']);

st_x = 'x^';
ch = char(97:97+iter-1);

method = fgetl(fid);    % if iterative will add one to iter for arguments



mat=[];
a=[];
b=[];
for counter = 1:iter
    fn = fgetl(fid);
    TF = contains(fn,'a');
    if ~TF
        st_a='1*a + ';
        fn = strcat(st_a,fn);
    end

    
    for ns = 1:length(ch)
        st = strcat(st_x , int2str(abs(iter-ns+1)) );
        fn = strrep(fn,ch(ns),st);
    end
    
    c = coeffs(fn,[x],'All');
    c = eval(c);
    %c =vpa(c);
    
   
    if ~TF
        c(1) = 0 ;
    end
    
    mat = [mat;c];

    
end


for counter = 1:iter

    a = [a;mat(counter,1:end-1)];
    b = [b;mat(counter,end)] ;

end
b=-b;


method;
a;
b;

%if strcmp(method,'Gauss-Seidel')
    %{
    if feof(fid)
    disp 'end of file'
    for i = 1:iter
    input = [input;0];
    end
    end
    
    else
%}    
    input_temp = fgetl(fid);
    class(input_temp);
    
    if ( (isa(input_temp,'double') & input_temp == -1) | (isa(input_temp,'char') & isempty(input_temp))  )
        disp 'end of file or string is empty'
        for i = 1:iter
        input = [input;0];
        end
    
    else
    disp 'reading input'    
    input = textscan(input_temp,'%f');
    input =cell2mat(input);
end

fclose(fid);

%%% END OF READ
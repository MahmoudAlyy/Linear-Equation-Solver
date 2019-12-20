function varargout = main_fig(varargin)
% MAIN_FIG MATLAB code for main_fig.fig
%      MAIN_FIG, by itself, creates a new MAIN_FIG or raises the existing
%      singleton*.
%
%      H = MAIN_FIG returns the handle to a new MAIN_FIG or the handle to
%      the existing singleton*.
%
%      MAIN_FIG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_FIG.M with the given input arguments.
%
%      MAIN_FIG('Property','Value',...) creates a new MAIN_FIG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_fig_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_fig_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_fig

% Last Modified by GUIDE v2.5 19-Dec-2019 21:01:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_fig_OpeningFcn, ...
                   'gui_OutputFcn',  @main_fig_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main_fig is made visible.
function main_fig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_fig (see VARARGIN)

% Choose default command line output for main_fig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main_fig wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.text_field, 'Min', 0, 'Max', 30); %%%%%%%%%%%%%%%%
set(handles.output_text, 'Min', 0, 'Max', 30); %%%%%%%%%%%%%%%%

% --- Outputs from this function are returned to the command line.
function varargout = main_fig_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes during object creation, after setting all properties.
function text_field_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_field (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function max_iter_text_Callback(hObject, eventdata, handles)
% hObject    handle to max_iter_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of max_iter_text as text
%        str2double(get(hObject,'String')) returns contents of max_iter_text as a double


% --- Executes during object creation, after setting all properties.
function max_iter_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to max_iter_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eps_text_Callback(hObject, eventdata, handles)
% hObject    handle to eps_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eps_text as text
%        str2double(get(hObject,'String')) returns contents of eps_text as a double


% --- Executes during object creation, after setting all properties.
function eps_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eps_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function text_field_Callback(hObject, eventdata, handles)
% hObject    handle to text_field (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_field as text
%        str2double(get(hObject,'String')) returns contents of text_field as a double

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function radiobutton_ge_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_gs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_gs

% --- Executes on button press in radiobutton_lu.
function radiobutton_lu_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_lu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_lu


% --- Executes on button press in radiobutton_gj.
function radiobutton_gj_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_gj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_gj



% --- Executes on button press in radiobutton_gs.
function radiobutton_gs_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_gs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton_gs






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --- Executes on button press in Read_Text.
function Read_Text_Callback(hObject, eventdata, handles)
% hObject    handle to Read_Text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 x = get(handles.text_field,'String')%edit1 being Tag of ur edit box
 
 str = splitlines(x);
 n = size(str);
 n = n(1);

fid = fopen('C:\Files\git\Linear-Equation-Solver\temp_input.txt','w');
fclose(fid);

 
fid = fopen('C:\Files\git\Linear-Equation-Solver\temp_input.txt','at');
for i = 1:n
   fprintf(fid,str(i));
   fprintf(fid,'\n');
    
end
fclose(fid);

global a;
global b;
global method;
global input;

[a,b,method,input] = reader('C:\Files\git\Linear-Equation-Solver\temp_input.txt');
a
b
method
input




% --- Executes on button press in Load_File.
function Load_File_Callback(hObject, eventdata, handles)
% hObject    handle to Load_File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load_mode = 1;
[file,path] = uigetfile('*.*');  % returns [0,0] if open is cancelled
if file ~= 0 and path~= 2   
    full_path = strcat(path,file)
    global a;
    global b;
    global method;
    global input;
    [a,b,method,input] = reader(full_path);
    
    a
    b
    method
    input
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%








% --- Executes on button press in EXECUTE.
function EXECUTE_Callback(hObject, eventdata, handles)
% hObject    handle to EXECUTE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
disp 'EXECUTE'
global a;
global b;
global method;
global input;
global solution;
solution = string('');
time_string = string('Execution time : ');

%%% if no radio is chosen
if  ( get(handles.radiobutton_ge,'Value') == 0 && get(handles.radiobutton_lu,'Value') == 0 && get(handles.radiobutton_gj,'Value') == 0 && get(handles.radiobutton_gs,'Value') == 0 )
f = msgbox('Choose a method', 'Error','error');
else

if get(handles.radiobutton_ge,'Value') == 1
method = 'Gaussian-elimination'
ge_s = string('Gaussian-elimination, ');

[ge_sol,ge_time] = gaussian_elimination(a,b);
ge_sol = mat2str(ge_sol,7);
ge_time = mat2str(ge_time);
ge_s = ge_s + time_string + ge_time + newline + ge_sol + newline;

solution  = solution + ge_s;
set(handles.output_text, 'String', solution);
drawnow; % Needed only if this is in a fast loop.
end

if get(handles.radiobutton_lu,'Value') == 1
method = 'LU decomposition'
lu_s = string('LU decomposition, ');
[lu_sol,lu_time] = lu_decomposition(a,b);
lu_sol = mat2str(lu_sol,7);
lu_time = mat2str(lu_time);
lu_s = lu_s + time_string + lu_time + newline + lu_sol + newline;
solution  = solution + lu_s;
set(handles.output_text, 'String', solution);
drawnow; % Needed only if this is in a fast loop.
end

if get(handles.radiobutton_gj,'Value') == 1
method = 'Gaussian-Jordan'
gj_s = string('Gaussian-Jordan, ');
[gj_sol,gj_time] = gaussian_jordan(a,b);
gj_sol = mat2str(gj_sol,7);
gj_time = mat2str(gj_time);
gj_s = gj_s + time_string + gj_time + newline + gj_sol + newline;
solution  = solution + gj_s;
set(handles.output_text, 'String', solution);
drawnow;

end 
if get(handles.radiobutton_gs,'Value') == 1
method = 'Gauss-Seidel'
iter = str2num(get(handles.max_iter_text,'String'));
eps = str2num(get(handles.eps_text,'String'));



gs_s = string('Gauss-Seidel, ');
gs_it = string('Number of iteration');

[gs_sol,gs_iter,gs_time] = gauss_seidel(a,b,input,iter,eps);

gs_sol = mat2str(gs_sol,7);
gs_iter = mat2str(gs_iter);
gs_time = mat2str(gs_time);

gs_s = gs_s + time_string + gs_time + newline + gs_sol + newline;
gs_it = gs_it + newline + gs_iter + newline;

solution  = solution + gs_s + gs_it;
set(handles.output_text, 'String', solution);
drawnow;

end

%%% write to file
fid2 = fopen('C:\Files\git\Linear-Equation-Solver\solution.txt','w');
fprintf(fid2,solution);
fclose(fid2);



end
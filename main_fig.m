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

% Last Modified by GUIDE v2.5 18-Dec-2019 01:17:07

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 x = get(handles.text_field,'String');%edit1 being Tag of ur edit box
 
 str = splitlines(x);
 n = size(str);
 n = n(1);

fid = fopen('C:\Files\git\Linear-Equation-Solver\temp_input.txt','w');

 
fid = fopen('C:\Files\git\Linear-Equation-Solver\temp_input.txt','at');
for i = 1:n
   fprintf(fid,str(i));
   fprintf(fid,'\n');
    
end
fclose(fid);

[a,b,method,input] = reader('C:\Files\git\Linear-Equation-Solver\temp_input.txt');
a
b
method



function text_field_Callback(hObject, eventdata, handles)
% hObject    handle to text_field (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_field as text
%        str2double(get(hObject,'String')) returns contents of text_field as a double

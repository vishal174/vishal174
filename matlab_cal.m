function varargout = matlab_cal(varargin)
% MATLAB_CAL MATLAB code for matlab_cal.fig
%      MATLAB_CAL, by itself, creates a new MATLAB_CAL or raises the existing
%      singleton*.
%
%      H = MATLAB_CAL returns the handle to a new MATLAB_CAL or the handle to
%      the existing singleton*.
%
%      MATLAB_CAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATLAB_CAL.M with the given input arguments.
%
%      MATLAB_CAL('Property','Value',...) creates a new MATLAB_CAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before matlab_cal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to matlab_cal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help matlab_cal

% Last Modified by GUIDE v2.5 02-Mar-2022 21:04:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab_cal_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab_cal_OutputFcn, ...
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


% --- Executes just before matlab_cal is made visible.
function matlab_cal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to matlab_cal (see VARARGIN)

% Choose default command line output for matlab_cal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes matlab_cal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = matlab_cal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function screen_Callback(hObject, eventdata, handles)
% hObject    handle to screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of screen as text
%        str2double(get(hObject,'String')) returns contents of screen as a double


% --- Executes during object creation, after setting all properties.
function screen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
    

% --- Executes on button press in number7.
    function number7_Callback(hObject, eventdata, handles)
% hObject    handle to number7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'7'));

% --- Executes on button press in number8.
function number8_Callback(hObject, eventdata, handles)
% hObject    handle to number8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'8'));


% --- Executes on button press in number9.
function number9_Callback(hObject, eventdata, handles)
% hObject    handle to number9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'9'));


% --- Executes on button press in number4.
function number4_Callback(hObject, eventdata, handles)
% hObject    handle to number4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'4'));

% --- Executes on button press in number5.
function number5_Callback(hObject, eventdata, handles)
% hObject    handle to number5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'5'));


% --- Executes on button press in number6.
function number6_Callback(hObject, eventdata, handles)
% hObject    handle to number6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'6'));


% --- Executes on button press in number1.
function number1_Callback(hObject, eventdata, handles)
% hObject    handle to number1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'1'));


% --- Executes on button press in number2.
function number2_Callback(hObject, eventdata, handles)
% hObject    handle to number2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'2'));


% --- Executes on button press in number3.
function number3_Callback(hObject, eventdata, handles)
% hObject    handle to number3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'3'));


% --- Executes on button press in decimal.
function decimal_Callback(hObject, eventdata, handles)
% hObject    handle to decimal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'.'));


% --- Executes on button press in number0.
function number0_Callback(hObject, eventdata, handles)
% hObject    handle to number0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'0'));


% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A Selector
A = str2num(get(handles.screen,'String')); 
Selector = 1 ;
set(handles.screen,'String','');

% --- Executes on button press in log.
function log_Callback(hObject, eventdata, handles)
% hObject    handle to log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen,'String',num2str(log10(str2num(get(handles.screen,'String')))));

% --- Executes on button press in pi.
function pi_Callback(hObject, eventdata, handles)
% hObject    handle to pi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(handles.screen,'String'),'')
    set(handles.screen,'String','3.14');
end

% --- Executes on button press in square.
function square_Callback(hObject, eventdata, handles)
% hObject    handle to square (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen,'String',num2str(str2num(get(handles.screen,'String'))^2));

% --- Executes on button press in root.
function root_Callback(hObject, eventdata, handles)
% hObject    handle to root (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen,'String',num2str(sqrt(abs(str2num(get(handles.screen,'String'))))));

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen,'String','');



% --- Executes on button press in delete.
function delete_Callback(hObject, eventdata, handles)
% hObject    handle to delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
S = S(1:end-1);
set(handles.screen,'String',S);

% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global B Selector
B = str2num(get(handles.screen,'String')); 
Selector = 2 ;
set(handles.screen,'String','');

% --- Executes on button press in subtract.
function subtract_Callback(hObject, eventdata, handles)
% hObject    handle to subtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C Selector
if strcmp(get(handles.screen,'String'),'')
    set(handles.screen,'String','-');
else
C = str2num(get(handles.screen,'String')); 
Selector = 3 ;
set(handles.screen,'String','');
end

% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global D Selector
D = str2num(get(handles.screen,'String')); 
Selector = 4 ;
set(handles.screen,'String','');

% --- Executes on button press in equals.
function equals_Callback(hObject, eventdata, handles)
% hObject    handle to equals (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A B C D Selector
switch Selector
    case 1
        A = A/str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(A));
    case 2
        B = B+str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(B));
    case 3
        C = C-str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(C));
    case 4
        D = D*str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(D));
end
    


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen,'String',num2str(sin(str2num(get(handles.screen,'String')))));

% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen,'String',num2str(cos(str2num(get(handles.screen,'String')))));
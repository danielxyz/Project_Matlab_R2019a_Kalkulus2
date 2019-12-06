function varargout = float_front_gui(varargin)
% FLOAT_FRONT_GUI MATLAB code for float_front_gui.fig
%      FLOAT_FRONT_GUI, by itself, creates a new FLOAT_FRONT_GUI or raises the existing
%      singleton*.
%
%      H = FLOAT_FRONT_GUI returns the handle to a new FLOAT_FRONT_GUI or the handle to
%      the existing singleton*.
%
%      FLOAT_FRONT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FLOAT_FRONT_GUI.M with the given input arguments.
%
%      FLOAT_FRONT_GUI('Property','Value',...) creates a new FLOAT_FRONT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before float_front_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to float_front_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help float_front_gui

% Last Modified by GUIDE v2.5 06-Dec-2019 10:41:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @float_front_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @float_front_gui_OutputFcn, ...
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


% --- Executes just before float_front_gui is made visible.
function float_front_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to float_front_gui (see VARARGIN)

% Choose default command line output for float_front_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes float_front_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(hObject, 'toolbar', 'figure');


% --- Outputs from this function are returned to the command line.
function varargout = float_front_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btn_float.
function btn_float_Callback(hObject, eventdata, handles)
% hObject    handle to btn_float (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valx = str2double(get(handles.in_x, 'String'));
valy = str2double(get(handles.in_y, 'String'));
x = 0:20;
ystep = (valx-valy)/(length(x)-1);
y = valx:ystep:valy;
plot(x,y);
title('Coba');
xlabel('X');
ylabel('Y');
guidata(hObject, handles);




function in_x_Callback(hObject, eventdata, handles)
% hObject    handle to in_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of in_x as text
%        str2double(get(hObject,'String')) returns contents of in_x as a double
val = str2double(get(hObject, 'String'));
if isempty(val)
    set(hObject, 'String', 20)
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function in_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to in_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function in_y_Callback(hObject, eventdata, handles)
% hObject    handle to in_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of in_y as text
%        str2double(get(hObject,'String')) returns contents of in_y as a double
val = str2double(get(hObject, 'String'));
if isempty(val)
    set(hObject, 'String', 50)
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function in_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to in_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

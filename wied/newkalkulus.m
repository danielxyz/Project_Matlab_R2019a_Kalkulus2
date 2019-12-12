function varargout = newkalkulus(varargin)
% NEWKALKULUS MATLAB code for newkalkulus.fig
%      NEWKALKULUS, by itself, creates a new NEWKALKULUS or raises the existing
%      singleton*.
%
%      H = NEWKALKULUS returns the handle to a new NEWKALKULUS or the handle to
%      the existing singleton*.
%
%      NEWKALKULUS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWKALKULUS.M with the given input arguments.
%
%      NEWKALKULUS('Property','Value',...) creates a new NEWKALKULUS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newkalkulus_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newkalkulus_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newkalkulus

% Last Modified by GUIDE v2.5 12-Dec-2019 21:39:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newkalkulus_OpeningFcn, ...
                   'gui_OutputFcn',  @newkalkulus_OutputFcn, ...
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


% --- Executes just before newkalkulus is made visible.
function newkalkulus_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newkalkulus (see VARARGIN)

% Choose default command line output for newkalkulus
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newkalkulus wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newkalkulus_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edt_faktorial_Callback(hObject, eventdata, handles)
% hObject    handle to edt_faktorial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edt_faktorial as text
%        str2double(get(hObject,'String')) returns contents of edt_faktorial as a double


% --- Executes during object creation, after setting all properties.
function edt_faktorial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edt_faktorial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
angka = str2double(get(handles.edt_faktorial,'String'));
hasil = [num2str(angka) '! = '];
for i=1:angka
    hasil = [hasil num2str(i) ' + '];
end
faktorial = 1;
for i=1:angka
    faktorial = faktorial*i;
end
hasil = hasil(1:end-2)
hasil = [hasil ' = ' num2str(faktorial)]
set(handles.hasil,'String',hasil)

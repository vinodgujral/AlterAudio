function varargout = gui10bandeq(varargin)
% GUI10BANDEQ MATLAB code for gui10bandeq.fig
%      GUI10BANDEQ, by itself, creates a new GUI10BANDEQ or raises the existing
%      singleton*.
%
%      H = GUI10BANDEQ returns the handle to a new GUI10BANDEQ or the handle to
%      the existing singleton*.
%
%      GUI10BANDEQ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI10BANDEQ.M with the given input arguments.
%
%      GUI10BANDEQ('Property','Value',...) creates a new GUI10BANDEQ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui10bandeq_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui10bandeq_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui10bandeq

% Last Modified by GUIDE v2.5 10-Jun-2017 11:20:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui10bandeq_OpeningFcn, ...
                   'gui_OutputFcn',  @gui10bandeq_OutputFcn, ...
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


% --- Executes just before gui10bandeq is made visible.
function gui10bandeq_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui10bandeq (see VARARGIN)
global stop C Fs;
stop=1;
Fs=44100;
C=zeros(1,10);
set(handles.C1_var,'min',-20);
set(handles.C1_var,'max',20);
set(handles.C1_var,'value',0);
set(handles.C1_var,'SliderStep',[0.025,0.05]);
set(handles.C1_val,'string',num2str(0));

set(handles.C2_var,'min',-20);
set(handles.C2_var,'max',20);
set(handles.C2_var,'value',0);
set(handles.C2_var,'SliderStep',[0.025,0.05]);
set(handles.C2_val,'string',num2str(0));

set(handles.C3_var,'min',-20);
set(handles.C3_var,'max',20);
set(handles.C3_var,'value',0);
set(handles.C3_var,'SliderStep',[0.025,0.05]);
set(handles.C3_val,'string',num2str(0));

set(handles.C4_var,'min',-20);
set(handles.C4_var,'max',20);
set(handles.C4_var,'value',0);
set(handles.C4_var,'SliderStep',[0.025,0.05]);
set(handles.C4_val,'string',num2str(0));

set(handles.C5_var,'min',-20);
set(handles.C5_var,'max',20);
set(handles.C5_var,'value',0);
set(handles.C5_var,'SliderStep',[0.025,0.05]);
set(handles.C5_val,'string',num2str(0));

set(handles.C6_var,'min',-20);
set(handles.C6_var,'max',20);
set(handles.C6_var,'value',0);
set(handles.C6_var,'SliderStep',[0.025,0.05]);
set(handles.C6_val,'string',num2str(0));

set(handles.C7_var,'min',-20);
set(handles.C7_var,'max',20);
set(handles.C7_var,'value',0);
set(handles.C7_var,'SliderStep',[0.025,0.05]);
set(handles.C7_val,'string',num2str(0));

set(handles.C8_var,'min',-20);
set(handles.C8_var,'max',20);
set(handles.C8_var,'value',0);
set(handles.C8_var,'SliderStep',[0.025,0.05]);
set(handles.C8_val,'string',num2str(0));

set(handles.C9_var,'min',-20);
set(handles.C9_var,'max',20);
set(handles.C9_var,'value',0);
set(handles.C9_var,'SliderStep',[0.025,0.05]);
set(handles.C9_val,'string',num2str(0));

set(handles.C10_var,'min',-20);
set(handles.C10_var,'max',20);
set(handles.C10_var,'value',0);
set(handles.C10_var,'SliderStep',[0.025,0.05]);
set(handles.C10_val,'string',num2str(0));

equalizer_plot();

% Choose default command line output for gui10bandeq
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui10bandeq wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui10bandeq_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function C1_var_Callback(hObject, eventdata, handles)
% hObject    handle to C1_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(1)=get(hObject,'value');
set(handles.C1_val,'string',num2str(C(1)));


% --- Executes during object creation, after setting all properties.
function C1_var_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C1_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function C2_var_Callback(hObject, eventdata, handles)
% hObject    handle to C2_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(2)=get(hObject,'value');
set(handles.C2_val,'string',num2str(C(2)));


% --- Executes during object creation, after setting all properties.
function C2_var_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C2_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function C3_var_Callback(hObject, eventdata, handles)
% hObject    handle to C3_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(3)=get(hObject,'value');
set(handles.C3_val,'string',num2str(C(3)));


% --- Executes during object creation, after setting all properties.
function C3_var_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C3_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function C4_var_Callback(hObject, eventdata, handles)
% hObject    handle to C4_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(4)=get(hObject,'value');
set(handles.C4_val,'string',num2str(C(4)));


% --- Executes during object creation, after setting all properties.
function C4_var_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C4_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function C5_var_Callback(hObject, eventdata, handles)
% hObject    handle to C5_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(5)=get(hObject,'value');
set(handles.C5_val,'string',num2str(C(5)));


% --- Executes during object creation, after setting all properties.
function C5_var_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C5_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function C6_var_Callback(hObject, eventdata, handles)
% hObject    handle to C6_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(6)=get(hObject,'value');
set(handles.C6_val,'string',num2str(C(6)));


% --- Executes during object creation, after setting all properties.
function C6_var_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C6_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function C7_var_Callback(hObject, eventdata, handles)
% hObject    handle to C7_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(7)=get(hObject,'value');
set(handles.C7_val,'string',num2str(C(7)));


% --- Executes during object creation, after setting all properties.
function C7_var_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C7_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function C8_var_Callback(hObject, eventdata, handles)
% hObject    handle to C8_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(8)=get(hObject,'value');
set(handles.C8_val,'string',num2str(C(8)));


% --- Executes during object creation, after setting all properties.
function C8_var_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C8_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function C9_var_Callback(hObject, eventdata, handles)
% hObject    handle to C9_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(9)=get(hObject,'value');
set(handles.C9_val,'string',num2str(C(9)));


% --- Executes during object creation, after setting all properties.
function C9_var_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C9_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function C10_var_Callback(hObject, eventdata, handles)
% hObject    handle to C10_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(10)=get(hObject,'value');
set(handles.C10_val,'string',num2str(C(10)));


% --- Executes during object creation, after setting all properties.
function C10_var_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C10_var (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function C1_val_Callback(hObject, eventdata, handles)
% hObject    handle to C1_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C1_val as text
%        str2double(get(hObject,'String')) returns contents of C1_val as a double
global C;
C(1)=str2num(get(hObject,'string'));
minn=get(handles.C1_var,'min');
maxx=get(handles.C1_var,'max');
if(C(1)<minn || C(1)>maxx)
    C(1)=get(handles.C1_var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.C1_var,'value',C(1));
end


% --- Executes during object creation, after setting all properties.
function C1_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C1_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C2_val_Callback(hObject, eventdata, handles)
% hObject    handle to C2_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C2_val as text
%        str2double(get(hObject,'String')) returns contents of C2_val as a double
global C;
C(2)=str2num(get(hObject,'string'));
minn=get(handles.C2_var,'min');
maxx=get(handles.C2_var,'max');
if(C(2)<minn || C(2)>maxx)
    C(2)=get(handles.C2_var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.C2_var,'value',C(2));
end


% --- Executes during object creation, after setting all properties.
function C2_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C2_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C3_val_Callback(hObject, eventdata, handles)
% hObject    handle to C3_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C3_val as text
%        str2double(get(hObject,'String')) returns contents of C3_val as a double
global C;
C(3)=str2num(get(hObject,'string'));
minn=get(handles.C3_var,'min');
maxx=get(handles.C3_var,'max');
if(C(3)<minn || C(3)>maxx)
    C(3)=get(handles.C3_var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.C3_var,'value',C(3));
end


% --- Executes during object creation, after setting all properties.
function C3_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C3_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C4_val_Callback(hObject, eventdata, handles)
% hObject    handle to C4_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C4_val as text
%        str2double(get(hObject,'String')) returns contents of C4_val as a double
global C;
C(4)=str2num(get(hObject,'string'));
minn=get(handles.C4_var,'min');
maxx=get(handles.C4_var,'max');
if(C(4)<minn || C(4)>maxx)
    C(4)=get(handles.C4_var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.C4_var,'value',C(4));
end


% --- Executes during object creation, after setting all properties.
function C4_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C4_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C5_val_Callback(hObject, eventdata, handles)
% hObject    handle to C5_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C5_val as text
%        str2double(get(hObject,'String')) returns contents of C5_val as a double
global C;
C(5)=str2num(get(hObject,'string'));
minn=get(handles.C5_var,'min');
maxx=get(handles.C5_var,'max');
if(C(5)<minn || C(5)>maxx)
    C(5)=get(handles.C5_var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.C5_var,'value',C(5));
end


% --- Executes during object creation, after setting all properties.
function C5_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C5_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C6_val_Callback(hObject, eventdata, handles)
% hObject    handle to C6_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C6_val as text
%        str2double(get(hObject,'String')) returns contents of C6_val as a double
global C;
C(6)=str2num(get(hObject,'string'));
minn=get(handles.C6_var,'min');
maxx=get(handles.C6_var,'max');
if(C(6)<minn || C(6)>maxx)
    C(6)=get(handles.C6_var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.C6_var,'value',C(6));
end


% --- Executes during object creation, after setting all properties.
function C6_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C6_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C7_val_Callback(hObject, eventdata, handles)
% hObject    handle to C7_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C7_val as text
%        str2double(get(hObject,'String')) returns contents of C7_val as a double
global C;
C(7)=str2num(get(hObject,'string'));
minn=get(handles.C7_var,'min');
maxx=get(handles.C7_var,'max');
if(C(7)<minn || C(7)>maxx)
    C(7)=get(handles.C7_var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.C7_var,'value',C(7));
end


% --- Executes during object creation, after setting all properties.
function C7_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C7_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C8_val_Callback(hObject, eventdata, handles)
% hObject    handle to C8_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C8_val as text
%        str2double(get(hObject,'String')) returns contents of C8_val as a double
global C;
C(8)=str2num(get(hObject,'string'));
minn=get(handles.C8_var,'min');
maxx=get(handles.C8_var,'max');
if(C(8)<minn || C(8)>maxx)
    C(8)=get(handles.C8_var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.C8_var,'value',C(8));
end


% --- Executes during object creation, after setting all properties.
function C8_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C8_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C9_val_Callback(hObject, eventdata, handles)
% hObject    handle to C9_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C9_val as text
%        str2double(get(hObject,'String')) returns contents of C9_val as a double
global C;
C(9)=str2num(get(hObject,'string'));
minn=get(handles.C9_var,'min');
maxx=get(handles.C9_var,'max');
if(C(9)<minn || C(9)>maxx)
    C(9)=get(handles.C9_var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.C9_var,'value',C(9));
end


% --- Executes during object creation, after setting all properties.
function C9_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C9_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C10_val_Callback(hObject, eventdata, handles)
% hObject    handle to C10_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C10_val as text
%        str2double(get(hObject,'String')) returns contents of C10_val as a double
global C;
C(10)=str2num(get(hObject,'string'));
minn=get(handles.C10_var,'min');
maxx=get(handles.C10_var,'max');
if(C(10)<minn || C(10)>maxx)
    C(10)=get(handles.C10_var,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.C10_var,'value',C(10));
end


% --- Executes during object creation, after setting all properties.
function C10_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C10_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in load.
function load_Callback(hObject, eventdata, handles)
% hObject    handle to load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_name;
file_name=uigetfile('*wav','Audio file');

% --- Executes on button press in plot_H.
function plot_H_Callback(hObject, eventdata, handles)
% hObject    handle to plot_H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C Fs;
e=getappdata(0,'n');
plot(handles.axes1,1e-3*Fs*[0:1023]/2048,20*log10(e));
%xlabel('Frequency [kHz]');
%ylabel('Magnitude [dB]');
%title('Audio characterstics');
%axis([0 1e-3*Fs/2 -21 21]);
equalizer_plot();

function equalizer_plot()
global C Fs;
[a,b]=coef();
H=0;
for i=1:10
    H=H+10^(C(i)/20)*abs(freqz(b{i},a{i},1024));
    setappdata(0,'n',H);
end
%plot(1e-3*Fs*[0:1023]/2048,20*log10(H));
%xlabel('Frequency [kHz]');
%ylabel('Magnitude [dB]');
%title('Audio characterstics');
%axis([0 1e-3*Fs/2 -21 21]);
%grid on;

function [a,b]=coef()
global Fs;
%Filtrul 1
Rp1=0.5;
Rs1=30;
Fp1=2.1e3/(Fs/2);                     
Fs1=2.5e3/(Fs/2);                     
n1=cheb1ord(Fp1,Fs1,Rp1,Rs1);
[b1,a1]=cheby1(n1,Rp1,Fp1,'low');
%Filtrul 2
Rp2=0.5;
Rs2=30;
Fp2=1e3*[2.25,4.75]/(Fs/2);                   
Fs2=1e3*[1.9,5.35]/(Fs/2);
n2=cheb1ord(Fp2,Fs2,Rp2,Rs2);
[b2,a2]=cheby1(n2,Rp2,Fp2);
%Filtrul 3
Rp3=0.5;
Rs3=30;
Fp3=1e3*[4.95,6.25]/(Fs/2);                   
Fs3=1e3*[4.35,6.65]/(Fs/2);
n3=cheb1ord(Fp3,Fs3,Rp3,Rs3);
[b3,a3]=cheby1(n3,Rp3,Fp3);
%Filtrul 4
Rp4=0.5;
Rs4=30;
Fp4=1e3*[6.45,8.75]/(Fs/2);
Fs4=1e3*[5.9,9.35]/(Fs/2);
n4=cheb1ord(Fp4,Fs4,Rp4,Rs4);
[b4,a4]=cheby1(n4,Rp4,Fp4);
%Filtrul 5
Rp5=0.5;
Rs5=30;
Fp5=1e3*[8.95,10.25]/(Fs/2);
Fs5=1e3*[8.35,10.65]/(Fs/2);
n5=cheb1ord(Fp5,Fs5,Rp5,Rs5);
[b5,a5]=cheby1(n5,Rp5,Fp5);
%Filtrul 6
Rp6=0.5;
Rs6=30;
Fp6=1e3*[10.4,12.8]/(Fs/2);
Fs6=1e3*[10.0,13.5]/(Fs/2);
n6=cheb1ord(Fp6,Fs6,Rp6,Rs6);
[b6,a6]=cheby1(n6,Rp6,Fp6);
%Filtrul 7
Rp7=0.5;
Rs7=30;
Fp7=1e3*[12.95,14.25]/(Fs/2);
Fs7=1e3*[12.35,15.65]/(Fs/2);
n7=cheb1ord(Fp7,Fs7,Rp7,Rs7);
[b7,a7]=cheby1(n7,Rp7,Fp7);
%Filtrul 8
Rp8=0.5;
Rs8=30;
Fp8=1e3*[14.35,16.25]/(Fs/2);
Fs8=1e3*[14.0,16.65]/(Fs/2);
n8=cheb1ord(Fp8,Fs8,Rp8,Rs8);
[b8,a8]=cheby1(n8,Rp8,Fp8);
%Filtrul 9
Rp9=0.5;
Rs9=30;
Fp9=1e3*[16.4,18.8]/(Fs/2);
Fs9=1e3*[16.0,19.5]/(Fs/2);
n9=cheb1ord(Fp9,Fs9,Rp9,Rs9);
[b9,a9]=cheby1(n9,Rp9,Fp9);
%Filtrul 10
Rp10=0.5;
Rs10=30;
Fp10=1e3*19/(Fs/2);                  
Fs10=1e3*19.4/(Fs/2);
n10=cheb1ord(Fp10,Fs10,Rp10,Rs10);
[b10,a10]=cheby1(n10,Rp10,Fp10,'high');
a={a1,a2,a3,a4,a5,a6,a7,a8,a9,a10};
b={b1,b2,b3,b4,b5,b6,b7,b8,b9,b10};


% --- Executes on button press in reset_H.
function reset_H_Callback(hObject, eventdata, handles)
% hObject    handle to reset_H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Fs C;
C=zeros(1,10);
Fs=44100;
set(handles.C1_val,'string',num2str(0));
set(handles.C2_val,'string',num2str(0));
set(handles.C3_val,'string',num2str(0));
set(handles.C4_val,'string',num2str(0));
set(handles.C5_val,'string',num2str(0));
set(handles.C6_val,'string',num2str(0));
set(handles.C7_val,'string',num2str(0));
set(handles.C7_val,'string',num2str(0));
set(handles.C9_val,'string',num2str(0));
set(handles.C10_val,'string',num2str(0));

set(handles.C1_var,'value',0);
set(handles.C2_var,'value',0);
set(handles.C3_var,'value',0);
set(handles.C4_var,'value',0);
set(handles.C5_var,'value',0);
set(handles.C6_var,'value',0);
set(handles.C7_var,'value',0);
set(handles.C8_var,'value',0);
set(handles.C9_var,'value',0);
set(handles.C10_var,'value',0);

equalizer_plot();


% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
% hObject    handle to play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global stop file_name C;
stop=1;
[p,Fs]=wavread(file_name);
sampl=length(p);
tduration=sampl/Fs;
t1=linspace(0,tduration,sampl);
plot(handles.axes2,t1,p);
u=getappdata(0,'t');
plot(handles.axes5,u);
equalizer_play();

function equalizer_play()
global stop file_name C x y;
[x,Fs]=wavread(file_name);
[a,b]=coef();
l_bucata=2*Fs;
Nb=round(length(x)/l_bucata);
y=0;
for i=1:floor(Nb)
    bucata=x((i-1)*l_bucata+1:i*l_bucata);
    for k=1:10
        y=y+filter(10^(C(k)/20)*b{k},a{k},bucata);
        setappdata(0,'t',y);
        if(stop==0)
            break;
        end     
    end
    wavplay(y,Fs,'async');
    y=0;
    if(stop==0)
        break;
    end   
end


% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global stop;
stop=0;


% --- Executes on button press in plotwave.
function plotwave_Callback(hObject, eventdata, handles)
% hObject    handle to plotwave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%global x Fs;
%sampl=length(x);
%tduration=sampl/Fs;
%t1=linspace(0,tduration,sampl);
%plot(handles.axes2,t1,x);
%plot(handles.axes4,t1,y(1:10));

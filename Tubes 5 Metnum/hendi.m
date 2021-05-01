function varargout = hendi(varargin)
% HENDI M-file for hendi.fig
%      HENDI, by itself, creates a new HENDI or raises the existing
%      singleton*.
%
%      H = HENDI returns the handle to a new HENDI or the handle to
%      the existing singleton*.
%
%      HENDI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HENDI.M with the given input arguments.
%
%      HENDI('Property','Value',...) creates a new HENDI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hendi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hendi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hendi

% Last Modified by GUIDE v2.5 04-May-2011 12:35:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hendi_OpeningFcn, ...
                   'gui_OutputFcn',  @hendi_OutputFcn, ...
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


% --- Executes just before hendi is made visible.
function hendi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hendi (see VARARGIN)
%global epsilon;
% Choose default command line output for hendi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes hendi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = hendi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in soal.
function soal_Callback(hObject, eventdata, handles)
% hObject    handle to soal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns soal contents as cell array
%        contents{get(hObject,'Value')} returns selected item from soal
val = get(hObject,'Value');
switch val
case 1
% User selected the first item
set(handles.c,'Enable','inactive');
set(handles.l,'Enable','inactive');
set(handles.r,'Enable','inactive');
set(handles.q,'Enable','inactive');
set(handles.w,'Enable','inactive');
case 2
% User selected the second item
set(handles.c,'Enable','inactive');
set(handles.l,'Enable','inactive');
set(handles.r,'Enable','inactive');
set(handles.q,'Enable','inactive');
set(handles.w,'Enable','inactive');
case 3
set(handles.c,'Enable','on');
set(handles.l,'Enable','on');
set(handles.r,'Enable','on');
set(handles.q,'Enable','inactive');
set(handles.w,'Enable','inactive');
case 4
set(handles.c,'Enable','inactive');
set(handles.l,'Enable','inactive');
set(handles.r,'Enable','inactive');
set(handles.q,'Enable','on');
set(handles.w,'Enable','on');
case 5
set(handles.c,'Enable','inactive');
set(handles.l,'Enable','inactive');
set(handles.r,'Enable','inactive');
set(handles.q,'Enable','inactive');
set(handles.w,'Enable','inactive');
case 6
set(handles.c,'Enable','inactive');
set(handles.l,'Enable','inactive');
set(handles.r,'Enable','inactive');
set(handles.q,'Enable','inactive');
set(handles.w,'Enable','inactive');
case 7
set(handles.c,'Enable','inactive');
set(handles.l,'Enable','inactive');
set(handles.r,'Enable','inactive');
set(handles.q,'Enable','inactive');
set(handles.w,'Enable','inactive');
end

% --- Executes during object creation, after setting all properties.
function soal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in metode.
function metode_Callback(hObject, eventdata, handles)
% hObject    handle to metode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns metode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from metode


% --- Executes during object creation, after setting all properties.
function metode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to metode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in epsilon.
function epsilon_Callback(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns epsilon contents as cell array
%        contents{get(hObject,'Value')} returns selected item from epsilon
val = get(hObject,'Value');
global epsilon;
switch val

    case 1
        epsilon = 0.01;
    case 2
        epsilon = 0.1;
    case 3
        epsilon = 1;
    case 4
        epsilon = 10;
end
display(epsilon);

% --- Executes during object creation, after setting all properties.
function epsilon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y as text
%        str2double(get(hObject,'String')) returns contents of y as a double


% --- Executes during object creation, after setting all properties.
function y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_Callback(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h as text
%        str2double(get(hObject,'String')) returns contents of h as a double


% --- Executes during object creation, after setting all properties.
function h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitungbutton.
function hitungbutton_Callback(hObject, eventdata, handles)
% hObject    handle to hitungbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
soal = get(handles.soal,'Value');
metode = get(handles.metode,'Value');
axes(handles.axes1);
x = str2double(get(handles.x,'String'));
y = str2double(get(handles.y,'String'));
b = str2double(get(handles.b,'String'));
h = str2double(get(handles.h,'String'));
global c;
global l;
global r;
global a;
global b2;
global epsilon;
c = str2double(get(handles.c,'String'));
l = str2double(get(handles.l,'String'));
r = str2double(get(handles.r,'String'));
a = str2double(get(handles.q,'String'));
b2 = str2double(get(handles.w,'String'));
switch soal
    case 1
        switch metode
            case 1
                e = euler2(x,y,b,h,1);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = epsilon * (xx.^2) - (0.1.^2) * xx;
                plot(xx,f),grid on;
            case 2
                e = heun2(x,y,b,h,1);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = epsilon * (xx.^2) - (0.1.^2) * xx;                
                plot(xx,f),grid on;
            case 3
                e = Runge_Kutta_3_2(x,y,b,h,1);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = epsilon * (xx.^2) - (0.1.^2) * xx;                
                plot(xx,f),grid on;
            case 4
                e = Runge_Kutta_4_2(x,y,b,h,1);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = epsilon * (xx.^2) - (0.1.^2) * xx;                
                plot(xx,f),grid on;
            case 5
                e = PCAM2(x,y,b,h,1);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = epsilon * (xx.^2) - (0.1.^2) * xx;                
                plot(xx,f),grid on;
        end        
    case 2
        switch metode
            case 1
                e = euler2(x,y,b,h,2);
                set(handles.jawaban,'String',e);                
                xx = 0:.2:20
                %f = (-2*0.1+xx*y*y)/xx;               
                %f = -2*0.1+xx*y*y/xx;
                f = -2*0.1+(xx*(y.^y))/3;
                plot(xx,f),grid on;
            case 2
                e = heun2(x,y,b,h,2);
                set(handles.jawaban,'String',e);
                xx = 0:.2:20
                %f = (-2*0.1+xx*y*y)/xx;               
                %f = -2*0.1+xx*y*y/xx;
                f = -2*0.1+(xx*(y.^y))/3;
                plot(xx,f),grid on;
            case 3
                e = Runge_Kutta_3_2(x,y,b,h,2);
                set(handles.jawaban,'String',e);
                xx = 0:.2:20
                %f = (-2*0.1+xx*y*y)/xx;               
                %f = -2*0.1+xx*y*y/xx;
                f = -2*0.1+(xx*(y.^y))/3;
                plot(xx,f),grid on;
            case 4
                e = Runge_Kutta_4_2(x,y,b,h,2);
                set(handles.jawaban,'String',e);
                xx = 0:.2:20
                %f = (-2*0.1+xx*y*y)/xx;               
                %f = -2*0.1+xx*y*y/xx;
                f = -2*0.1+(xx*(y.^y))/3;
                plot(xx,f),grid on;
            case 5
                e = PCAM2(x,y,b,h,2);
                set(handles.jawaban,'String',e);
                xx = 0:.2:20
                %f = (-2*0.1+xx*y*y)/xx;               
                %f = -2*0.1+xx*y*y/xx;
                f = -2*0.1+(xx*(y.^y))/3;
                plot(xx,f),grid on;
        end
    case 3
        switch metode
            case 1
                e = euler(x,y,b,h,3);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = (y-1/c*xx-r*y)/5;                
                plot(xx,f),grid on;
            case 2
                e = heun(x,y,b,h,3);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = (y-1/c*xx-r*y)/5;                
                plot(xx,f),grid on;
            case 3
                e = Runge_Kutta_3(x,y,b,h,3);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = (y-1/c*xx-r*y)/5;                
                plot(xx,f),grid on;
            case 4
                e = Runge_Kutta_4(x,y,b,h,3);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = (y-1/c*xx-r*y)/5;                
                plot(xx,f),grid on;
            case 5
                e = PCAM(x,y,b,h,3);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = (y-1/c*xx-r*y)/5;                
                plot(xx,f),grid on;
        end
    case 4
        switch metode
            case 1
                e = euler(x,y,b,h,4);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = a*xx - b2*(xx.^2);
                plot(xx,f),grid on;
            case 2
                e = heun(x,y,b,h,4);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = a*xx - b2*(xx.^2);
                plot(xx,f),grid on;
            case 3
                e = Runge_Kutta_3(x,y,b,h,4);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = a*xx - b2*(xx.^2);
                plot(xx,f),grid on;
            case 4
                e = Runge_Kutta_4(x,y,b,h,4);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = a*xx - b2*(xx.^2);
                plot(xx,f),grid on;
            case 5
                e = PCAM(x,y,b,h,4);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                f = a*xx - b2*(xx.^2);
                plot(xx,f),grid on;
        end
    case 5
        switch metode
            case 1
                e = euler(x,y,b,h,5.1);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                %yy = -10:.2:10
                f = (xx.^3) + (y.^2);
                plot(xx,f),grid on;
            case 2
                e = heun(x,y,b,h,5.1);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                %yy = -10:.2:10
                f = (xx.^3) + (y.^2);
                plot(xx,f),grid on;
            case 3
                e = Runge_Kutta_3(x,y,b,h,5.1);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                %yy = -10:.2:10
                f = (xx.^3) + (y.^2);
                plot(xx,f),grid on;
            case 4
                e = Runge_Kutta_4(x,y,b,h,5.1);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                %yy = -10:.2:10
                f = (xx.^3) + (y.^2);
                plot(xx,f),grid on;
            case 5
                e = PCAM(x,y,b,h,5.1);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                %yy = -10:.2:10
                f = (xx.^3) + (y.^2);
                plot(xx,f),grid on;
        end
    case 6
        switch metode
            case 1
                e = euler(x,y,b,h,5.2);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                %yy = -10:.2:10
                f = exp(-2*xx) - 2*y;
                plot(xx,f),grid on;
            case 2
                e = heun(x,y,b,h,5.2);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                %yy = -10:.2:10
                f = exp(-2*xx) - 2*y;
                plot(xx,f),grid on;
            case 3
                e = Runge_Kutta_3(x,y,b,h,5.2);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                %yy = -10:.2:10
                f = exp(-2*xx) - 2*y;
                plot(xx,f),grid on;
            case 4
                e = Runge_Kutta_4(x,y,b,h,5.2);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                %yy = -10:.2:10
                f = exp(-2*xx) - 2*y;
                plot(xx,f),grid on;
            case 5
                e = PCAM(x,y,b,h,5.2);
                set(handles.jawaban,'String',e);
                xx = -10:.2:10
                %yy = -10:.2:10
                f = exp(-2*xx) - 2*y;
                plot(xx,f),grid on;
        end
    case 7
        switch metode
            case 1
                e = euler(x,y,b,h,5.3);
                set(handles.jawaban,'String',e);
                zz = -10:.2:10
                %yy = -10:.2:10
                f = 4-0.3*zz-0.1*y;
                plot(zz,f),grid on;
            case 2
                e = heun(x,y,b,h,5.3);
                set(handles.jawaban,'String',e);
                zz = -10:.2:10
                %yy = -10:.2:10
                f = 4-0.3*zz-0.1*y;
                plot(zz,f),grid on;
            case 3
                e = Runge_Kutta_3(x,y,b,h,5.3);
                set(handles.jawaban,'String',e);
                zz = -10:.2:10
                %yy = -10:.2:10
                f = 4-0.3*zz-0.1*y;
                plot(zz,f),grid on;
            case 4
                e = Runge_Kutta_4(x,y,b,h,5.3);
                set(handles.jawaban,'String',e);
                zz = -10:.2:10
                %yy = -10:.2:10
                f = 4-0.3*zz-0.1*y;
                plot(zz,f),grid on;
            case 5
                e = PCAM(x,y,b,h,5.3);
                set(handles.jawaban,'String',e);
                zz = -10:.2:10
                %yy = -10:.2:10
                f = 4-0.3*zz-0.1*y;
                plot(zz,f),grid on;
        end
end



function c_Callback(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c as text
%        str2double(get(hObject,'String')) returns contents of c as a double


% --- Executes during object creation, after setting all properties.
function c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_Callback(hObject, eventdata, handles)
% hObject    handle to l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l as text
%        str2double(get(hObject,'String')) returns contents of l as a double


% --- Executes during object creation, after setting all properties.
function l_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_Callback(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r as text
%        str2double(get(hObject,'String')) returns contents of r as a double


% --- Executes during object creation, after setting all properties.
function r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q_Callback(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q as text
%        str2double(get(hObject,'String')) returns contents of q as a double


% --- Executes during object creation, after setting all properties.
function q_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w_Callback(hObject, eventdata, handles)
% hObject    handle to w (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w as text
%        str2double(get(hObject,'String')) returns contents of w as a double


% --- Executes during object creation, after setting all properties.
function w_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



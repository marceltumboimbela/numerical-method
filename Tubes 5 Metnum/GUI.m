function varargout = GUI(varargin)
% GUI M-file for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 23-Mar-2011 12:41:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(hObject,'toolbar','figure');

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a
%        double

mystring = get(hObject,'String');
set(hObject,'UserData',mystring);


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n = str2double(get(handles.edit1,'String'));
tahun = str2double(get(handles.edit2,'String'));
metode = get(handles.popupmenu1,'Value');
A = [1950 1955 1960 1965 1966 1967 1968 1969];
B = [33.525 46.519 53.941 72.319 75.160 76.160 84.690 90.866];
switch metode
    case 1
    x = lagrange(tahun,A,B,n);
    tahun2 = 1950:1969;
    axes(handles.axes1);
    plot(tahun2,lagrange(tahun2,A,B,n)),grid on
    
    case 2
    x = newton(tahun,A,B,n);
    tahun2 = 1950:1969;
    axes(handles.axes1);
    plot(A,B),grid on
    
    case 3
    x = newton_gregory_maju(A,B,tahun,n);
    tahun2 = 1950:1969;
    axes(handles.axes1);
    plot(A,B),grid on
    case 4
    x = newton_gregory_mundur(A,B,tahun,n);
    tahun2 = 1950:1969;
    axes(handles.axes1);
    plot(A,B),grid on
end
        
set(handles.jawaban1,'String',x);

display (x)

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
val = get(hObject,'Value');
switch val
case 1
% User selected the first item
set(handles.uipanel3,'Visible','on');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','off');
set(handles.uipanel7,'Visible','off');
set(handles.jawaban1,'String','');
case 2
% User selected the second item
set(handles.uipanel4,'Visible','on');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','off');
set(handles.uipanel7,'Visible','off');
set(handles.jawaban2,'String','');
set(handles.jawabannyata,'String','');
case 3
set(handles.uipanel5,'Visible','on');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel6,'Visible','off');
set(handles.uipanel7,'Visible','off');
set(handles.jawaban3,'String','');
case 4
set(handles.uipanel6,'Visible','on');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel7,'Visible','off');
set(handles.jawaban4,'String','');
case 5
set(handles.uipanel7,'Visible','on');
set(handles.uipanel3,'Visible','off');
set(handles.uipanel4,'Visible','off');
set(handles.uipanel5,'Visible','off');
set(handles.uipanel6,'Visible','off');
set(handles.jawaban5a,'String','');
set(handles.jawaban5b,'String','');
end

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function uipanel3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on selection change in pilihmetode2.
function pilihmetode2_Callback(hObject, eventdata, handles)
% hObject    handle to pilihmetode2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns pilihmetode2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pilihmetode2


% --- Executes during object creation, after setting all properties.
function pilihmetode2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pilihmetode2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n = str2double(get(handles.edit3,'String'));
a = str2double(get(handles.edit4,'String'));
b = str2double(get(handles.edit5,'String'));
x = str2double(get(handles.edit6,'String'));

gs = generateselang(a,b);
display(gs);
metode = get(handles.pilihmetode2,'Value');
soal = get(handles.pilihsoal2,'Value');



switch soal
    case 1
            xx = a:b;
            f(xx) = sin(2*xx)-exp(xx-1)+2*xx+7;
            axes(handles.axes3)
            plot(xx,f(xx)),grid on
            set(handles.jawabannyata,'String','');
        switch metode
            case 1
                hasil = lagrange(x,gs,soal2a(gs),n);
                display(hasil);
                axes(handles.axes2)
                plot(gs,lagrange(gs,gs,soal2a(gs),n)),grid on
                set(handles.jawaban2,'String',str2num(sprintf('%7f',hasil)));
            case 2
                hasil = newton(x,gs,soal2a(gs),n);
                display(hasil);
                axes(handles.axes2)
                plot(gs,soal2a(gs)),grid on
                set(handles.jawaban2,'String',hasil);
            case 3
                hasil = newton_gregory_maju2(a,b,x,n);
                display(hasil);
                axes(handles.axes2)
                plot(gs,soal2a(gs)),grid on
                set(handles.jawaban2,'String',hasil);
            case 4
                hasil = newton_gregory_mundur2(a,b,x,n);
                display(hasil);
                axes(handles.axes2)
                plot(gs,soal2a(gs)),grid on
                set(handles.jawaban2,'String',hasil);
        end
    case 2
            xx = a:b;
            f(xx) = 0.5*(exp(xx) + exp(-xx));
            axes(handles.axes3)
            plot(xx,f(xx)),grid on
        switch metode
            case 1
                hasil = lagrange(x,gs,soal2b(gs),n);
                hasilnyata = cosh(x);
                display(hasil);
                axes(handles.axes2)
                plot(gs,lagrange(gs,gs,soal2b(gs),n)),grid on
                set(handles.jawaban2,'String',hasil);
                set(handles.jawabannyata,'String',hasilnyata);
            case 2
                hasil = newton(x,gs,soal2b(gs),n);
                hasilnyata = cosh(x);
                display(hasil);
                axes(handles.axes2)
                plot(gs,soal2b(gs)),grid on
                set(handles.jawaban2,'String',hasil);
                set(handles.jawabannyata,'String',hasilnyata);
            case 3
                hasil = newton_gregory_maju2b(a,b,x,n);
                hasilnyata = cosh(x);
                display(hasil);
                axes(handles.axes2)
                plot(gs,soal2b(gs)),grid on
                set(handles.jawaban2,'String',hasil);
                set(handles.jawabannyata,'String',hasilnyata);
            case 4
                hasil = newton_gregory_mundur2b(a,b,x,n);
                hasilnyata = cosh(x);
                display(hasil);
                axes(handles.axes2)
                plot(gs,soal2b(gs)),grid on
                set(handles.jawaban2,'String',hasil);
                set(handles.jawabannyata,'String',hasilnyata);
        end
end
    


%axes(handles.axes2)

%plot(x,f(x)),grid on

function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pilihsoal2.
function pilihsoal2_Callback(hObject, eventdata, handles)
% hObject    handle to pilihsoal2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns pilihsoal2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pilihsoal2


% --- Executes during object creation, after setting all properties.
function pilihsoal2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pilihsoal2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n = str2double(get(handles.n4,'String'));
t = str2double(get(handles.t4,'String'));
v = str2double(get(handles.v4,'String'));

T = [10 15 20 25 30];
V = [40	60 80 100 120];
A = [5 10 15 20	22.5; 7.5 10 17	25 25; 13.33 20	26.66 33.33	40; 15 20 25 35	35; 20 22.5 32 40 50];

s = lagrange2(t,v,T,V,A,n,n);
set(handles.jawaban4,'String',s);

function n4_Callback(hObject, eventdata, handles)
% hObject    handle to n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n4 as text
%        str2double(get(hObject,'String')) returns contents of n4 as a double


% --- Executes during object creation, after setting all properties.
function n4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t4_Callback(hObject, eventdata, handles)
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t4 as text
%        str2double(get(hObject,'String')) returns contents of t4 as a double


% --- Executes during object creation, after setting all properties.
function t4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v4_Callback(hObject, eventdata, handles)
% hObject    handle to v4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v4 as text
%        str2double(get(hObject,'String')) returns contents of v4 as a double


% --- Executes during object creation, after setting all properties.
function v4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n = str2double(get(handles.n,'String'));
suhu = str2double(get(handles.suhu,'String'));
tekanan = str2double(get(handles.tekanan,'String'));
T = [400 450 500 550 600];
P = [100 200 300 400 500];
M = [0.014145 0.015897 0.018060	0.020742 0.024065; 0.0072222 0.008023 0.008985 0.010134 0.011492; 0.004013 0.004409 0.004873 0.005408 0.006013; 0.002389 0.002598 0.002836 0.003102 0.003392; 0.001506 0.001622	0.001751 0.001890 0.002036];	
display(M)
hasil = lagrange2(suhu,tekanan,T,P,M,n,n);
%display (lagrange2(410,110,T,P,M,2,2))
set(handles.jawaban3,'String',hasil);

% --- Executes on selection change in pilihmetode5.
function pilihmetode5_Callback(hObject, eventdata, handles)
% hObject    handle to pilihmetode5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns pilihmetode5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pilihmetode5


% --- Executes during object creation, after setting all properties.
function pilihmetode5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pilihmetode5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
metode = get(handles.pilihmetode5,'Value');
T = [5 10 15 20 25 30];
Y1 = [11.6 10.3 9.1 8.2 7.4 6.8];
Y2 = [10.5 9.2 8.2 7.4 6.7 6.1];
n = 5;
switch metode
    case 1 
        hasil1 = lagrange(22.4,T,Y1,n);
        hasil2 = lagrange(22.4,T,Y2,n);
        set(handles.jawaban5a,'String',hasil1);
        set(handles.jawaban5b,'String',hasil2);
    case 2
        hasil1 = newton_gregory_maju(T,Y1,22.4,4);
        hasil2 = newton_gregory_maju(T,Y2,22.4,4);
        set(handles.jawaban5a,'String',hasil1);
        set(handles.jawaban5b,'String',hasil2);
   case 3
       hasil1 = spline(T,Y1,22.4);
       hasil2 = spline(T,Y2,22.4);
       set(handles.jawaban5a,'String',hasil1);
       set(handles.jawaban5b,'String',hasil2);
end

function suhu_Callback(hObject, eventdata, handles)
% hObject    handle to suhu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of suhu as text
%        str2double(get(hObject,'String')) returns contents of suhu as a double


% --- Executes during object creation, after setting all properties.
function suhu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to suhu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tekanan_Callback(hObject, eventdata, handles)
% hObject    handle to tekanan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tekanan as text
%        str2double(get(hObject,'String')) returns contents of tekanan as a double


% --- Executes during object creation, after setting all properties.
function tekanan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tekanan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



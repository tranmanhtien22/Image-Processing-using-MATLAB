function varargout = dgtd(varargin)
% DGTD MATLAB code for dgtd.fig
%      DGTD, by itself, creates a new DGTD or raises the existing
%      singleton*.
%
%      H = DGTD returns the handle to a new DGTD or the handle to
%      the existing singleton*.
%
%      DGTD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DGTD.M with the given input arguments.
%
%      DGTD('Property','Value',...) creates a new DGTD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dgtd_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dgtd_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dgtd

% Last Modified by GUIDE v2.5 09-Mar-2023 23:42:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dgtd_OpeningFcn, ...
                   'gui_OutputFcn',  @dgtd_OutputFupcn, ...
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


% --- Executes just before dgtd is made visible.
function dgtd_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dgtd (see VARARGIN)

% Choose default command line output for dgtd
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dgtd wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = dgtd_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in histogram.
function histogram_Callback(hObject, eventdata, handles)
% hObject    handle to histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
ahist=a;
ahist=rgb2gray(ahist);
axes(handles.axes1);
imhist(ahist);
% --- Executes on button press in edgedetection.
function edgedetection_Callback(hObject, eventdata, handles)
% hObject    handle to edgedetection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aedge=a;
aedge=rgb2gray(aedge);
aedge=edge(aedge,'Canny');
axes(handles.axes1);
imshow(aedge);
% --- Executes on button press in complementimage.
function complementimage_Callback(hObject, eventdata, handles)
% hObject    handle to complementimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
acomp=a;
acomp=imcomplement(acomp);
axes(handles.axes1);
imshow(acomp);
% --- Executes on button press in rotater.
function rotater_Callback(hObject, eventdata, handles)
% hObject    handle to rotater (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aclock=a;
aclock=imrotate(aclock,270);
axes(handles.axes1);
imshow(aclock);
% --- Executes on button press in rotatel.
function rotatel_Callback(hObject, eventdata, handles)
% hObject    handle to rotatel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aclock=a;
aclock=imrotate(aclock,90);
axes(handles.axes1);
imshow(aclock);
% --- Executes on button press in uploadimage.
function uploadimage_Callback(hObject, eventdata, handles)
% hObject    handle to uploadimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=uigetfile('.jpg');
A=imread(a);
axes(handles.axes1);
imshow(A);
setappdata(0,'a',A)

% --- Executes on button press in rgbtogray.
function rgbtogray_Callback(hObject, eventdata, handles)
% hObject    handle to rgbtogray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
agray=rgb2gray(a);
axes(handles.axes1);
imshow(agray);
% --- Executes on button press in converttobinaryimage.
function converttobinaryimage_Callback(hObject, eventdata, handles)
% hObject    handle to converttobinaryimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
abw=im2bw(a);
axes(handles.axes1);
imshow(abw);
% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
axes(handles.axes1);
imshow(a);
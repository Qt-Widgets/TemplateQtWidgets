; Inno setup script for creation Windows x64 installer

; ToDo:
; * �������� ������������, ��������� �� ����� � ���� ����
; * �������� ������������, ��������� �� ���������� ����� ���������
; * ��������. ������� �� ���������� ������, ���� ��� �����������
; * ������������� ����������� ������, �������� � ������
; * ��������� ��������, ���� ��� ����������� ������ � ������������ ���������
; * ������� ����� �� �������� � ���� ���������

[Setup]

; Application name
#define   Name       "TemplateQtWidgets"
; Application version
#define   Version    "1.0"
; Organization name
#define   Publisher  "3dproger"
; Organization domain
#define   URL        "https://github.com/3dproger"
; Application executable file name
#define  ExeName    "TemplateQtWidgets.exe"

; unique identifier for the application.
; uncomment and generate this via Tools -> Generate GUID
 AppId={#Name}_{#Version}_x64_{{DF4831D0-D53C-437D-AE2C-AAA6945A0C5E}

; x86_64 only installation
ArchitecturesInstallIn64BitMode=x64

; Compression options
Compression=lzma2
SolidCompression=yes

WizardStyle=modern
DisableDirPage=no
DisableProgramGroupPage=no

AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

DefaultGroupName={#Name}
DefaultDirName={pf}\{#Name}
UninstallDisplayIcon={app}\{#ExeName}

WizardImageFile="big_image.bmp"
WizardSmallImageFile="small_image.bmp"
SetupIconFile="installer_icon.ico"
DisableWelcomePage=false

; installer executable name
OutputBaseFileName={#Name}_{#Version}_x64_Setup
; ��������� where to put the output installer
OutputDir=..\windows_installers

[Languages]
Name: en; MessagesFile: "compiler:Default.isl";
Name: ru; MessagesFile: "compiler:Languages\Russian.isl";
;Name: en; MessagesFile: "compiler:Default.isl"; LicenseFile: "License_ENG.txt"    
;Name: ru; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "License_RUS.txt"


[Messages]
ru.BeveledLabel=Russian
en.BeveledLabel=English

;[CustomMessages]

[Icons]
 Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}"
 Name: "{group}\{cm:UninstallProgram,{#Name}}"; Filename: "{uninstallexe}"
 Name: "{commondesktop}\{#Name}"; Filename: "{app}\{#ExeName}"; Tasks: desktopicon

[Tasks]
; �������� ������ �� ������� �����
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

;[Run]
; ToDo: creat icon

[Files]
;�����
Source: "..\deploy\windows_x86_64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs


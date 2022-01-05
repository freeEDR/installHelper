unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ShellApi;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'runas', 'cmd.exe', '/c powershell -Command "$standAlone=1; $site=''https://raw.githubusercontent.com/jymcheong/FreeEDR-agents/main/install.ps1'';[scriptblock]::Create((New-Object System.Net.WebClient).DownloadString($site)).Invoke();pause;"', nil, 1);
   Application.Terminate
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;




end.


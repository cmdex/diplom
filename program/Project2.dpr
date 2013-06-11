program Project2;

uses
  Forms,
  setting in 'setting.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Setting';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

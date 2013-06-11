unit setting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdCoder, IdCoder3to4, IdCoderMIME, IdBaseComponent;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    IdEncoderMIME1: TIdEncoderMIME;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
txt1: textfile;
begin
try
FileSetAttr('setting.ini', faNormal);
except
end;
Memo1.Lines.Clear;
Memo1.Lines.Add(Label1.Caption + '=' + Edit1.Text);
Memo1.Lines.Add(Label2.Caption + '=' + Edit2.Text);
Memo1.Lines.Add(Label3.Caption + '=' + Edit3.Text);
Memo1.Lines.Add(Label4.Caption + '=' + Edit4.Text);
Memo1.Lines.Add(Label5.Caption + '=' + Edit5.Text);
Memo1.Lines.Add(Label6.Caption + '=' + Edit6.Text);
Memo1.Lines.Add(Label7.Caption + '=' + Edit7.Text);
Memo1.Text := IdEncoderMIME1.EncodeString(Memo1.Text);
AssignFile(txt1, 'setting.ini');
Rewrite(txt1);
Writeln(txt1, Memo1.Text);
CloseFile(txt1);
FileSetAttr('setting.ini', faReadOnly);
form1.Close;
end;

end.

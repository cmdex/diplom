unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, DBXMySql, DB, SqlExpr, StdCtrls, Mask, DBCtrls, FMTBcd,
  DBClient, Provider, ComCtrls, Menus, IdCoderMIME, IdBaseComponent, IdCoder,
  IdCoder3to4;

type
  TForm1 = class(TForm)
    SQLConnection1: TSQLConnection;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    SQLQuery1: TSQLQuery;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    DateTimePicker1: TDateTimePicker;
    IdDecoderMIME1: TIdDecoderMIME;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_user :integer;
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
//----add table_status----
ClientDataSet1.Active:=false;
SQlQuery1.Active := false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select * from db.status');
SQLQuery1.Active:= true;
ClientDataSet1.Active:=true;
if DataSource1.DataSet.Eof then
begin
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('insert into db.status (id, status) values(1, "оплачено")');
SQLQuery1.ExecSQL();
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('insert into db.status (id, status) values(2, "електронний переказ")');
SQLQuery1.ExecSQL();
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('insert into db.status (id, status) values(3, "не оплачено")');
SQLQuery1.ExecSQL();
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('insert into db.status (id, status) values(4, "заборговано")');
SQLQuery1.ExecSQL();
end;
//----add table_curency----
ClientDataSet1.Active:=false;
SQlQuery1.Active := false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select * from db.curency');
SQLQuery1.Active:= true;
ClientDataSet1.Active:=true;
if DataSource1.DataSet.Eof then
begin
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('insert into db.curency (id, curency) values(1, "грн")');
SQLQuery1.ExecSQL();
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('insert into db.curency (id, curency) values(2, "долар")');
SQLQuery1.ExecSQL();
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('insert into db.curency (id, curency) values(3, "євро")');
SQLQuery1.ExecSQL();
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('insert into db.curency (id, curency) values(4, "руб")');
SQLQuery1.ExecSQL();
end;
//----add user admin----
ClientDataSet1.Active:=false;
SQlQuery1.Active := false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select * from db.users');
SQLQuery1.Active:= true;
ClientDataSet1.Active:=true;
if DataSource1.DataSet.Eof then
begin
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('insert into db.users (login, pass, active, rate, coef, ');
SQLQuery1.SQL.Add('permission) values("admin", "admin", 1, 1000, 0, 1)');
SQLQuery1.ExecSQL();
Form2.ClientDataSet3.Refresh;
Form2.Show;
end
else
begin
ClientDataSet1.Active:=false;
SQlQuery1.Active := false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select id, login, pass, last_login, active, permission ');
SQLQuery1.SQL.Add('from users where ');
SQLQuery1.SQL.Add('(login ='''+Trim(Form1.edit1.text)+''' and ');
SQLQuery1.SQL.Add('pass ='''+Trim(Form1.MaskEdit1.Text)+''' and active = 1)');
SQLQuery1.Active:= true;
ClientDataSet1.Active:=true;
  if not SQLQuery1.IsEmpty then
   begin
   id_user := strtoint(DataSource1.DataSet.FieldByName('id').Value);
   if DataSource1.DataSet.FieldByName('permission').AsInteger = 1 then
   begin
   Form2.Panel1.Visible := True;
   Form2.Panel2.Visible := True;
   Form2.Panel3.Visible := True;
   Form2.Panel4.Visible := True;
   Form2.Panel5.Visible := True;
   Form2.Panel6.Visible := True;
   Form2.Panel14.Visible := True;
   Form2.N5.Enabled := True;
   Form2.N6.Enabled := True;
   form2.DBGrid3.Columns[4].Visible := true;
   form2.DBGrid3.Columns[5].Visible := true;
   form2.DBGrid3.Columns[7].Visible := true;
   form2.DBGrid3.Columns[8].Visible := true;
   form2.DBGrid3.Columns[9].Visible := true;
   form2.DBGrid3.Columns[10].Visible := true;
   form2.TabSheet6.TabVisible := true;
   end
   else
   begin
   Form2.Panel1.Visible := False;
   Form2.Panel2.Visible := False;
   Form2.Panel3.Visible := False;
   Form2.Panel4.Visible := False;
   Form2.Panel5.Visible := False;
   Form2.Panel6.Visible := False;
   Form2.Panel14.Visible := False;
   Form2.N5.Enabled := False;
   Form2.N6.Enabled := False;
   form2.DBGrid3.Columns[4].Visible := false;
   form2.DBGrid3.Columns[5].Visible := false;
   form2.DBGrid3.Columns[7].Visible := false;
   form2.DBGrid3.Columns[8].Visible := false;
   form2.DBGrid3.Columns[9].Visible := false;
   form2.DBGrid3.Columns[10].Visible := false;
   form2.TabSheet6.TabVisible := false;
   end;
try
begin
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('UPDATE db.users SET last_login = :l_l ');
SQLQuery1.SQL.Add('WHERE id = :id ');
DateTimePicker1.Date := Now;
SQLQuery1.Params.ParamByName('l_l').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery1.Params.ParamByName('id').Value := id_user;
SQLQuery1.ExecSQL();
Form2.ClientDataSet3.Refresh;
Form2.Show;
Form1.Visible := false;
end;
Except
MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
   end
else
  MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
txt1: textFile;
str: string;
Stream: TStream;
begin
AssignFile(txt1, 'setting.ini');
Reset(txt1);
Readln(txt1, str);
str := IdDecoderMIME1.DecodeString(str);
try
Stream := TStringStream.Create(str);
SQLConnection1.Params.LoadFromStream(stream);
SQLConnection1.Connected := true;
finally
Stream.Free;
end;
end;

procedure TForm1.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
Button1Click(Button1);
end;

end.

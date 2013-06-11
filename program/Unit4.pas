unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FMTBcd, DB, SqlExpr, Provider, DBClient, Grids, DBGrids;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    Button3: TButton;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit9: TEdit;
    Edit8: TEdit;
    Edit7: TEdit;
    Edit6: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit12: TEdit;
    Label14: TLabel;
    Edit13: TEdit;
    Label15: TLabel;
    ComboBox2: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
  private
    { Private declarations }
    permission, active, login_count :integer;
    sum_coef :Double;
    format_sum :string;
  public
    { Public declarations }
  end;

  procedure select_user(Form :TForm; Query :TSQLQuery);

var
  Form4: TForm4;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure select_user(Form :TForm; Query :TSQLQuery);
begin
with Form do
begin
Query.SQL.Clear;
Query.SQL.Add('SELECT * from db.users');
Query.ExecSQL();
end;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
ClientDataSet1.Active:=false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select count(login) as login_count from db.users where login = :l');
SQLQuery1.Params.ParamByName('l').Value := Edit1.Text;
SQLQuery1.ExecSQL();
ClientDataSet1.Active:=true;
login_count := DataSource1.DataSet.FieldByName('login_count').Value;
/////////////
ClientDataSet1.Active:=false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select sum(coef) as coef from db.users where rate > 0');
SQLQuery1.SQL.Add('and active = 1');
SQLQuery1.ExecSQL();
ClientDataSet1.Active:=true;
format_sum := FormatFloat('0.00', DataSource1.DataSet.FieldByName('coef').AsFloat
+ StrToFloat(Edit13.Text));
sum_coef := StrToFloat(format_sum);
begin
if  login_count > 0 then
MessageDlg('Даний логін уже зареєстрований!',mtError,[mbOK],0)
else if sum_coef > 1 then
MessageDlg('Сума коефіцієнтів > 1',mtError,[mbOK],0)
else
begin
try
ComboBox1Click(ComboBox1);
ComboBox2Click(ComboBox2);
with Form2 do
begin
ClientDataSet3.Active := False;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add('INSERT INTO db.users (first_name, last_name, middle_name, ');
SQLQuery3.SQL.Add('login, pass, active, rate, coef, mobile_tel, home_tel, ');
SQLQuery3.SQL.Add('skype, e_mail, city, adresa, permission)');
SQLQuery3.SQL.Add(' values(:first_name, :last_name, :middle_name, :login, ');
SQLQuery3.SQL.Add(':pass, :active, :rate, :coef, :mobile_tel, :home_tel, ');
SQLQuery3.SQL.Add(':skype, :e_mail, :city, :adresa, :permission)');
SQLQuery3.Params.ParamByName('first_name').Value := Edit3.Text;
SQLQuery3.Params.ParamByName('last_name').Value := Edit4.Text;
SQLQuery3.Params.ParamByName('middle_name').Value := Edit5.Text;
SQLQuery3.Params.ParamByName('login').Value := Edit1.Text;
SQLQuery3.Params.ParamByName('pass').Value := Edit2.Text;
SQLQuery3.Params.ParamByName('active').Value := IntToStr(1);
SQLQuery3.Params.ParamByName('rate').Value := Edit12.Text;
SQLQuery3.Params.ParamByName('coef').Value := StrToFloat(Edit13.Text);
SQLQuery3.Params.ParamByName('mobile_tel').Value := Edit11.Text;
SQLQuery3.Params.ParamByName('home_tel').Value := Edit10.Text;
SQLQuery3.Params.ParamByName('skype').Value := Edit6.Text;
SQLQuery3.Params.ParamByName('e_mail').Value := Edit7.Text;
SQLQuery3.Params.ParamByName('city').Value := Edit8.Text;
SQLQuery3.Params.ParamByName('adresa').Value := Edit9.Text;
SQLQuery3.Params.ParamByName('permission').Value := Form4.permission;
SQLQuery3.ExecSQL();
select_user(Form2, Form2.SQLQuery3);
Form2.ClientDataSet3.Active := True;
end;
Except
  MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
  end;
end;
end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
form4.Close;
end;

procedure TForm4.Button3Click(Sender: TObject);
var temp: double;
begin
ClientDataSet1.Active:=false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select count(login) as login_count from db.users where login = :l');
SQLQuery1.Params.ParamByName('l').Value := Edit1.Text;
SQLQuery1.ExecSQL();
ClientDataSet1.Active:=true;
login_count := DataSource1.DataSet.FieldByName('login_count').Value;
/////////////
ClientDataSet1.Active:=false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select sum(coef) as coef from db.users where rate > 0 ');
SQLQuery1.SQL.Add('and active = 1');
SQLQuery1.ExecSQL();
ClientDataSet1.Active:=true;
format_sum := FormatFloat('0.00', DataSource1.DataSet.FieldByName('coef').AsFloat
+ StrToFloat(Edit13.Text) - Form2.DBGrid3.Fields[9].AsFloat);
sum_coef := StrToFloat(format_sum);
begin
if  login_count > 1 then
MessageDlg('Даний логін уже зареєстрований!',mtError,[mbOK],0)
else if sum_coef > 1 then
MessageDlg('Сума коефіцієнтів > 1',mtError,[mbOK],0)
else
begin
try
ComboBox1Click(ComboBox1);
ComboBox2Click(ComboBox2);
with Form2 do
begin
ClientDataSet3.Active := False;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add('UPDATE db.users SET first_name = :first_name, ');
SQLQuery3.SQL.Add('last_name = :last_name, middle_name = :middle_name, ');
SQLQuery3.SQL.Add('login = :login, pass = :pass, active = :active, rate = :rate, ');
SQLQuery3.SQL.Add('coef = :coef, mobile_tel = :mobile_tel, home_tel = :home_tel, ');
SQLQuery3.SQL.Add('skype = :skype, e_mail = :e_mail, city = :city, ');
SQLQuery3.SQL.Add('adresa = :adresa, permission = :permission WHERE id = :id ');
SQLQuery3.Params.ParamByName('first_name').Value := Edit3.Text;
SQLQuery3.Params.ParamByName('last_name').Value := Edit4.Text;
SQLQuery3.Params.ParamByName('middle_name').Value := Edit5.Text;
SQLQuery3.Params.ParamByName('login').Value := Edit1.Text;
SQLQuery3.Params.ParamByName('pass').Value := Edit2.Text;
SQLQuery3.Params.ParamByName('active').Value := Form4.active;
SQLQuery3.Params.ParamByName('rate').Value := Edit12.Text;
SQLQuery3.Params.ParamByName('coef').Value := StrToFloat(Edit13.Text);
SQLQuery3.Params.ParamByName('mobile_tel').Value := Edit11.Text;
SQLQuery3.Params.ParamByName('home_tel').Value := Edit10.Text;
SQLQuery3.Params.ParamByName('skype').Value := Edit6.Text;
SQLQuery3.Params.ParamByName('e_mail').Value := Edit7.Text;
SQLQuery3.Params.ParamByName('city').Value := Edit8.Text;
SQLQuery3.Params.ParamByName('adresa').Value := Edit9.Text;
SQLQuery3.Params.ParamByName('permission').Value := Form4.permission;
SQLQuery3.Params.ParamByName('id').Value := Form2.id_user_select;
SQLQuery3.ExecSQL();
select_user(Form2, Form2.SQLQuery3);
Form2.ClientDataSet3.Active := True;
Form4.Close;
end;
Except
  MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
end;
end;
end;

procedure TForm4.ComboBox1Click(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
active := 1
else if ComboBox1.ItemIndex = 1 then
active := 0;
end;

procedure TForm4.ComboBox2Click(Sender: TObject);
begin
if ComboBox2.ItemIndex = 0 then
permission := 1
else if ComboBox2.ItemIndex = 1 then
permission := 0;
end;

end.

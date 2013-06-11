unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, FMTBcd, DB, Grids, DBGrids, Provider, SqlExpr,
  DBClient, WideStrings, DBXMySql, ExtCtrls, DBCtrls, StdCtrls, DBCGrids,
  RpDefine, RpRave, RpConDS, RpCon, RpConBDE, frxClass, frxDBSet, frxPreview,
  frxDesgn, frxCtrls, ShellAPI;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N3: TMenuItem;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    SQLQuery3: TSQLQuery;
    DataSource3: TDataSource;
    ClientDataSet3: TClientDataSet;
    DataSetProvider3: TDataSetProvider;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    DBGrid3: TDBGrid;
    DataSource4: TDataSource;
    ClientDataSet4: TClientDataSet;
    DataSetProvider4: TDataSetProvider;
    SQLQuery4: TSQLQuery;
    DataSource5: TDataSource;
    ClientDataSet5: TClientDataSet;
    DataSetProvider5: TDataSetProvider;
    SQLQuery5: TSQLQuery;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    DBGrid6: TDBGrid;
    DataSource6: TDataSource;
    ClientDataSet6: TClientDataSet;
    DataSetProvider6: TDataSetProvider;
    SQLQuery6: TSQLQuery;
    Panel7: TPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    DataSource7: TDataSource;
    ClientDataSet7: TClientDataSet;
    DataSetProvider7: TDataSetProvider;
    SQLQuery7: TSQLQuery;
    Button7: TButton;
    Panel8: TPanel;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    Button14: TButton;
    Panel9: TPanel;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    Button15: TButton;
    Panel10: TPanel;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    ComboBox16: TComboBox;
    Button16: TButton;
    TabSheet5: TTabSheet;
    Panel11: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    DBGrid4: TDBGrid;
    Panel4: TPanel;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Panel5: TPanel;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    DBGrid5: TDBGrid;
    N5: TMenuItem;
    Panel12: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    ComboBox19: TComboBox;
    Button23: TButton;
    DateTimePicker1: TDateTimePicker;
    Label27: TLabel;
    Label28: TLabel;
    TabSheet8: TTabSheet;
    Panel13: TPanel;
    Label22: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    ComboBox20: TComboBox;
    ComboBox21: TComboBox;
    Button24: TButton;
    Panel14: TPanel;
    Button25: TButton;
    Button27: TButton;
    DBGrid7: TDBGrid;
    DataSource8: TDataSource;
    ClientDataSet8: TClientDataSet;
    DataSetProvider8: TDataSetProvider;
    SQLQuery8: TSQLQuery;
    frxReport1: TfrxReport;
    DateTimePicker2: TDateTimePicker;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Help1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure DBGrid6CellClick(Column: TColumn);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ComboBox11Click(Sender: TObject);
    procedure ComboBox10Change(Sender: TObject);
    procedure ComboBox10Click(Sender: TObject);
    procedure ComboBox11Change(Sender: TObject);
    procedure ComboBox12Change(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure ComboBox9Click(Sender: TObject);
    procedure ComboBox9Change(Sender: TObject);
    procedure ComboBox12Click(Sender: TObject);
    procedure ComboBox16Click(Sender: TObject);
    procedure ComboBox15Click(Sender: TObject);
    procedure ComboBox14Click(Sender: TObject);
    procedure ComboBox13Click(Sender: TObject);
    procedure ComboBox13Change(Sender: TObject);
    procedure ComboBox14Change(Sender: TObject);
    procedure ComboBox15Change(Sender: TObject);
    procedure ComboBox16Change(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure Button21Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure ComboBox17Click(Sender: TObject);
    procedure ComboBox19Click(Sender: TObject);
    procedure ComboBox18Click(Sender: TObject);
    procedure ComboBox17Change(Sender: TObject);
    procedure ComboBox18Change(Sender: TObject);
    procedure ComboBox19Change(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure DBGrid7CellClick(Column: TColumn);
    procedure Button25Click(Sender: TObject);
    procedure ComboBox20Change(Sender: TObject);
    procedure ComboBox21Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure ComboBox7Click(Sender: TObject);
    procedure ComboBox8Click(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure ComboBox7Change(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Help1Click(Sender: TObject);

  private
    { Private declarations }
    date :TDateTime;
    date_now :string;
    USD_or, EUR_or, RUB_or, residual:double;
    proj_cost_1, proj_cost_2, kind, type_cost_id, first_name :integer;
  public
    { Public declarations }
    id_clients_select, id_projects_select, id_user_select,
    id_coming_select, form5_show, active,
    login_id, status_id, id_wage_select, permission,
    curency_id, id_type_costs_select, id_costs_select :integer;
  end;

   procedure select_clients(Form :TForm; Query :TSQLQuery);
   procedure select_projects(Form :TForm; Query :TSQLQuery);
   procedure DBGrid_column_width(DBGrid :TDBGrid; defborder :integer);
   procedure select_user(Form :TForm; Query :TSQLQuery);
   procedure select_coming(Form :TForm; ClientdataSet :TClientDataSet;
             SQLQuery :TSQLQuery);
   procedure select_type_costs(Form :TForm; Query :TSQLQuery);
   procedure select_costs(Form :TForm; ClientdataSet :TClientDataSet;
             SQLQuery :TSQLQuery);
   procedure select_wage(Form :TForm; ClientdataSet :TClientDataSet;
             SQLQuery :TSQLQuery);

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit1;

{$R *.dfm}

procedure select_wage(Form :TForm; ClientdataSet :TClientDataSet;
SQLQuery :TSQLQuery);
begin
with Form do
begin
ClientDataSet.Active := False;
SQLQuery.SQL.Clear;
SQLQuery.SQL.Add('SELECT * FROM wage');
SQLQuery.ExecSQL();
ClientDataSet.Active := True;
end;
end;

procedure select_costs(Form :TForm; ClientdataSet :TClientDataSet;
SQLQuery :TSQLQuery);
begin
with Form do
begin
ClientDataSet.Active := False;
SQLQuery.SQL.Clear;
SQLQuery.SQL.Add('SELECT costs.id,  costs.title,  costs.cost, ');
SQLQuery.SQL.Add('status.status as status_id, type_costs.type_costs as type_cost_id, ');
SQLQuery.SQL.Add('costs.date_cost, type_costs.kind AS kind FROM  costs ');
SQLQuery.SQL.Add('INNER JOIN type_costs ON (costs.type_cost_id = type_costs.id) ');
SQLQuery.SQL.Add('INNER JOIN status ON (costs.status_id = status.id) ');
SQLQuery.ExecSQL();
ClientDataSet.Active := True;
end;
end;

procedure select_type_costs(Form :TForm; Query :TSQLQuery);
begin
with Form do
begin
Query.SQL.Clear;
Query.SQL.Add('SELECT * from db.type_costs');
Query.ExecSQL();
end;
end;

procedure select_coming(Form :TForm; ClientdataSet :TClientDataSet;
SQLQuery :TSQLQuery);
begin
with Form do
begin
ClientDataSet.Active := False;
SQLQuery.SQL.Clear;
SQLQuery.SQL.Add('SELECT coming.id, projects.name as id_project, ');
SQLQuery.SQL.Add('clients.first_name as id_client, coming.title,  coming.cost, ');
SQLQuery.SQL.Add('curency.curency as id_curency,  status.status as id_status, ');
SQLQuery.SQL.Add('coming.pay_date FROM  coming ');
SQLQuery.SQL.Add('INNER JOIN projects ON (coming.id_project = projects.id) ');
SQLQuery.SQL.Add('INNER JOIN clients ON (coming.id_client = clients.id) ');
SQLQuery.SQL.Add('INNER JOIN curency ON (coming.id_curency = curency.id) ');
SQLQuery.SQL.Add('INNER JOIN status ON (coming.id_status = status.id)');
SQLQuery.ExecSQL();
ClientDataSet.Active := True;
end;
end;

procedure select_user(Form :TForm; Query :TSQLQuery);
begin
with Form do
begin
Query.SQL.Clear;
Query.SQL.Add('SELECT * from db.users');
Query.ExecSQL();
end;
end;

procedure select_clients(Form :TForm; Query :TSQLQuery);
begin
with Form do
begin
Query.SQL.Clear;
Query.SQL.Add('SELECT clients.id, clients.first_name,clients.last_name, ');
Query.SQL.Add('clients.middle_name,clients.birth_date, ');
Query.SQL.Add('clients.mobile_tel,clients.home_tel,clients.skype, ');
Query.SQL.Add('clients.e_mail,clients.city,clients.adresa, ');
Query.SQL.Add(' clients.add_date, users.login as add_user_name FROM ');
Query.SQL.Add('clients INNER JOIN users ON (clients.add_user_id = users.id)');
Query.ExecSQL();
end;
end;

procedure select_projects(Form :TForm; Query :TSQLQuery);
begin
  with Form do
  begin
  with Query do
  begin
SQL.Clear;
SQL.Add('SELECT projects.id, projects.name, projects.description, ');
SQL.Add('projects.creation_date, projects.cost, projects.deadline, projects.active,');
SQL.Add(' users.login as creator_id, clients.first_name as client_id ');
SQL.Add('FROM projects INNER JOIN users ON (projects.creator_id = users.id) ');
SQL.Add('INNER JOIN clients ON (projects.client_id = clients.id) ');
ExecSQL();
  end;
  end;
end;

procedure TForm2.Button10Click(Sender: TObject);
begin
Form4.ComboBox1.Enabled := True;
begin
if DBGrid3.Fields[7].AsInteger = 1 then
   Form4.ComboBox1.ItemIndex := 0
   else
   Form4.ComboBox1.ItemIndex := 1;
if DBGrid3.Fields[10].AsInteger = 1 then
   Form4.ComboBox2.ItemIndex := 0
   else
   Form4.ComboBox2.ItemIndex := 1;
end;
Form4.Edit1.Text:= DBGrid3.Fields[4].AsString;
Form4.Edit2.Text:= DBGrid3.Fields[5].AsString;
Form4.Edit3.Text:= DBGrid3.Fields[1].AsString;
Form4.Edit4.Text:= DBGrid3.Fields[2].AsString;
Form4.Edit5.Text:= DBGrid3.Fields[3].AsString;
Form4.Edit6.Text:= DBGrid3.Fields[13].AsString;
Form4.Edit7.Text:= DBGrid3.Fields[14].AsString;
Form4.Edit8.Text:= DBGrid3.Fields[15].AsString;
Form4.Edit9.Text:= DBGrid3.Fields[16].AsString;
Form4.Edit10.Text:= DBGrid3.Fields[12].AsString;
Form4.Edit11.Text:= DBGrid3.Fields[11].AsString;
Form4.Edit12.Text:= DBGrid3.Fields[8].AsString;
try
Form4.Edit13.Text:= FormatFloat('0.00', StrToFloat(DBGrid3.Fields[9].AsString));
Except
end;
Form4.Button1.Visible:= False;
Form4.Button3.Visible:= True;
Form4.Show;
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
form6.Button1.Visible := true;
form6.Button2.Visible := false;
form6.DateTimePicker1.Date := Now;
Form6.Edit1.Text := '';
Form6.Edit2.Text := '';
Form6.ComboBox1.Text := '';
Form6.ComboBox2.Text := '';
Form6.ComboBox3.Text := '';
Form6.ComboBox4.Text := '';
Form6.Show;
end;

procedure TForm2.Button12Click(Sender: TObject);
begin
Form6.ComboBox1.Text:= DBGrid6.Fields[1].AsString;
Form6.ComboBox2.Text:= DBGrid6.Fields[2].AsString;
Form6.Edit1.Text:= DBGrid6.Fields[3].AsString;
Form6.Edit2.Text:= FormatFloat('0.##', StrToFloat(DBGrid6.Fields[4].AsString));
Form6.ComboBox3.Text:= DBGrid6.Fields[5].AsString;
Form6.ComboBox4.Text:= DBGrid6.Fields[6].AsString;
Form6.DateTimePicker1.Date := StrToDate(DBGrid6.Fields[7].AsString);
form6.Button1.Visible := false;
form6.Button2.Visible := true;
form6.Show;
end;

procedure TForm2.Button13Click(Sender: TObject);
var
  Res : Integer;
begin
Res := MessageDlg('Ви впевнені, що хочите видалити запис із бази даних?',
 mtInformation, [mbYes, mbNo], 0);
 case Res of
    mrYes :
begin
try
  SQLQuery6.SQL.Clear;
  SQLQuery6.SQL.Add('delete from db.coming where db.coming.id = :id ');
  SQLQuery6.ParamByName('id').Value := id_coming_select;
  SQLQuery6.ExecSQL();
  SQLQuery6.SQL.Clear;
  select_coming(Form2,Form2.ClientDataSet6,Form2.SQLQuery6);
except
  MessageDlg('Виберіть поле для видалення',mtError,[mbOK],0);
end;
end;
    mrNo :
end;
DBGrid6CellClick(DBGrid6.Columns[0]);
end;

procedure TForm2.Button14Click(Sender: TObject);
begin
ComboBox5.Text := '';
ComboBox6.Text := '';
ComboBox7.Text := '';
ComboBox8.Text := '';
ClientDataSet3.Active := false;
select_user(Form2, SQLQuery3);
ClientDataSet3.Active := true;
end;

procedure TForm2.Button15Click(Sender: TObject);
begin
ComboBox9.Text := '';
ComboBox10.Text := '';
ComboBox11.Text := '';
ComboBox12.Text := '';
select_projects(form2,SQLQuery2);
ClientDataSet2.Refresh;
end;

procedure TForm2.Button16Click(Sender: TObject);
begin
ComboBox13.Text := '';
ComboBox14.Text := '';
ComboBox15.Text := '';
ComboBox16.Text := '';
select_coming(form2,ClientDataSet6,SQLQuery6);
end;

procedure TForm2.Button17Click(Sender: TObject);
begin
Form7.Button1.Visible := true;
Form7.Button2.Visible := false;
Form7.Edit1.Text := '';
Form7.Show;
end;

procedure TForm2.Button18Click(Sender: TObject);
begin
Form7.Edit1.Text:= DBGrid4.Fields[1].AsString;
if DBGrid4.Fields[2].Value = 1 then
Form7.ComboBox1.ItemIndex := 0
else if DBGrid4.Fields[2].Value = 0 then
Form7.ComboBox1.ItemIndex := 1;
Form7.Button1.Visible := false;
Form7.Button2.Visible := true;
Form7.Show;
end;

procedure TForm2.Button19Click(Sender: TObject);
var
  Res : Integer;
begin
Res := MessageDlg('Ви впевнені, що хочите видалити запис із бази даних?',
 mtInformation, [mbYes, mbNo], 0);
 case Res of
    mrYes :
begin
try
  SQLQuery4.SQL.Clear;
  SQLQuery4.SQL.Add('delete from db.type_costs where id = :id ');
  SQLQuery4.ParamByName('id').Value := id_type_costs_select;
  SQLQuery4.ExecSQL();
  SQLQuery4.SQL.Clear;
  select_type_costs(Form2, SQLQuery4);
  ClientDataSet4.Refresh;
except
  MessageDlg('Виберіть поле для видалення',mtError,[mbOK],0);
end;
end;
    mrNo :
end;
DBGrid4CellClick(DBGrid4.Columns[0]);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form3.Button3.Visible:= false;
Form3.Button1.Visible:= true;
Form3.DateTimePicker2.Date := Now;
Form3.Edit1.Text := '';
Form3.Edit2.Text := '';
Form3.Edit3.Text := '';
Form3.Edit4.Text := '';
Form3.Edit5.Text := '';
Form3.Edit6.Text := '';
Form3.Edit7.Text := '';
Form3.Edit8.Text := '';
Form3.Edit9.Text := '';
Form3.Show;
end;

procedure TForm2.Button20Click(Sender: TObject);
begin
Form8.Button1.Visible := true;
Form8.Button2.Visible := false;
Form8.DateTimePicker1.Date := Now;
Form8.Edit1.Text := '';
Form8.Edit2.Text := '';
Form8.ComboBox1.Text := '';
Form8.ComboBox2.Text := '';
Form8.Show;
end;

procedure TForm2.Button21Click(Sender: TObject);
begin
Form8.Edit1.Text:= DBGrid5.Fields[1].AsString;
Form8.Edit2.Text:= FormatFloat('.##' ,strtofloat(DBGrid5.Fields[2].AsString));
Form8.ComboBox1.Text:= DBGrid5.Fields[3].AsString;
Form8.ComboBox2.Text:= DBGrid5.Fields[4].AsString;
Form8.DateTimePicker1.Date := StrToDate(DBGrid5.Fields[5].AsString);
Form8.Button1.Visible := false;
Form8.Button2.Visible := true;
Form8.Show;
end;

procedure TForm2.Button22Click(Sender: TObject);
var
  Res : Integer;
begin
Res := MessageDlg('Ви впевнені, що хочите видалити запис із бази даних?',
 mtInformation, [mbYes, mbNo], 0);
 case Res of
    mrYes :
begin
try
  SQLQuery5.SQL.Clear;
  SQLQuery5.SQL.Add('delete from db.costs where id = :id ');
  SQLQuery5.ParamByName('id').Value := id_costs_select;
  SQLQuery5.ExecSQL();
  SQLQuery5.SQL.Clear;
  select_costs(Form2, ClientDataSet5, SQLQuery5);
except
  MessageDlg('Виберіть поле для видалення',mtError,[mbOK],0);
end;
end;
    mrNo :
end;
DBGrid7CellClick(DBGrid7.Columns[0]);
end;

procedure TForm2.Button23Click(Sender: TObject);
begin
ComboBox17.Text := '';
ComboBox18.Text := '';
ComboBox19.Text := '';
select_costs(Form2, ClientDataSet5, SQLQuery5);
end;

procedure TForm2.Button24Click(Sender: TObject);
begin
ComboBox20.Text := '';
ComboBox21.Text := '';
select_wage(Form2, ClientDataSet8, SQLQuery8);
end;

procedure TForm2.Button25Click(Sender: TObject);
var
first_name, last_name :string;
count,       // к-ть активних прац. з ставкою > 0
i, rate :integer;
residual_16,   // 16% від залишку
coef,        //  коефіціент до зарплати прац.
cost         // остаточна сума
:double;
begin
TabSheet5Show(TabSheet5);
date := StrToDate(date_now);
DateTimePicker1.Date := date;
//-------------
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT * FROM db.wage ');
SQLQuery7.SQL.Add('WHERE date_wage = :date_wage ');
SQLQuery7.ParamByName('date_wage').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
//-------------
if DataSource7.DataSet.Eof then
begin
residual_16 := residual * 0.16;
//-----к-ть активних прац. з ставкою > 0------
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT count(id) as count FROM db.users ');
SQLQuery7.SQL.Add('WHERE active = 1 and rate > 0 ');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
count := strtoint(DataSource7.DataSet.FieldByName('count').Value);
//----- coef ------
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT first_name, last_name, coef, rate FROM db.users ');
SQLQuery7.SQL.Add('WHERE active = 1 and rate > 0 ');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
//----- нарахування зарплати ------
if not DataSource7.DataSet.Eof then
begin
for i := 1 to count do
begin
first_name := DataSource7.DataSet.FieldByName('first_name').AsString;
last_name := DataSource7.DataSet.FieldByName('last_name').AsString;
coef := DataSource7.DataSet.FieldByName('coef').AsFloat;
rate := DataSource7.DataSet.FieldByName('rate').AsInteger;
cost := residual_16 * coef + rate;
//--------
SQLQuery8.SQL.Clear;
SQLQuery8.SQL.Add('INSERT INTO db.wage (user_first_name, user_last_name, cost, date_wage)');
SQLQuery8.SQL.Add(' values (:first_name, :last_name, :cost, :date_wage)');
SQLQuery8.ParamByName('first_name').Value := first_name;
SQLQuery8.ParamByName('last_name').Value := last_name;
SQLQuery8.ParamByName('cost').Value := cost;
SQLQuery8.ParamByName('date_wage').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery8.ExecSQL();
//--------
DataSource7.DataSet.Next;
end;
end;
select_wage(Form2, ClientDataSet8, SQLQuery8);
end
else
MessageDlg('Цього місяця зарплату працівникам уже розраховано',mtError,[mbOK],0);
end;

procedure TForm2.Button27Click(Sender: TObject);
var
  Res : Integer;
begin
Res := MessageDlg('Ви впевнені, що хочите видалити запис із бази даних?',
 mtInformation, [mbYes, mbNo], 0);
 case Res of
    mrYes :
begin
try
  SQLQuery8.SQL.Clear;
  SQLQuery8.SQL.Add('delete from db.wage where id = :id ');
  SQLQuery8.ParamByName('id').Value := id_wage_select;
  SQLQuery8.ExecSQL();
  SQLQuery8.SQL.Clear;
  select_wage(Form2, ClientDataSet8, SQLQuery8);
except
  MessageDlg('Виберіть поле для видалення',mtError,[mbOK],0);
end;
end;
    mrNo :
end;
DBGrid7CellClick(DBGrid7.Columns[0]);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form3.Edit1.Text:= DBGrid1.Fields[1].AsString;
Form3.Edit2.Text:= DBGrid1.Fields[2].AsString;
Form3.Edit3.Text:= DBGrid1.Fields[3].AsString;
Form3.DateTimePicker1.Date := StrToDate(DBGrid1.Fields[4].AsString);
Form3.DateTimePicker2.Date := StrToDate(DBGrid1.Fields[5].AsString);
Form3.Edit4.Text:= DBGrid1.Fields[7].AsString;
Form3.Edit5.Text:= DBGrid1.Fields[8].AsString;
Form3.Edit6.Text:= DBGrid1.Fields[9].AsString;
Form3.Edit7.Text:= DBGrid1.Fields[10].AsString;
Form3.Edit8.Text:= DBGrid1.Fields[11].AsString;
Form3.Edit9.Text:= DBGrid1.Fields[12].AsString;
Form3.Button1.Visible:= False;
Form3.Button3.Visible:= True;
Form3.Show;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  Res : Integer;
begin
Res := MessageDlg('Ви впевнені, що хочите видалити запис із бази даних?',
 mtInformation, [mbYes, mbNo], 0);
 case Res of
    mrYes :
begin
try
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('delete from db.clients where db.clients.id = :id ');
  SQLQuery1.ParamByName('id').Value := id_clients_select;
  SQLQuery1.ExecSQL();
  select_clients(Form2, SQLQuery1);
  ClientDataSet1.Refresh;
except
  MessageDlg('Виберіть поле для видалення',mtError,[mbOK],0);
end;
end;
    mrNo :
end;
DBGrid1CellClick(DBGrid1.Columns[0]);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
form5_show := 0;
Form5.ComboBox2.ItemIndex := 0;
Form5.ComboBox2.Enabled := false;
Form5.Edit1.Text := '';
Form5.Edit3.Text := '';
Form5.Memo1.Lines.Clear;
Form5.Show;
end;

procedure TForm2.Button5Click(Sender: TObject);
var
Stream: TStream;
begin
with Form5 do
begin
Edit1.Text:= DBGrid2.Fields[1].AsString;
 begin
  Stream := ClientDataSet2.CreateBlobStream(ClientDataSet2.Fields[2], bmRead);
  try
  begin
   Memo1.Lines.LoadFromStream(Stream);
   Memo1.Lines.Text := Utf8ToAnsi(Memo1.Lines.Text);
  end;
  finally
    Stream.Free;
  end;
DateTimePicker1.Date := StrToDate(DBGrid2.Fields[3].AsString);
Edit3.Text:= FormatFloat('0.##', StrToFloat(DBGrid2.Fields[4].AsString));
DateTimePicker2.Date := StrToDate(DBGrid2.Fields[5].AsString);
Form5.ComboBox1.Text := DBGrid2.Fields[7].AsString;
if DBGrid2.Fields[6].Value = 1 then
Form5.ComboBox2.ItemIndex := 0
else if DBGrid2.Fields[6].Value = 0 then
Form5.ComboBox2.ItemIndex := 1;
Form5.ComboBox2.Enabled := true;
form5_show := 1;
Form5.Hide;
Form5.Show;
end;
end;
end;

procedure TForm2.Button6Click(Sender: TObject);
var
  Res : Integer;
begin
Res := MessageDlg('Ви впевнені, що хочите видалити запис із бази даних?',
 mtInformation, [mbYes, mbNo], 0);
 case Res of
    mrYes :
begin
try
  SQLQuery2.SQL.Clear;
  SQLQuery2.SQL.Add('delete from db.projects where db.projects.id = :id ');
  SQLQuery2.ParamByName('id').Value := id_projects_select;
  SQLQuery2.ExecSQL();
  SQLQuery2.SQL.Clear;
  select_projects(Form2, SQLQuery2);
  ClientDataSet2.Refresh;
except
  MessageDlg('Виберіть поле для видалення',mtError,[mbOK],0);
end;
end;
    mrNo :
end;
DBGrid2CellClick(DBGrid2.Columns[0]);
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
ComboBox1.Text := '';
ComboBox2.Text := '';
ComboBox3.Text := '';
ComboBox4.Text := '';
ClientDataSet1.Active := false;
select_clients(Form2, SQLQuery1);
ClientDataSet1.Active := true;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
Form4.ComboBox1.Enabled := False;
Form4.ComboBox1.ItemIndex := 0;
Form4.Button1.Visible:= True;
Form4.Button3.Visible:= False;
Form4.Edit1.Text := '';
Form4.Edit2.Text := '';
Form4.Edit3.Text := '';
Form4.Edit4.Text := '';
Form4.Edit5.Text := '';
Form4.Edit6.Text := '';
Form4.Edit7.Text := '';
Form4.Edit8.Text := '';
Form4.Edit9.Text := '';
Form4.Edit10.Text := '';
Form4.Edit11.Text := '';
Form4.Edit12.Text := '';
Form4.Edit13.Text := '';
Form4.Show;
end;

procedure TForm2.Button9Click(Sender: TObject);
var
  Res : Integer;
begin
Res := MessageDlg('Ви впевнені, що хочите видалити запис із бази даних?',
 mtInformation, [mbYes, mbNo], 0);
 case Res of
    mrYes :
begin
try
  SQLQuery3.SQL.Clear;
  SQLQuery3.SQL.Add('delete from db.users where db.users.id = :id');
  SQLQuery3.ParamByName('id').Value := id_user_select;
  SQLQuery3.ExecSQL();
  select_user(Form2, SQLQuery3);
  ClientDataSet3.Refresh;
except
  MessageDlg('Виберіть поле для видалення',mtError,[mbOK],0);
end;
end;
    mrNo :
end;
DBGrid3CellClick(DBGrid3.Columns[0]);
end;

procedure TForm2.ComboBox10Change(Sender: TObject);
begin
ClientDataSet2.Active := False;
SQLQuery2.SQL.Clear;
SQLQuery2.SQL.Add('SELECT projects.id, projects.name, projects.description, ');
SQLQuery2.SQL.Add('projects.creation_date, projects.cost, projects.deadline, projects.active,');
SQLQuery2.SQL.Add(' users.login as creator_id, clients.first_name as client_id ');
SQLQuery2.SQL.Add('FROM projects INNER JOIN users ON (projects.creator_id = users.id) ');
SQLQuery2.SQL.Add('INNER JOIN clients ON (projects.client_id = clients.id) ');
//////////////////////////////////
if (ComboBox10.Text <> '') then
begin
SQLQuery2.SQL.Add('WHERE projects.active = :active');
SQLQuery2.Params.ParamByName('active').Value := active;
if ComboBox11.Text <> '' then
begin
SQLQuery2.SQL.Add('and projects.client_id = :client_id ');
SQLQuery2.Params.ParamByName('client_id').Value := first_name;
end;
if ComboBox12.Text <> '' then
begin
SQLQuery2.SQL.Add('and projects.creator_id = :creator_id ');
SQLQuery2.Params.ParamByName('creator_id').Value := login_id;
end;
if ComboBox9.Text <> '' then
begin
SQLQuery2.SQL.Add('and projects.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery2.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery2.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
end;
SQLQuery2.ExecSQL();
ClientDataSet2.Active := True;
end;

procedure TForm2.ComboBox10Click(Sender: TObject);
begin
if ComboBox10.ItemIndex = 0 then
active := 1
else if ComboBox10.ItemIndex = 1 then
active := 0;
end;

procedure TForm2.ComboBox11Change(Sender: TObject);
begin
ClientDataSet2.Active := False;
SQLQuery2.SQL.Clear;
SQLQuery2.SQL.Add('SELECT projects.id, projects.name, projects.description, ');
SQLQuery2.SQL.Add('projects.creation_date, projects.cost, projects.deadline, projects.active,');
SQLQuery2.SQL.Add(' users.login as creator_id, clients.first_name as client_id ');
SQLQuery2.SQL.Add('FROM projects INNER JOIN users ON (projects.creator_id = users.id) ');
SQLQuery2.SQL.Add('INNER JOIN clients ON (projects.client_id = clients.id) ');
//////////////////////////////////
if ComboBox11.Text <> '' then
begin
SQLQuery2.SQL.Add('WHERE projects.client_id = :client_id ');
SQLQuery2.Params.ParamByName('client_id').Value := first_name;
end;
if (ComboBox10.Text <> '') then
begin
SQLQuery2.SQL.Add('and projects.active = :active');
SQLQuery2.Params.ParamByName('active').Value := active;

if ComboBox12.Text <> '' then
begin
SQLQuery2.SQL.Add('and projects.creator_id = :creator_id ');
SQLQuery2.Params.ParamByName('creator_id').Value := login_id;
end;
if ComboBox9.Text <> '' then
begin
SQLQuery2.SQL.Add('and projects.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery2.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery2.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
end;
SQLQuery2.ExecSQL();
ClientDataSet2.Active := True;
end;

procedure TForm2.ComboBox11Click(Sender: TObject);
begin
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT id FROM db.clients WHERE clients.first_name = :first_name');
SQLQuery7.Params.ParamByName('first_name').Value :=  ComboBox11.Text;
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
first_name := strtoint(DataSource7.DataSet.FieldByName('id').Value);
end;

procedure TForm2.ComboBox12Change(Sender: TObject);
begin
ClientDataSet2.Active := False;
SQLQuery2.SQL.Clear;
SQLQuery2.SQL.Add('SELECT projects.id, projects.name, projects.description, ');
SQLQuery2.SQL.Add('projects.creation_date, projects.cost, projects.deadline, projects.active,');
SQLQuery2.SQL.Add(' users.login as creator_id, clients.first_name as client_id ');
SQLQuery2.SQL.Add('FROM projects INNER JOIN users ON (projects.creator_id = users.id) ');
SQLQuery2.SQL.Add('INNER JOIN clients ON (projects.client_id = clients.id) ');
//////////////////////////////////
if (ComboBox12.Text <> '') then
begin
SQLQuery2.SQL.Add('WHERE projects.creator_id = :creator_id ');
SQLQuery2.Params.ParamByName('creator_id').Value := login_id;
if ComboBox10.Text <> '' then
begin
SQLQuery2.SQL.Add('and projects.active = :active');
SQLQuery2.Params.ParamByName('active').Value := active;
end;
if ComboBox11.Text <> '' then
begin
SQLQuery2.SQL.Add('and projects.client_id = :client_id ');
SQLQuery2.Params.ParamByName('client_id').Value := first_name;
end;
if ComboBox9.Text <> '' then
begin
SQLQuery2.SQL.Add('and projects.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery2.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery2.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
end;
SQLQuery2.ExecSQL();
ClientDataSet2.Active := True;
end;

procedure TForm2.ComboBox12Click(Sender: TObject);
begin
     SQLQuery7.Active := false;
     ClientDataSet7.Active := false;
     SQLQuery7.SQL.Clear;
     SQLQuery7.SQL.Add('SELECT id FROM db.users WHERE users.login = :login');
     SQLQuery7.Params.ParamByName('login').Value :=  ComboBox12.Text;
     SQLQuery7.Active := true;
     ClientDataSet7.Active := true;
     login_id := strtoint(DataSource7.DataSet.FieldByName('id').Value);
end;

procedure TForm2.ComboBox13Change(Sender: TObject);
begin
ClientDataSet6.Active := False;
SQLQuery6.SQL.Clear;
SQLQuery6.SQL.Add('SELECT coming.id, projects.name as id_project, ');
SQLQuery6.SQL.Add('clients.first_name as id_client, coming.title,  coming.cost, ');
SQLQuery6.SQL.Add('curency.curency as id_curency,  status.status as id_status, ');
SQLQuery6.SQL.Add('coming.pay_date FROM  coming ');
SQLQuery6.SQL.Add('INNER JOIN projects ON (coming.id_project = projects.id) ');
SQLQuery6.SQL.Add('INNER JOIN clients ON (coming.id_client = clients.id) ');
SQLQuery6.SQL.Add('INNER JOIN curency ON (coming.id_curency = curency.id) ');
SQLQuery6.SQL.Add('INNER JOIN status ON (coming.id_status = status.id)');
//////////////////////////////////
if ComboBox13.Text <> '' then
begin
SQLQuery6.SQL.Add('WHERE coming.id_client = :id_client');
SQLQuery6.Params.ParamByName('id_client').Value := first_name;
end;
if (ComboBox14.Text <> '') then
begin
SQLQuery6.SQL.Add('and coming.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery6.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery6.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
if ComboBox15.Text <> '' then
begin
SQLQuery6.SQL.Add('and coming.id_curency = :id_curency ');
SQLQuery6.Params.ParamByName('id_curency').Value := curency_id;
end;
if ComboBox16.Text <> '' then
begin
SQLQuery6.SQL.Add('and coming.id_status = :id_status ');
SQLQuery6.Params.ParamByName('id_status').Value := status_id;
end;
SQLQuery6.ExecSQL();
ClientDataSet6.Active := True;
end;

procedure TForm2.ComboBox13Click(Sender: TObject);
begin
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT id FROM db.clients WHERE clients.first_name = :first_name');
SQLQuery7.Params.ParamByName('first_name').Value :=  ComboBox13.Text;
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
first_name := strtoint(DataSource7.DataSet.FieldByName('id').Value);
end;

procedure TForm2.ComboBox14Change(Sender: TObject);
begin
ClientDataSet6.Active := False;
SQLQuery6.SQL.Clear;
SQLQuery6.SQL.Add('SELECT coming.id, projects.name as id_project, ');
SQLQuery6.SQL.Add('clients.first_name as id_client, coming.title,  coming.cost, ');
SQLQuery6.SQL.Add('curency.curency as id_curency,  status.status as id_status, ');
SQLQuery6.SQL.Add('coming.pay_date FROM  coming ');
SQLQuery6.SQL.Add('INNER JOIN projects ON (coming.id_project = projects.id) ');
SQLQuery6.SQL.Add('INNER JOIN clients ON (coming.id_client = clients.id) ');
SQLQuery6.SQL.Add('INNER JOIN curency ON (coming.id_curency = curency.id) ');
SQLQuery6.SQL.Add('INNER JOIN status ON (coming.id_status = status.id)');
//////////////////////////////////
if (ComboBox14.Text <> '') then
begin
SQLQuery6.SQL.Add('WHERE coming.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery6.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery6.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
if ComboBox13.Text <> '' then
begin
SQLQuery6.SQL.Add('and coming.id_client = :id_client');
SQLQuery6.Params.ParamByName('id_client').Value := first_name;
end;
if ComboBox15.Text <> '' then
begin
SQLQuery6.SQL.Add('and coming.id_curency = :id_curency ');
SQLQuery6.Params.ParamByName('id_curency').Value := curency_id;
end;
if ComboBox16.Text <> '' then
begin
SQLQuery6.SQL.Add('and coming.id_status = :id_status ');
SQLQuery6.Params.ParamByName('id_status').Value := status_id;
end;
SQLQuery6.ExecSQL();
ClientDataSet6.Active := True;
end;

procedure TForm2.ComboBox14Click(Sender: TObject);
begin
if ComboBox14.ItemIndex = 0 then
begin
proj_cost_1 := 0;
proj_cost_2 := 1000;
end
else if ComboBox14.ItemIndex = 1 then
begin
proj_cost_1 := 1000;
proj_cost_2 := 4000;
end
else if ComboBox14.ItemIndex = 2 then
begin
proj_cost_1 := 4000;
proj_cost_2 := 8000;
end
else if ComboBox14.ItemIndex = 3 then
begin
proj_cost_1 := 8000;
proj_cost_2 := 9999999;
end
end;

procedure TForm2.ComboBox15Change(Sender: TObject);
begin
ClientDataSet6.Active := False;
SQLQuery6.SQL.Clear;
SQLQuery6.SQL.Add('SELECT coming.id, projects.name as id_project, ');
SQLQuery6.SQL.Add('clients.first_name as id_client, coming.title,  coming.cost, ');
SQLQuery6.SQL.Add('curency.curency as id_curency,  status.status as id_status, ');
SQLQuery6.SQL.Add('coming.pay_date FROM  coming ');
SQLQuery6.SQL.Add('INNER JOIN projects ON (coming.id_project = projects.id) ');
SQLQuery6.SQL.Add('INNER JOIN clients ON (coming.id_client = clients.id) ');
SQLQuery6.SQL.Add('INNER JOIN curency ON (coming.id_curency = curency.id) ');
SQLQuery6.SQL.Add('INNER JOIN status ON (coming.id_status = status.id)');
//////////////////////////////////
if ComboBox15.Text <> '' then
begin
SQLQuery6.SQL.Add('WHERE coming.id_curency = :id_curency ');
SQLQuery6.Params.ParamByName('id_curency').Value := curency_id;
end;
if (ComboBox14.Text <> '') then
begin
SQLQuery6.SQL.Add('and coming.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery6.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery6.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
if ComboBox13.Text <> '' then
begin
SQLQuery6.SQL.Add('and coming.id_client = :id_client');
SQLQuery6.Params.ParamByName('id_client').Value := first_name;
end;
if ComboBox16.Text <> '' then
begin
SQLQuery6.SQL.Add('and coming.id_status = :id_status ');
SQLQuery6.Params.ParamByName('id_status').Value := status_id;
end;
SQLQuery6.ExecSQL();
ClientDataSet6.Active := True;
end;

procedure TForm2.ComboBox15Click(Sender: TObject);
begin
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT id FROM db.curency WHERE curency.curency = :curency');
SQLQuery7.Params.ParamByName('curency').Value :=  ComboBox15.Text;
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
curency_id := strtoint(DataSource7.DataSet.FieldByName('id').Value);
end;

procedure TForm2.ComboBox16Change(Sender: TObject);
begin
ClientDataSet6.Active := False;
SQLQuery6.SQL.Clear;
SQLQuery6.SQL.Add('SELECT coming.id, projects.name as id_project, ');
SQLQuery6.SQL.Add('clients.first_name as id_client, coming.title,  coming.cost, ');
SQLQuery6.SQL.Add('curency.curency as id_curency,  status.status as id_status, ');
SQLQuery6.SQL.Add('coming.pay_date FROM  coming ');
SQLQuery6.SQL.Add('INNER JOIN projects ON (coming.id_project = projects.id) ');
SQLQuery6.SQL.Add('INNER JOIN clients ON (coming.id_client = clients.id) ');
SQLQuery6.SQL.Add('INNER JOIN curency ON (coming.id_curency = curency.id) ');
SQLQuery6.SQL.Add('INNER JOIN status ON (coming.id_status = status.id)');
//////////////////////////////////
if ComboBox16.Text <> '' then
begin
SQLQuery6.SQL.Add('WHERE coming.id_status = :id_status ');
SQLQuery6.Params.ParamByName('id_status').Value := status_id;
end;
if ComboBox15.Text <> '' then
begin
SQLQuery6.SQL.Add('and coming.id_curency = :id_curency ');
SQLQuery6.Params.ParamByName('id_curency').Value := curency_id;
end;
if (ComboBox14.Text <> '') then
begin
SQLQuery6.SQL.Add('and coming.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery6.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery6.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
if ComboBox13.Text <> '' then
begin
SQLQuery6.SQL.Add('and coming.id_client = :id_client');
SQLQuery6.Params.ParamByName('id_client').Value := first_name;
end;
SQLQuery6.ExecSQL();
ClientDataSet6.Active := True;
end;

procedure TForm2.ComboBox16Click(Sender: TObject);
begin
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT id FROM db.status WHERE status.status = :status');
SQLQuery7.Params.ParamByName('status').Value :=  ComboBox16.Text;
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
status_id := strtoint(DataSource7.DataSet.FieldByName('id').Value);
end;

procedure TForm2.ComboBox17Change(Sender: TObject);
begin
ClientDataSet5.Active := False;
SQLQuery5.SQL.Clear;
SQLQuery5.SQL.Add('SELECT costs.id,  costs.title,  costs.cost, ');
SQLQuery5.SQL.Add('status.status as status_id, type_costs.type_costs as type_cost_id, ');
SQLQuery5.SQL.Add('costs.date_cost, type_costs.kind AS kind FROM  costs ');
SQLQuery5.SQL.Add('INNER JOIN type_costs ON (costs.type_cost_id = type_costs.id) ');
SQLQuery5.SQL.Add('INNER JOIN status ON (costs.status_id = status.id) ');
//////////////////////////////////
if ComboBox17.Text <> '' then
begin
SQLQuery5.SQL.Add('WHERE costs.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery5.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery5.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
if (ComboBox18.Text <> '') then
begin
SQLQuery5.SQL.Add('and costs.type_cost_id = :type_cost_id');
SQLQuery5.Params.ParamByName('type_cost_id').Value := type_cost_id;
end;
if ComboBox19.Text <> '' then
begin
SQLQuery5.SQL.Add('and kind = :kind ');
SQLQuery5.Params.ParamByName('kind').Value := kind;
end;
SQLQuery5.ExecSQL();
ClientDataSet5.Active := True;
end;

procedure TForm2.ComboBox17Click(Sender: TObject);
begin
if ComboBox17.ItemIndex = 0 then
begin
proj_cost_1 := 0;
proj_cost_2 := 1000;
end
else if ComboBox17.ItemIndex = 1 then
begin
proj_cost_1 := 1000;
proj_cost_2 := 4000;
end
else if ComboBox17.ItemIndex = 2 then
begin
proj_cost_1 := 4000;
proj_cost_2 := 8000;
end
else if ComboBox17.ItemIndex = 3 then
begin
proj_cost_1 := 8000;
proj_cost_2 := 9999999;
end
end;

procedure TForm2.ComboBox18Change(Sender: TObject);
begin
ClientDataSet5.Active := False;
SQLQuery5.SQL.Clear;
SQLQuery5.SQL.Add('SELECT costs.id,  costs.title,  costs.cost, ');
SQLQuery5.SQL.Add('status.status as status_id, type_costs.type_costs as type_cost_id, ');
SQLQuery5.SQL.Add('costs.date_cost, type_costs.kind AS kind FROM  costs ');
SQLQuery5.SQL.Add('INNER JOIN type_costs ON (costs.type_cost_id = type_costs.id) ');
SQLQuery5.SQL.Add('INNER JOIN status ON (costs.status_id = status.id) ');
//////////////////////////////////
if (ComboBox18.Text <> '') then
begin
SQLQuery5.SQL.Add('WHERE costs.type_cost_id = :type_cost_id');
SQLQuery5.Params.ParamByName('type_cost_id').Value := type_cost_id;
end;
if ComboBox17.Text <> '' then
begin
SQLQuery5.SQL.Add('and costs.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery5.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery5.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
if ComboBox19.Text <> '' then
begin
SQLQuery5.SQL.Add('and kind = :kind ');
SQLQuery5.Params.ParamByName('kind').Value := kind;
end;
SQLQuery5.ExecSQL();
ClientDataSet5.Active := True;
end;

procedure TForm2.ComboBox18Click(Sender: TObject);
begin
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT id FROM db.type_costs WHERE type_costs = :type_costs');
SQLQuery7.Params.ParamByName('type_costs').Value :=  ComboBox18.Text;
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
type_cost_id := strtoint(DataSource7.DataSet.FieldByName('id').Value);
end;

procedure TForm2.ComboBox19Change(Sender: TObject);
begin
ClientDataSet5.Active := False;
SQLQuery5.SQL.Clear;
SQLQuery5.SQL.Add('SELECT costs.id,  costs.title,  costs.cost, ');
SQLQuery5.SQL.Add('status.status as status_id, type_costs.type_costs as type_cost_id, ');
SQLQuery5.SQL.Add('costs.date_cost, type_costs.kind AS kind FROM  costs ');
SQLQuery5.SQL.Add('INNER JOIN type_costs ON (costs.type_cost_id = type_costs.id) ');
SQLQuery5.SQL.Add('INNER JOIN status ON (costs.status_id = status.id) ');
//////////////////////////////////
if ComboBox19.Text <> '' then
begin
SQLQuery5.SQL.Add('WHERE kind = :kind ');
SQLQuery5.Params.ParamByName('kind').Value := kind;
end;
if (ComboBox18.Text <> '') then
begin
SQLQuery5.SQL.Add('and costs.type_cost_id = :type_cost_id');
SQLQuery5.Params.ParamByName('type_cost_id').Value := type_cost_id;
end;
if ComboBox17.Text <> '' then
begin
SQLQuery5.SQL.Add('and costs.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery5.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery5.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
SQLQuery5.ExecSQL();
ClientDataSet5.Active := True;
end;

procedure TForm2.ComboBox19Click(Sender: TObject);
begin
if ComboBox19.ItemIndex = 0 then
kind := 0
else if ComboBox19.ItemIndex = 1 then
kind := 1;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
ClientDataSet1.Active := False;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('SELECT clients.id, clients.first_name,clients.last_name');
SQLQuery1.SQL.Add(',clients.middle_name,clients.birth_date,');
SQLQuery1.SQL.Add('clients.mobile_tel,clients.home_tel,clients.skype, ');
SQLQuery1.SQL.Add('clients.e_mail,clients.city,clients.adresa, ');
SQLQuery1.SQL.Add(' clients.add_date, users.login as add_user_name FROM ');
SQLQuery1.SQL.Add('clients INNER JOIN users ON (clients.add_user_id = users.id) ');
//////////////////////////////////
if (ComboBox1.Text <> '') then
begin
SQLQuery1.SQL.Add('WHERE clients.first_name = :first_name ');
SQLQuery1.Params.ParamByName('first_name').Value := ComboBox1.Text;
if ComboBox2.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.last_name = :last_name ');
SQLQuery1.Params.ParamByName('last_name').Value := ComboBox2.Text;
end;
if ComboBox3.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.middle_name = :middle_name');
SQLQuery1.Params.ParamByName('middle_name').Value := ComboBox3.Text;
end;
if ComboBox4.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.add_user_id = :add_user_id ');
SQLQuery1.Params.ParamByName('add_user_id').Value := login_id;
end;
end;
SQLQuery1.ExecSQL();
ClientDataSet1.Active := True;
end;

procedure TForm2.ComboBox20Change(Sender: TObject);
begin
ClientDataSet8.Active := False;
SQLQuery8.SQL.Clear;
SQLQuery8.SQL.Add('SELECT * FROM wage');
//
if (ComboBox20.Text <> '') then
begin
SQLQuery8.SQL.Add('WHERE user_first_name = :user_first_name ');
SQLQuery8.Params.ParamByName('user_first_name').Value := ComboBox20.Text;
if ComboBox21.Text <> '' then
begin
SQLQuery8.SQL.Add('and user_last_name = :user_last_name ');
SQLQuery8.Params.ParamByName('user_last_name').Value := ComboBox21.Text;
end;
end;
SQLQuery8.ExecSQL();
ClientDataSet8.Active := True;
end;

procedure TForm2.ComboBox21Change(Sender: TObject);
begin
ClientDataSet8.Active := False;
SQLQuery8.SQL.Clear;
SQLQuery8.SQL.Add('SELECT * FROM wage');
//
if (ComboBox21.Text <> '') then
begin
SQLQuery8.SQL.Add('WHERE user_last_name = :user_last_name ');
SQLQuery8.Params.ParamByName('user_last_name').Value := ComboBox21.Text;
if ComboBox20.Text <> '' then
begin
SQLQuery8.SQL.Add('and user_first_name = :user_first_name ');
SQLQuery8.Params.ParamByName('user_first_name').Value := ComboBox20.Text;
end;
end;
SQLQuery8.ExecSQL();
ClientDataSet8.Active := True;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
begin
ClientDataSet1.Active := False;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('SELECT clients.id, clients.first_name,clients.last_name');
SQLQuery1.SQL.Add(',clients.middle_name,clients.birth_date,');
SQLQuery1.SQL.Add('clients.mobile_tel,clients.home_tel,clients.skype, ');
SQLQuery1.SQL.Add('clients.e_mail,clients.city,clients.adresa, ');
SQLQuery1.SQL.Add(' clients.add_date, users.login as add_user_name FROM ');
SQLQuery1.SQL.Add('clients INNER JOIN users ON (clients.add_user_id = users.id) ');
//////////////////////////////////
if (ComboBox2.Text <> '') then
begin
SQLQuery1.SQL.Add('WHERE clients.last_name = :last_name ');
SQLQuery1.Params.ParamByName('last_name').Value := ComboBox2.Text;
if ComboBox1.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.first_name = :first_name ');
SQLQuery1.Params.ParamByName('first_name').Value := ComboBox1.Text;
end;
if ComboBox3.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.middle_name = :middle_name ');
SQLQuery1.Params.ParamByName('middle_name').Value := ComboBox3.Text;
end;
if ComboBox4.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.add_user_id = :add_user_id ');
SQLQuery1.Params.ParamByName('add_user_id').Value := login_id;
end;
end;
SQLQuery1.ExecSQL();
ClientDataSet1.Active := True;
end;

procedure TForm2.ComboBox3Change(Sender: TObject);
begin
ClientDataSet1.Active := False;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('SELECT clients.id, clients.first_name,clients.last_name');
SQLQuery1.SQL.Add(',clients.middle_name,clients.birth_date,');
SQLQuery1.SQL.Add('clients.mobile_tel,clients.home_tel,clients.skype, ');
SQLQuery1.SQL.Add('clients.e_mail,clients.city,clients.adresa, ');
SQLQuery1.SQL.Add(' clients.add_date, users.login as add_user_name FROM ');
SQLQuery1.SQL.Add('clients INNER JOIN users ON (clients.add_user_id = users.id) ');
//////////////////////////////////
if (ComboBox3.Text <> '') then
begin
SQLQuery1.SQL.Add('WHERE clients.middle_name = :middle_name ');
SQLQuery1.Params.ParamByName('middle_name').Value := ComboBox3.Text;
if ComboBox1.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.first_name = :first_name ');
SQLQuery1.Params.ParamByName('first_name').Value := ComboBox1.Text;
end;
if ComboBox2.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.last_name = :last_name ');
SQLQuery1.Params.ParamByName('last_name').Value := ComboBox2.Text;
end;
if ComboBox4.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.add_user_id = :add_user_id ');
SQLQuery1.Params.ParamByName('add_user_id').Value := login_id;
end;
end;
SQLQuery1.ExecSQL();
ClientDataSet1.Active := True;
end;

procedure TForm2.ComboBox4Change(Sender: TObject);
begin
ClientDataSet1.Active := False;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('SELECT clients.id, clients.first_name,clients.last_name');
SQLQuery1.SQL.Add(',clients.middle_name,clients.birth_date,');
SQLQuery1.SQL.Add('clients.mobile_tel,clients.home_tel,clients.skype, ');
SQLQuery1.SQL.Add('clients.e_mail,clients.city,clients.adresa, ');
SQLQuery1.SQL.Add(' clients.add_date, users.login as add_user_name FROM ');
SQLQuery1.SQL.Add('clients INNER JOIN users ON (clients.add_user_id = users.id) ');
//////////////////////////////////
if (ComboBox4.Text <> '') then
begin
SQLQuery1.SQL.Add('WHERE clients.add_user_id = :add_user_id ');
SQLQuery1.Params.ParamByName('add_user_id').Value := login_id;
if ComboBox1.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.first_name = :first_name ');
SQLQuery1.Params.ParamByName('first_name').Value := ComboBox1.Text;
end;
if ComboBox2.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.last_name = :last_name ');
SQLQuery1.Params.ParamByName('last_name').Value := ComboBox2.Text;
end;
if ComboBox3.Text <> '' then
begin
SQLQuery1.SQL.Add('and clients.middle_name = :middle_name ');
SQLQuery1.Params.ParamByName('middle_name').Value := ComboBox3.Text;
end;
end;
SQLQuery1.ExecSQL();
ClientDataSet1.Active := True;
end;

procedure TForm2.ComboBox4Click(Sender: TObject);
begin
     SQLQuery7.Active := false;
     ClientDataSet7.Active := false;
     SQLQuery7.SQL.Clear;
     SQLQuery7.SQL.Add('SELECT id FROM db.users WHERE users.login = :login');
     SQLQuery7.Params.ParamByName('login').Value :=  ComboBox4.Text;
     SQLQuery7.Active := true;
     ClientDataSet7.Active := true;
     login_id := strtoint(DataSource7.DataSet.FieldByName('id').Value);
end;

procedure TForm2.ComboBox5Change(Sender: TObject);
begin
ClientDataSet3.Active := False;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add('SELECT * from db.users');
//////////////////////////////////
if (ComboBox5.Text <> '') then
begin
SQLQuery3.SQL.Add('WHERE users.first_name = :first_name ');
SQLQuery3.Params.ParamByName('first_name').Value := ComboBox5.Text;
end;
if ComboBox6.Text <> '' then
begin
SQLQuery3.SQL.Add('and users.last_name = :last_name ');
SQLQuery3.Params.ParamByName('last_name').Value := ComboBox6.Text;
end;
if ComboBox7.Text <> '' then
begin
SQLQuery3.SQL.Add('and users.active = :active');
SQLQuery3.Params.ParamByName('active').Value := active;
end;
if ComboBox8.Text <> '' then
begin
SQLQuery3.SQL.Add('and users.permission = :permission ');
SQLQuery3.Params.ParamByName('permission').Value := permission;
end;
SQLQuery3.ExecSQL();
ClientDataSet3.Active := True;
end;

procedure TForm2.ComboBox6Change(Sender: TObject);
begin
ClientDataSet3.Active := False;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add('SELECT * from db.users');
//////////////////////////////////
if ComboBox6.Text <> '' then
begin
SQLQuery3.SQL.Add('WHERE users.last_name = :last_name ');
SQLQuery3.Params.ParamByName('last_name').Value := ComboBox6.Text;
end;
if (ComboBox5.Text <> '') then
begin
SQLQuery3.SQL.Add('and users.first_name = :first_name ');
SQLQuery3.Params.ParamByName('first_name').Value := ComboBox5.Text;
end;
if ComboBox7.Text <> '' then
begin
SQLQuery3.SQL.Add('and users.active = :active');
SQLQuery3.Params.ParamByName('active').Value := active;
end;
if ComboBox8.Text <> '' then
begin
SQLQuery3.SQL.Add('and users.permission = :permission ');
SQLQuery3.Params.ParamByName('permission').Value := permission;
end;
SQLQuery3.ExecSQL();
ClientDataSet3.Active := True;
end;

procedure TForm2.ComboBox7Change(Sender: TObject);
begin
ClientDataSet3.Active := False;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add('SELECT * from db.users');
//////////////////////////////////
if ComboBox7.Text <> '' then
begin
SQLQuery3.SQL.Add('WHERE users.active = :active');
SQLQuery3.Params.ParamByName('active').Value := active;
end;
if ComboBox6.Text <> '' then
begin
SQLQuery3.SQL.Add('and users.last_name = :last_name ');
SQLQuery3.Params.ParamByName('last_name').Value := ComboBox6.Text;
end;
if (ComboBox5.Text <> '') then
begin
SQLQuery3.SQL.Add('and users.first_name = :first_name ');
SQLQuery3.Params.ParamByName('first_name').Value := ComboBox5.Text;
end;
if ComboBox8.Text <> '' then
begin
SQLQuery3.SQL.Add('and users.permission = :permission ');
SQLQuery3.Params.ParamByName('permission').Value := permission;
end;
SQLQuery3.ExecSQL();
ClientDataSet3.Active := True;
end;

procedure TForm2.ComboBox7Click(Sender: TObject);
begin
if ComboBox7.ItemIndex = 0 then
active := 1
else if ComboBox7.ItemIndex = 1 then
active := 0;
end;

procedure TForm2.ComboBox8Change(Sender: TObject);
begin
ClientDataSet3.Active := False;
SQLQuery3.SQL.Clear;
SQLQuery3.SQL.Add('SELECT * from db.users');
//////////////////////////////////
if ComboBox8.Text <> '' then
begin
SQLQuery3.SQL.Add('WHERE users.permission = :permission ');
SQLQuery3.Params.ParamByName('permission').Value := permission;
end;
if ComboBox7.Text <> '' then
begin
SQLQuery3.SQL.Add('and users.active = :active');
SQLQuery3.Params.ParamByName('active').Value := active;
end;
if ComboBox6.Text <> '' then
begin
SQLQuery3.SQL.Add('and users.last_name = :last_name ');
SQLQuery3.Params.ParamByName('last_name').Value := ComboBox6.Text;
end;
if (ComboBox5.Text <> '') then
begin
SQLQuery3.SQL.Add('and users.first_name = :first_name ');
SQLQuery3.Params.ParamByName('first_name').Value := ComboBox5.Text;
end;
SQLQuery3.ExecSQL();
ClientDataSet3.Active := True;
end;

procedure TForm2.ComboBox8Click(Sender: TObject);
begin
if ComboBox8.ItemIndex = 0 then
permission := 1
else if ComboBox8.ItemIndex = 1 then
permission := 0;
end;

procedure TForm2.ComboBox9Change(Sender: TObject);
begin
ClientDataSet2.Active := False;
SQLQuery2.SQL.Clear;
SQLQuery2.SQL.Add('SELECT projects.id, projects.name, projects.description, ');
SQLQuery2.SQL.Add('projects.creation_date, projects.cost, projects.deadline, projects.active,');
SQLQuery2.SQL.Add(' users.login as creator_id, clients.first_name as client_id ');
SQLQuery2.SQL.Add('FROM projects INNER JOIN users ON (projects.creator_id = users.id) ');
SQLQuery2.SQL.Add('INNER JOIN clients ON (projects.client_id = clients.id) ');
//////////////////////////////////
if ComboBox9.Text <> '' then
begin
SQLQuery2.SQL.Add('WHERE projects.cost BETWEEN :proj_cost_1 AND :proj_cost_2 ');
SQLQuery2.Params.ParamByName('proj_cost_1').Value := proj_cost_1;
SQLQuery2.Params.ParamByName('proj_cost_2').Value := proj_cost_2;
end;
if (ComboBox10.Text <> '') then
begin
SQLQuery2.SQL.Add('and projects.active = :active');
SQLQuery2.Params.ParamByName('active').Value := active;
if ComboBox11.Text <> '' then
begin
SQLQuery2.SQL.Add('and projects.client_id = :client_id ');
SQLQuery2.Params.ParamByName('client_id').Value := first_name;
end;
if ComboBox12.Text <> '' then
begin
SQLQuery2.SQL.Add('and projects.creator_id = :creator_id ');
SQLQuery2.Params.ParamByName('creator_id').Value := login_id;
end;
end;
SQLQuery2.ExecSQL();
ClientDataSet2.Active := True;
end;

procedure TForm2.ComboBox9Click(Sender: TObject);
begin
if ComboBox9.ItemIndex = 0 then
begin
proj_cost_1 := 0;
proj_cost_2 := 1000;
end
else if ComboBox9.ItemIndex = 1 then
begin
proj_cost_1 := 1000;
proj_cost_2 := 4000;
end
else if ComboBox9.ItemIndex = 2 then
begin
proj_cost_1 := 4000;
proj_cost_2 := 8000;
end
else if ComboBox9.ItemIndex = 3 then
begin
proj_cost_1 := 8000;
proj_cost_2 := 9999999;
end
end;

procedure TForm2.DateTimePicker2Change(Sender: TObject);
begin
ClientDataSet8.Active := False;
SQLQuery8.SQL.Clear;
SQLQuery8.SQL.Add('SELECT * FROM wage');
//
if (DateTimePicker2.Date <> Now) then
begin
SQLQuery8.SQL.Add('WHERE date_wage = :date_wage ');
SQLQuery8.Params.ParamByName('date_wage').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker2.Date);;
end;
if (ComboBox21.Text <> '') then
begin
SQLQuery8.SQL.Add('and user_last_name = :user_last_name ');
SQLQuery8.Params.ParamByName('user_last_name').Value := ComboBox21.Text;
end;
if ComboBox20.Text <> '' then
begin
SQLQuery8.SQL.Add('and user_first_name = :user_first_name ');
SQLQuery8.Params.ParamByName('user_first_name').Value := ComboBox20.Text;
end;
SQLQuery8.ExecSQL();
ClientDataSet8.Active := True;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
try
id_clients_select := StrToInt(DBGrid1.DataSource.DataSet.FieldByName('id').Value);
Except
end;
end;

procedure TForm2.DBGrid2CellClick(Column: TColumn);
begin
try
id_projects_select := StrToInt(DBGrid2.DataSource.DataSet.FieldByName('id').Value);
Except
end;
end;

procedure TForm2.DBGrid3CellClick(Column: TColumn);
begin
try
id_user_select := StrToInt(DBGrid3.DataSource.DataSet.FieldByName('id').Value);
Except
end;
end;

procedure TForm2.DBGrid4CellClick(Column: TColumn);
begin
try
id_type_costs_select := StrToInt(DBGrid4.DataSource.DataSet.FieldByName('id').Value);
Except
end;
end;

procedure TForm2.DBGrid5CellClick(Column: TColumn);
begin
try
id_costs_select := StrToInt(DBGrid5.DataSource.DataSet.FieldByName('id').Value);
Except
end;
end;

procedure TForm2.DBGrid6CellClick(Column: TColumn);
begin
try
id_coming_select := StrToInt(DBGrid6.DataSource.DataSet.FieldByName('id').Value);
Except
end;
end;

procedure TForm2.DBGrid7CellClick(Column: TColumn);
begin
try
id_wage_select := StrToInt(DBGrid7.DataSource.DataSet.FieldByName('id').Value);
Except
end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Close;
end;

procedure TForm2.Help1Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', PChar('HELP.chm'), nil, nil, SW_SHOWNORMAL);
end;

procedure DBGrid_column_width(DBGrid :TDBGrid; defborder :integer);
var
temp, n :integer;
lmax: array [0..30] of integer;
begin
with DBGrid do
begin
canvas.font := font;
for n := 0 to columns.count - 1 do
//if columns[n].visible then
lmax[n] := canvas.textwidth(fields[n].fieldname) + defborder;
DBGrid.DataSource.dataset.first;
while not DBGrid.datasource.dataset.eof do
begin
for n := 0 to columns.count - 1 do
begin
//if columns[n].visible then begin
temp := canvas.textwidth(trim(columns[n].field.displaytext)) + defborder;
if temp > lmax[n] then lmax[n] := temp;
end;
DBGrid.datasource.dataset.next;
end;
DBGrid.datasource.dataset.first;
for n := 0 to columns.count - 1 do
if lmax[n] > 0 then
columns[n].width := lmax[n];
end;
end;

procedure TForm2.N2Click(Sender: TObject);
begin
form2.Hide;
form1.Edit1.Text := '';
Form1.MaskEdit1.Text := '';
form1.Show;
end;

procedure TForm2.N4Click(Sender: TObject);
begin
Form1.Close;
Form2.Close;
Form3.Close;
Form4.Close;
end;

procedure TForm2.N5Click(Sender: TObject);
begin
Form9.Show;
end;

procedure TForm2.N7Click(Sender: TObject);
begin
frxReport1.LoadFromFile('Water_Report.fr3');
frxReport1.PrepareReport();
frxReport1.ShowPreparedReport;
end;

procedure TForm2.N8Click(Sender: TObject);
begin
frxReport1.LoadFromFile('Electricity_Report.fr3');
frxReport1.PrepareReport();
frxReport1.ShowPreparedReport;
end;

procedure TForm2.TabSheet1Show(Sender: TObject);
var
col_name1, col_name2, col_name3, col_name4, sql1, sql2, sql3, sql4: string;
begin
sql1 := 'select first_name from db.clients group by first_name';
sql2 := 'select last_name from db.clients group by last_name';
sql3 := 'select middle_name from db.clients group by middle_name';
sql4 := 'select login from db.users where permission = 1 group by login';
col_name1 := 'first_name';
col_name2 := 'last_name';
col_name3 := 'middle_name';
col_name4 := 'login';

with Form2 do
begin
with SQLQuery7 do
begin
  begin
     ComboBox1.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql1);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox1.Items.Add(DataSource7.DataSet.FieldByName(col_name1).AsString);
     DataSource7.DataSet.Next;
     end;
end;
  begin
     ComboBox2.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql2);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox2.Items.Add(DataSource7.DataSet.FieldByName(col_name2).AsString);
     DataSource7.DataSet.Next;
     end;
end;
  begin
     ComboBox3.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql3);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox3.Items.Add(DataSource7.DataSet.FieldByName(col_name3).AsString);
     DataSource7.DataSet.Next;
     end;
end;
  begin
     ComboBox4.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql4);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox4.Items.Add(DataSource7.DataSet.FieldByName(col_name4).AsString);
     DataSource7.DataSet.Next;
     end;
end;
end;
end;
DBGrid_column_width(DBGrid1, 25);
DBGrid1.Columns[4].Width:= 120;
DBGrid1.Columns[5].Width:= 100;
DBGrid1.Columns[6].Width:= 80;
DBGrid1CellClick(DBGrid1.Columns[0]);
end;

procedure TForm2.TabSheet2Show(Sender: TObject);
var
col_name3, col_name4, sql3, sql4: string;
begin
sql3 := 'select first_name from db.clients group by first_name';
sql4 := 'select login from db.users where permission = 1 group by login';
col_name3 := 'first_name';
col_name4 := 'login';
with Form2 do
begin
with SQLQuery7 do
begin
  begin
     ComboBox11.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql3);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox11.Items.Add(DataSource7.DataSet.FieldByName(col_name3).AsString);
     DataSource7.DataSet.Next;
     end;
end;
  begin
     ComboBox12.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql4);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox12.Items.Add(DataSource7.DataSet.FieldByName(col_name4).AsString);
     DataSource7.DataSet.Next;
     end;
end;
end;
end;
DBGrid_column_width(DBGrid2, 25);
DBGrid2.Columns[3].Width:= 110;
DBGrid2.Columns[4].Width:= 60;
DBGrid2.Columns[5].Width:= 110;
DBGrid2CellClick(DBGrid2.Columns[0]);
end;

procedure TForm2.TabSheet3Show(Sender: TObject);
var
col_name1, col_name2, sql1, sql2: string;
begin
sql1 := 'select first_name from db.users group by first_name';
sql2 := 'select last_name from db.users group by last_name';
col_name1 := 'first_name';
col_name2 := 'last_name';
with Form2 do
begin
with SQLQuery7 do
begin
  begin
     ComboBox5.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql1);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox5.Items.Add(DataSource7.DataSet.FieldByName(col_name1).AsString);
     DataSource7.DataSet.Next;
     end;
  end;
 begin
     ComboBox6.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql2);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox6.Items.Add(DataSource7.DataSet.FieldByName(col_name2).AsString);
     DataSource7.DataSet.Next;
     end;
  end;
end;
end;
DBGrid_column_width(DBGrid3, 25);
DBGrid3.Columns[6].Width:= 80;
DBGrid3.Columns[7].Width:= 80;
DBGrid3CellClick(DBGrid3.Columns[0]);
end;

procedure TForm2.TabSheet4Show(Sender: TObject);
var
col_name1, col_name3, col_name4, sql1, sql3, sql4: string;
begin
sql1 := 'select clients.first_name from db.clients group by first_name';
sql3 := 'select curency.curency from db.curency';
sql4 := 'select status.status from db.status';
col_name1 := 'first_name';
col_name3 := 'curency';
col_name4 := 'status';
with Form2 do
begin
with SQLQuery7 do
begin
  begin
     ComboBox13.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql1);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox13.Items.Add(DataSource7.DataSet.FieldByName(col_name1).AsString);
     DataSource7.DataSet.Next;
     end;
end;
  begin
     ComboBox15.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql3);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox15.Items.Add(DataSource7.DataSet.FieldByName(col_name3).AsString);
     DataSource7.DataSet.Next;
     end;
end;
  begin
     ComboBox16.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql4);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox16.Items.Add(DataSource7.DataSet.FieldByName(col_name4).AsString);
     DataSource7.DataSet.Next;
     end;
end;
end;
end;
DBGrid6CellClick(DBGrid6.Columns[0]);
DBGrid_column_width(DBGrid6, 25);
end;

procedure TForm2.TabSheet5Show(Sender: TObject);
var client_count, project_count, act_proj, noact_proj, sum_rate :integer;
all_coming, month_coming, USD, EUR, RUB, grn, regular_costs,
not_regular_costs :double;
last_month, last_year :integer;
day, month, year, date_last : string;
begin
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT count(id) as clients_count FROM db.clients ');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
client_count := strtoint(DataSource7.DataSet.FieldByName('clients_count').Value);
Label1.Caption:= 'Кількість клієнтів:    ' + inttostr(client_count);
///////////////////////////////////////
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT count(id) as project_count FROM db.projects ');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
project_count := strtoint(DataSource7.DataSet.FieldByName('project_count').Value);
Label2.Caption:= 'Кількість проектів:  ' + inttostr(project_count);
///////////////////////////////////////
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT count(id) as act_proj FROM db.projects ');
SQLQuery7.SQL.Add('where projects.active = 1 ');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
act_proj := strtoint(DataSource7.DataSet.FieldByName('act_proj').Value);
Label3.Caption:= 'Активних:      ' + inttostr(act_proj);
///////////////////////////////////////
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT count(id) as noact_proj FROM db.projects ');
SQLQuery7.SQL.Add('where projects.active = 0 ');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
noact_proj := strtoint(DataSource7.DataSet.FieldByName('noact_proj').Value);
Label4.Caption:= 'Неактивних:    ' + inttostr(noact_proj);
//------Курс валют-----
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT USD, EUR, RUB FROM db.curency_rate where id = 1');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
USD_or := DataSource7.DataSet.FieldByName('USD').AsFloat;
EUR_or := DataSource7.DataSet.FieldByName('EUR').AsFloat;
RUB_or := DataSource7.DataSet.FieldByName('RUB').AsFloat;
//-----Загальний прихід коштів--------
// USD
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT sum(cost) as USD FROM db.coming ');
SQLQuery7.SQL.Add('where coming.id_curency = 2 ');
SQLQuery7.SQL.Add('and coming.id_status between 1 and 2 ');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
USD := DataSource7.DataSet.FieldByName('USD').AsFloat;
// EUR
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT sum(cost) as EUR FROM db.coming ');
SQLQuery7.SQL.Add('where coming.id_curency = 3 ');
SQLQuery7.SQL.Add('and coming.id_status between 1 and 2 ');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
EUR := DataSource7.DataSet.FieldByName('EUR').AsFloat;
// RUB
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT sum(cost) as RUB FROM db.coming ');
SQLQuery7.SQL.Add('where coming.id_curency = 4 ');
SQLQuery7.SQL.Add('and coming.id_status between 1 and 2 ');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
RUB := DataSource7.DataSet.FieldByName('RUB').AsFloat;
// grn
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT sum(cost) as grn FROM db.coming ');
SQLQuery7.SQL.Add('where coming.id_curency = 1 ');
SQLQuery7.SQL.Add('and coming.id_status between 1 and 2 ');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
grn := DataSource7.DataSet.FieldByName('grn').AsFloat;
//---------------
try
begin
all_coming := USD*USD_or + EUR*EUR_or + RUB*RUB_or + grn;
Label5.Caption:= 'Загальний прихід коштів: ' +
FloatToStrF(all_coming, ffFixed, 10, 2) + ' грн.';
end;
Except
Label5.Caption:= 'Загальний прихід коштів: 0 грн.';
end;
//--Прихід коштів за місяць----
DateTimePicker1.Date := Now;
day := IntToStr(20);
month := FormatDateTime('mm', Now);
year := FormatDateTime('yyyy', Now);
date_now := day+'.'+month+'.'+year;
last_month := strtoint(month)-1;
if last_month = 0 then
begin
last_month := 12;
last_year := strtoint(year)-1;
date_last := day+'.'+inttostr(last_month)+'.'+inttostr(last_year);
end
else
date_last := day+'.'+inttostr(last_month)+'.'+year;
// USD
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT sum(cost) as USD FROM db.coming ');
SQLQuery7.SQL.Add('where coming.id_curency = 2 ');
SQLQuery7.SQL.Add('and coming.id_status between 1 and 2 ');
SQLQuery7.SQL.Add('and coming.pay_date BETWEEN :date_last AND :date_now');
date := StrToDate(date_last);
DateTimePicker1.Date := date;
SQLQuery7.Params.ParamByName('date_last').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
date := StrToDate(date_now);
DateTimePicker1.Date := date;
SQLQuery7.Params.ParamByName('date_now').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
USD := DataSource7.DataSet.FieldByName('USD').AsFloat;
// EUR
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT sum(cost) as EUR FROM db.coming ');
SQLQuery7.SQL.Add('where coming.id_curency = 3 ');
SQLQuery7.SQL.Add('and coming.id_status between 1 and 2 ');
SQLQuery7.SQL.Add('and coming.pay_date BETWEEN :date_last AND :date_now');
date := StrToDate(date_last);
DateTimePicker1.Date := date;
SQLQuery7.Params.ParamByName('date_last').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
date := StrToDate(date_now);
DateTimePicker1.Date := date;
SQLQuery7.Params.ParamByName('date_now').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
EUR := DataSource7.DataSet.FieldByName('EUR').AsFloat;
// RUB
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT sum(cost) as RUB FROM db.coming ');
SQLQuery7.SQL.Add('where coming.id_curency = 4 ');
SQLQuery7.SQL.Add('and coming.id_status between 1 and 2 ');
SQLQuery7.SQL.Add('and coming.pay_date BETWEEN :date_last AND :date_now');
date := StrToDate(date_last);
DateTimePicker1.Date := date;
SQLQuery7.Params.ParamByName('date_last').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
date := StrToDate(date_now);
DateTimePicker1.Date := date;
SQLQuery7.Params.ParamByName('date_now').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
RUB := DataSource7.DataSet.FieldByName('RUB').AsFloat;
// grn
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT sum(cost) as grn FROM db.coming ');
SQLQuery7.SQL.Add('where coming.id_curency = 1 ');
SQLQuery7.SQL.Add('and coming.id_status between 1 and 2 ');
SQLQuery7.SQL.Add('and coming.pay_date BETWEEN :date_last AND :date_now');
date := StrToDate(date_last);
DateTimePicker1.Date := date;
SQLQuery7.Params.ParamByName('date_last').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
date := StrToDate(date_now);
DateTimePicker1.Date := date;
SQLQuery7.Params.ParamByName('date_now').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
grn := DataSource7.DataSet.FieldByName('grn').AsFloat;
//---------------
try
begin
month_coming := USD*USD_or + EUR*EUR_or + RUB*RUB_or + grn;
Label6.Caption:= 'Прихід коштів за місяць:  ' +
FloatToStrF(month_coming, ffFixed, 10, 2) + ' грн.';
end;
Except
Label6.Caption:= 'Прихід коштів за місяць:  0 грн.';
end;
//-----регулярні витрати-----
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT SUM(cost) AS regular, type_costs.kind AS kind FROM db.costs ');
SQLQuery7.SQL.Add('INNER JOIN type_costs ON (costs.type_cost_id = type_costs.id) ');
SQLQuery7.SQL.Add('WHERE db.costs.status_id = 1 AND kind = 1');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
regular_costs := DataSource7.DataSet.FieldByName('regular').AsFloat;
Label27.Caption := 'Регулярні витрати - ' +
FloatToStrF(regular_costs, ffFixed, 10, 2) + ' грн.';
//-----витрати за місяць----
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT SUM(cost) AS not_regular, type_costs.kind AS kind FROM db.costs');
SQLQuery7.SQL.Add('INNER JOIN type_costs ON (costs.type_cost_id = type_costs.id)');
SQLQuery7.SQL.Add('WHERE db.costs.status_id = 1 AND kind =0 ');
SQLQuery7.SQL.Add('and costs.date_cost BETWEEN :date_last AND :date_now');
date := StrToDate(date_last);
DateTimePicker1.Date := date;
SQLQuery7.Params.ParamByName('date_last').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
date := StrToDate(date_now);
DateTimePicker1.Date := date;
SQLQuery7.Params.ParamByName('date_now').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
not_regular_costs := DataSource7.DataSet.FieldByName('not_regular').AsFloat;
Label28.Caption := 'Нерегулярні витрати за місяць - ' +
FloatToStrF(not_regular_costs, ffFixed, 10, 2) + ' грн.';
//-----сума ставок-----
SQLQuery7.Active := false;
ClientDataSet7.Active := false;
SQLQuery7.SQL.Clear;
SQLQuery7.SQL.Add('SELECT SUM(rate) AS rate FROM db.users ');
SQLQuery7.SQL.Add('WHERE rate > 0 and active = 1');
SQLQuery7.Active := true;
ClientDataSet7.Active := true;
sum_rate := DataSource7.DataSet.FieldByName('rate').AsInteger;
//-----прихід - витрати - сума ставок за місяць-----
residual := month_coming - regular_costs - not_regular_costs - sum_rate;
end;

procedure TForm2.TabSheet6Show(Sender: TObject);
begin
DBGrid_column_width(DBGrid4, 25);
DBGrid4CellClick(DBGrid4.Columns[0]);
end;

procedure TForm2.TabSheet7Show(Sender: TObject);
var
col_name1, sql1: string;
begin
sql1 := 'select type_costs.type_costs from db.type_costs group by type_costs';
col_name1 := 'type_costs';
with Form2 do
begin
with SQLQuery7 do
begin
  begin
     ComboBox18.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql1);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox18.Items.Add(DataSource7.DataSet.FieldByName(col_name1).AsString);
     DataSource7.DataSet.Next;
     end;
end;
end;
end;
DBGrid_column_width(DBGrid5, 25);
DBGrid5CellClick(DBGrid5.Columns[0]);
end;

procedure TForm2.TabSheet8Show(Sender: TObject);
var
col_name1, col_name2, sql1, sql2: string;
begin
sql1 := 'select user_first_name from db.wage group by user_first_name';
sql2 := 'select user_last_name from db.wage group by user_last_name';
col_name1 := 'user_first_name';
col_name2 := 'user_last_name';
with Form2 do
begin
with SQLQuery7 do
begin
  begin
     ComboBox20.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql1);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox20.Items.Add(DataSource7.DataSet.FieldByName(col_name1).AsString);
     DataSource7.DataSet.Next;
     end;
  end;
 begin
     ComboBox21.Items.Clear;
     Active := false;
     ClientDataSet7.Active := false;
     SQL.Clear;
     sql.Add(sql2);
     Active := true;
     ClientDataSet7.Active := true;
     while not DataSource7.DataSet.Eof do
     begin
     ComboBox21.Items.Add(DataSource7.DataSet.FieldByName(col_name2).AsString);
     DataSource7.DataSet.Next;
     end;
  end;
end;
end;
DateTimePicker2.Date := Now;
select_wage(Form2, ClientDataSet8, SQLQuery8);
DBGrid_column_width(DBGrid7, 25);
DBGrid7CellClick(DBGrid7.Columns[0]);
end;

end.

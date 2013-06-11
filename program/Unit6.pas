unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, FMTBcd, Provider, DB, SqlExpr, DBClient;

type
  TForm6 = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    project_id, client_id, curency_id, status_id :integer;
  end;

    procedure select_coming(Form :TForm; ClientdataSet :TClientDataSet;
              SQLQuery :TSQLQuery);
 
var
  Form6: TForm6;

implementation

uses Unit2, Unit1;

{$R *.dfm}

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

procedure TForm6.Button1Click(Sender: TObject);
begin
if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') and (ComboBox3.Text<>'') and
(ComboBox4.Text<>'') then
begin
with form2 do
begin
try
SQLQuery6.SQL.Clear;
SQLQuery6.SQL.Add('INSERT INTO db.coming (id_project, id_client, title, ');
SQLQuery6.SQL.Add('cost, id_curency, id_status, pay_date) ');
SQLQuery6.SQL.Add('values(:id_project, :id_client, :title, ');
SQLQuery6.SQL.Add(':cost, :id_curency, :id_status, :pay_date)');
SQLQuery6.Params.ParamByName('id_project').Value := form6.project_id;
SQLQuery6.Params.ParamByName('id_client').Value := form6.client_id;
SQLQuery6.Params.ParamByName('title').Value := Edit1.Text;
SQLQuery6.Params.ParamByName('cost').Value := StrToFloat(Edit2.Text);
SQLQuery6.Params.ParamByName('id_curency').Value := form6.curency_id;
SQLQuery6.Params.ParamByName('id_status').Value := form6.status_id;
SQLQuery6.Params.ParamByName('pay_date').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery6.ExecSQL();
select_coming(Form2,Form2.ClientDataSet6,Form2.SQLQuery6);
Except
MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
end;
end
else
MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') and (ComboBox3.Text<>'') and
(ComboBox4.Text<>'') then
begin
ComboBox1.OnClick(ComboBox1);
ComboBox2.OnClick(ComboBox2);
ComboBox3.OnClick(ComboBox3);
ComboBox4.OnClick(ComboBox4);
with form2 do
begin
try
SQLQuery6.SQL.Clear;
SQLQuery6.SQL.Add('UPDATE db.coming SET id_project = :id_project,  ');
SQLQuery6.SQL.Add('id_client = :id_client, title = :title, ');
SQLQuery6.SQL.Add('cost = :cost, id_curency = :id_curency, ');
SQLQuery6.SQL.Add('id_status = :id_status, pay_date = :pay_date ');
SQLQuery6.SQL.Add('WHERE id = :id ');  
SQLQuery6.Params.ParamByName('id_project').Value := form6.project_id;
SQLQuery6.Params.ParamByName('id_client').Value := form6.client_id;
SQLQuery6.Params.ParamByName('title').Value := Edit1.Text;
SQLQuery6.Params.ParamByName('cost').Value := StrToFloat(Edit2.Text);
SQLQuery6.Params.ParamByName('id_curency').Value := form6.curency_id;
SQLQuery6.Params.ParamByName('id_status').Value := form6.status_id;
SQLQuery6.Params.ParamByName('pay_date').Value := FormatDateTime('yyyy-mm-dd',
Form6.DateTimePicker1.Date);
SQLQuery6.Params.ParamByName('id').Value := id_coming_select;
SQLQuery6.ExecSQL();
select_coming(Form2,Form2.ClientDataSet6,Form2.SQLQuery6);
Form6.close;
Except
MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
end;
end
else
MessageDlg('1Неправильно заповнені поля',mtError,[mbOK],0);
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
Form6.close;
end;

procedure TForm6.ComboBox1Click(Sender: TObject);
begin
     SQLQuery1.Active := false;
     ClientDataSet1.Active := false;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Add('SELECT id FROM db.projects WHERE name = :name');
     SQLQuery1.Params.ParamByName('name').Value :=  ComboBox1.Text;
     SQLQuery1.Active := true;
     ClientDataSet1.Active := true;
     project_id := strtoint(DataSource1.DataSet.FieldByName('id').Value);
end;

procedure TForm6.ComboBox2Click(Sender: TObject);
begin
     SQLQuery1.Active := false;
     ClientDataSet1.Active := false;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Add('SELECT id FROM db.clients WHERE first_name = :first_name');
     SQLQuery1.Params.ParamByName('first_name').Value :=  ComboBox2.Text;
     SQLQuery1.Active := true;
     ClientDataSet1.Active := true;
     client_id := strtoint(DataSource1.DataSet.FieldByName('id').Value);
end;

procedure TForm6.ComboBox3Click(Sender: TObject);
begin
     SQLQuery1.Active := false;
     ClientDataSet1.Active := false;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Add('SELECT id FROM db.curency WHERE curency = :curency ');
     SQLQuery1.Params.ParamByName('curency').Value :=  ComboBox3.Text;
     SQLQuery1.Active := true;
     ClientDataSet1.Active := true;
     curency_id := strtoint(DataSource1.DataSet.FieldByName('id').Value);
end;

procedure TForm6.ComboBox4Click(Sender: TObject);
begin
     SQLQuery1.Active := false;
     ClientDataSet1.Active := false;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Add('SELECT id FROM db.status WHERE status = :status');
     SQLQuery1.Params.ParamByName('status').Value :=  ComboBox4.Text;
     SQLQuery1.Active := true;
     ClientDataSet1.Active := true;
     status_id := strtoint(DataSource1.DataSet.FieldByName('id').Value);
end;

procedure TForm6.FormShow(Sender: TObject);
var
col_name1, col_name2, col_name3, col_name4, sql1, sql2, sql3, sql4: string;
begin
sql1 := 'select projects.name from db.projects';
sql2 := 'select clients.first_name from db.clients group by first_name';
sql3 := 'select curency.curency from db.curency';
sql4 := 'select status.status from db.status';
col_name1 := 'name';
col_name2 := 'first_name';
col_name3 := 'curency';
col_name4 := 'status';

with Form6 do
begin
with SQLQuery1 do
begin
  begin
     ComboBox1.Items.Clear;
     Active := false;
     ClientDataSet1.Active := false;
     SQL.Clear;
     sql.Add(sql1);
     Active := true;
     ClientDataSet1.Active := true;
     while not DataSource1.DataSet.Eof do
     begin
     ComboBox1.Items.Add(DataSource1.DataSet.FieldByName(col_name1).AsString);
     DataSource1.DataSet.Next;
     end;
end;
  begin
     ComboBox2.Items.Clear;
     Active := false;
     ClientDataSet1.Active := false;
     SQL.Clear;
     sql.Add(sql2);
     Active := true;
     ClientDataSet1.Active := true;
     while not DataSource1.DataSet.Eof do
     begin
     ComboBox2.Items.Add(DataSource1.DataSet.FieldByName(col_name2).AsString);
     DataSource1.DataSet.Next;
     end;
end;
  begin
     ComboBox3.Items.Clear;
     Active := false;
     ClientDataSet1.Active := false;
     SQL.Clear;
     sql.Add(sql3);
     Active := true;
     ClientDataSet1.Active := true;
     while not DataSource1.DataSet.Eof do
     begin
     ComboBox3.Items.Add(DataSource1.DataSet.FieldByName(col_name3).AsString);
     DataSource1.DataSet.Next;
     end;
end;
  begin
     ComboBox4.Items.Clear;
     Active := false;
     ClientDataSet1.Active := false;
     SQL.Clear;
     sql.Add(sql4);
     Active := true;
     ClientDataSet1.Active := true;
     while not DataSource1.DataSet.Eof do
     begin
     ComboBox4.Items.Add(DataSource1.DataSet.FieldByName(col_name4).AsString);
     DataSource1.DataSet.Next;
     end;
end;
end;
end;
end;

end.

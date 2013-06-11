unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBClient, SqlExpr, FMTBcd, Provider, DB;

type
  TForm8 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    status_id, type_cost_id :integer;
  public
    { Public declarations }
  end;

  procedure select_costs(Form :TForm; ClientdataSet :TClientDataSet;
            SQLQuery :TSQLQuery);

var
  Form8: TForm8;

implementation

uses Unit2;

{$R *.dfm}

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

procedure TForm8.Button1Click(Sender: TObject);
begin
if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') then
begin
with form2 do
begin
try
SQLQuery5.SQL.Clear;
SQLQuery5.SQL.Add('INSERT INTO db.costs (title, cost, type_cost_id, ');
SQLQuery5.SQL.Add('status_id, date_cost) ');
SQLQuery5.SQL.Add('values(:title, :cost, :type_cost_id, ');
SQLQuery5.SQL.Add(':status_id, :date_cost) ');
SQLQuery5.Params.ParamByName('title').Value := Edit1.Text;
SQLQuery5.Params.ParamByName('cost').Value := StrToFloat(Edit2.Text);
SQLQuery5.Params.ParamByName('type_cost_id').Value := type_cost_id;
SQLQuery5.Params.ParamByName('status_id').Value := Form8.status_id;
SQLQuery5.Params.ParamByName('date_cost').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery5.ExecSQL();
select_costs(Form2,Form2.ClientDataSet5,Form2.SQLQuery5);
Except
MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
end;
end
else
MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
if (ComboBox1.Text<>'') and (ComboBox2.Text<>'') then
begin
ComboBox1.OnChange(ComboBox1);
ComboBox2.OnChange(ComboBox2);
with form2 do
begin
try
SQLQuery5.SQL.Clear;
SQLQuery5.SQL.Add('UPDATE db.costs SET title = :title, cost = :cost, ');
SQLQuery5.SQL.Add('type_cost_id = :type_cost_id, status_id = :status_id, ');
SQLQuery5.SQL.Add('date_cost = :date_cost WHERE id = :id');
SQLQuery5.Params.ParamByName('title').Value := Edit1.Text;
SQLQuery5.Params.ParamByName('cost').Value := StrToFloat(Edit2.Text);
SQLQuery5.Params.ParamByName('type_cost_id').Value := type_cost_id;
SQLQuery5.Params.ParamByName('status_id').Value := Form8.status_id;
SQLQuery5.Params.ParamByName('date_cost').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
SQLQuery5.Params.ParamByName('id').Value := id_costs_select;
SQLQuery5.ExecSQL();
select_costs(Form2,Form2.ClientDataSet5,Form2.SQLQuery5);
Except
MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
end;
Form8.close;
end
else
MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
Form8.Close;
end;

procedure TForm8.ComboBox1Change(Sender: TObject);
begin
SQLQuery1.Active := false;
ClientDataSet1.Active := false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('SELECT id FROM db.type_costs WHERE type_costs = :type_costs ');
SQLQuery1.Params.ParamByName('type_costs').Value :=  ComboBox1.Text;
SQLQuery1.Active := true;
ClientDataSet1.Active := true;
type_cost_id := strtoint(DataSource1.DataSet.FieldByName('id').Value);
end;

procedure TForm8.ComboBox2Change(Sender: TObject);
begin
SQLQuery1.Active := false;
ClientDataSet1.Active := false;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('SELECT id FROM db.status WHERE status = :status ');
SQLQuery1.Params.ParamByName('status').Value :=  ComboBox2.Text;
SQLQuery1.Active := true;
ClientDataSet1.Active := true;
status_id := strtoint(DataSource1.DataSet.FieldByName('id').Value);
end;

procedure TForm8.FormShow(Sender: TObject);
var
col_name1, sql1: string;
begin
sql1 := 'select type_costs from db.type_costs';
col_name1 := 'type_costs';

with Form8 do
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
end;
end;
end;

end.

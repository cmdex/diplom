unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SqlExpr, FMTBcd, DB, DBClient, Provider, ComCtrls, DBCtrls;

type
  TForm5 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button2: TButton;
    ComboBox2: TComboBox;
    Label7: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
    client_id, active :integer;
  end;

var
  Form5: TForm5;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
ComboBox1.Items.Clear;
try
Form2.SQLQuery1.SQL.Clear;
Form2.SQLQuery1.SQL.Add('INSERT INTO db.projects (name, description, creation_date, ');
Form2.SQLQuery1.SQL.Add(' cost, deadline, client_id, creator_id, active)');
Form2.SQLQuery1.SQL.Add(' values(:n, :d, :c_d, :c, :dl, :c_i, :cr_i, :a)');
ComboBox1Change(ComboBox1);
ComboBox2Click(ComboBox2);
Form2.SQLQuery1.Params.ParamByName('n').Value := Edit1.Text;
Form2.SQLQuery1.Params.ParamByName('d').Value := Memo1.Lines.Text;
Form2.SQLQuery1.Params.ParamByName('c_d').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
Form2.SQLQuery1.Params.ParamByName('c').Value := StrToFloat(Edit3.Text);
Form2.SQLQuery1.Params.ParamByName('dl').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker2.Date);
Form2.SQLQuery1.Params.ParamByName('c_i').Value := client_id;
Form2.SQLQuery1.Params.ParamByName('cr_i').Value := form1.id_user;
Form2.SQLQuery1.Params.ParamByName('a').Value := active;
Form2.SQLQuery1.ExecSQL();
Form5.Hide;
Except
 MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
select_projects(Form2, Form2.SQLQuery2);
Form2.ClientDataSet2.Refresh;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
try
Form2.SQLQuery1.SQL.Clear;
Form2.SQLQuery1.SQL.Add('UPDATE db.projects SET name = :n, description = :d, ');
Form2.SQLQuery1.SQL.Add('creation_date = :c_d, cost = :c, deadline = :d_l, ');
Form2.SQLQuery1.SQL.Add('client_id = :c_i, active = :a  WHERE id = :id');
ComboBox1Change(ComboBox1);
ComboBox2Click(ComboBox2);
Form2.SQLQuery1.Params.ParamByName('n').Value := Edit1.Text;
Form2.SQLQuery1.Params.ParamByName('d').Value := Memo1.Lines.Text;
Form2.SQLQuery1.Params.ParamByName('c_d').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
Form2.SQLQuery1.Params.ParamByName('c').Value := StrToFloat(Edit3.Text);
Form2.SQLQuery1.Params.ParamByName('d_l').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker2.Date);
Form2.SQLQuery1.Params.ParamByName('c_i').Value := client_id;
Form2.SQLQuery1.Params.ParamByName('a').Value := active;
Form2.SQLQuery1.Params.ParamByName('id').Value := Form2.id_projects_select;
Form2.SQLQuery1.ExecSQL();
Except
  MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
select_projects(Form2, Form2.SQLQuery2);
Form2.ClientDataSet2.Refresh;
Form5.Hide;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
Form5.Hide;
end;

procedure TForm5.ComboBox1Change(Sender: TObject);
begin
  with SQLQuery1 do
  begin
     SQLQuery1.Active := false;
     ClientDataSet1.Active := false;
     SQL.Clear;
     SQL.Add('SELECT id FROM db.clients WHERE first_name = :f_n');
     SQLQuery1.Params.ParamByName('f_n').Value :=  ComboBox1.Text;
     SQLQuery1.Active := true;
     ClientDataSet1.Active := true;
     client_id := strtoint(DataSource1.DataSet.FieldByName('id').Value);
end;
end;

procedure TForm5.ComboBox2Click(Sender: TObject);
begin
if ComboBox2.ItemIndex = 0 then
active := 1
else if ComboBox2.ItemIndex = 1 then
active := 0;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
ComboBox1.Items.Clear;
with SQLQuery1 do
begin
     Active := false;
     ClientDataSet1.Active := false;
     SQL.Clear;
     SQL.Add('SELECT id, first_name FROM db.clients group by first_name');
     Active := true;
     ClientDataSet1.Active := true;
     while not DataSource1.DataSet.Eof do
     begin
     ComboBox1.Items.Add(DataSource1.DataSet.FieldByName('first_name').AsString);
     DataSource1.DataSet.Next;
     end;
end;
if form2.form5_show = 0 then
begin
Form5.Button1.Visible := true;
Form5.Button2.Visible := false;
end
else if form2.form5_show = 1 then
begin
Form5.Button1.Visible := false;
Form5.Button2.Visible := true;
end
end;

end.

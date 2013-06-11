unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SqlExpr;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    kind :integer;
  public
    { Public declarations }
  end;

  procedure select_type_costs(Form :TForm; Query :TSQLQuery);

var
  Form7: TForm7;

implementation

uses Unit2;

{$R *.dfm}

procedure select_type_costs(Form :TForm; Query :TSQLQuery);
begin
with Form do
begin
Query.SQL.Clear;
Query.SQL.Add('SELECT * from db.type_costs');
Query.ExecSQL();
end;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
if ComboBox1.Text <> '' then
begin
ComboBox1.OnClick(ComboBox1);
try
Form2.SQLQuery4.SQL.Clear;
Form2.SQLQuery4.SQL.Add('INSERT INTO db.type_costs (type_costs, kind) ');
Form2.SQLQuery4.SQL.Add('values(:type_costs, :kind) ');
Form2.SQLQuery4.Params.ParamByName('type_costs').Value := Edit1.Text;
Form2.SQLQuery4.Params.ParamByName('kind').Value := kind;
Form2.SQLQuery4.ExecSQL();
select_type_costs(Form2, Form2.SQLQuery4);
Form2.ClientDataSet4.Refresh;
Except
MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
end;
Form7.Hide;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
if ComboBox1.Text <> '' then
begin
ComboBox1.OnClick(ComboBox1);
try
Form2.SQLQuery4.SQL.Clear;
Form2.SQLQuery4.SQL.Add('UPDATE db.type_costs SET type_costs = :type_costs, ');
Form2.SQLQuery4.SQL.Add('kind = :kind WHERE id = :id');
Form2.SQLQuery4.Params.ParamByName('type_costs').Value := Edit1.Text;
Form2.SQLQuery4.Params.ParamByName('kind').Value := kind;
Form2.SQLQuery4.Params.ParamByName('id').Value := Form2.id_type_costs_select;
Form2.SQLQuery4.ExecSQL();
select_type_costs(Form2, Form2.SQLQuery4);
Form2.ClientDataSet4.Refresh;
Form7.Hide;
Except
MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
end;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
Form7.Hide;
end;

procedure TForm7.ComboBox1Click(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
kind := 1
else if ComboBox1.ItemIndex = 1 then
     kind := 0;
end;

end.

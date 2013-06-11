unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, Calendar, SqlExpr, DBClient, FMTBcd, DB,
  Provider;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button3: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure select_clients(Form :TForm; Query :TSQLQuery);

var
  Form3: TForm3;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure select_clients(Form :TForm; Query :TSQLQuery);
begin
with Form do
Query.SQL.Clear;
Query.SQL.Add('SELECT clients.id, clients.first_name,clients.last_name, ');
Query.SQL.Add('clients.middle_name,clients.birth_date,');
Query.SQL.Add('clients.mobile_tel,clients.home_tel,clients.skype, ');
Query.SQL.Add('clients.e_mail,clients.city,clients.adresa, ');
Query.SQL.Add(' clients.add_date, users.login as add_user_name FROM ');
Query.SQL.Add('clients INNER JOIN users ON (clients.add_user_id = users.id)');
Query.ExecSQL();
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
try
Form2.SQLQuery1.SQL.Clear;
Form2.SQLQuery1.SQL.Add('INSERT INTO db.clients (first_name, last_name, middle_name');
Form2.SQLQuery1.SQL.Add(', birth_date, add_date, add_user_id, mobile_tel, ');
Form2.SQLQuery1.SQL.Add('home_tel, skype, e_mail, city, adresa) ');
Form2.SQLQuery1.SQL.Add(' values(:f_n, :l_n, :m_n, :b_d, :a_d, :a_u_i, ');
Form2.SQLQuery1.SQL.Add(':m_t, :h_t, :s, :e, :c, :a) ');
Form2.SQLQuery1.Params.ParamByName('f_n').Value := Edit1.Text;
Form2.SQLQuery1.Params.ParamByName('l_n').Value := Edit2.Text;
Form2.SQLQuery1.Params.ParamByName('m_n').Value := Edit3.Text;
Form2.SQLQuery1.Params.ParamByName('b_d').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
Form2.SQLQuery1.Params.ParamByName('a_d').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker2.Date);
Form2.SQLQuery1.Params.ParamByName('a_u_i').Value := form1.id_user;
Form2.SQLQuery1.Params.ParamByName('m_t').Value := Edit4.Text;
Form2.SQLQuery1.Params.ParamByName('h_t').Value := Edit5.Text;
Form2.SQLQuery1.Params.ParamByName('s').Value := Edit6.Text;
Form2.SQLQuery1.Params.ParamByName('e').Value := Edit7.Text;
Form2.SQLQuery1.Params.ParamByName('c').Value := Edit8.Text;
Form2.SQLQuery1.Params.ParamByName('a').Value := Edit9.Text;
Form2.SQLQuery1.ExecSQL();
select_clients(Form2, Form2.SQLQuery1);
Form2.ClientDataSet1.Refresh;
Except
  MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
try
Form2.SQLQuery1.SQL.Clear;
Form2.SQLQuery1.SQL.Add('UPDATE db.clients SET first_name = :f_n, last_name = :l_n, ');
Form2.SQLQuery1.SQL.Add('middle_name = :m_n, birth_date = :b_d, ');
Form2.SQLQuery1.SQL.Add('mobile_tel = :m_t, home_tel = :h_t, skype = :s, ');
Form2.SQLQuery1.SQL.Add('e_mail = :e, city = :c, adresa = :a, ');
Form2.SQLQuery1.SQL.Add('add_date = :a_d  WHERE id = :id');
Form2.SQLQuery1.Params.ParamByName('f_n').Value := Edit1.Text;
Form2.SQLQuery1.Params.ParamByName('l_n').Value := Edit2.Text;
Form2.SQLQuery1.Params.ParamByName('m_n').Value := Edit3.Text;
Form2.SQLQuery1.Params.ParamByName('b_d').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker1.Date);
Form2.SQLQuery1.Params.ParamByName('a_d').Value := FormatDateTime('yyyy-mm-dd',
DateTimePicker2.Date);
Form2.SQLQuery1.Params.ParamByName('id').Value := Form2.id_clients_select;
Form2.SQLQuery1.Params.ParamByName('m_t').Value := Edit4.Text;
Form2.SQLQuery1.Params.ParamByName('h_t').Value := Edit5.Text;
Form2.SQLQuery1.Params.ParamByName('s').Value := Edit6.Text;
Form2.SQLQuery1.Params.ParamByName('e').Value := Edit7.Text;
Form2.SQLQuery1.Params.ParamByName('c').Value := Edit8.Text;
Form2.SQLQuery1.Params.ParamByName('a').Value := Edit9.Text;
Form2.SQLQuery1.ExecSQL();
Except
  MessageDlg('Неправильно заповнені поля',mtError,[mbOK],0);
end;
select_clients(Form2, Form2.SQLQuery1);
Form2.ClientDataSet1.Refresh;
Form3.Close;
end;

end.

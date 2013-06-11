unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FMTBcd, Provider, DB, SqlExpr, DBClient;

type
  TForm9 = class(TForm)
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
try
ClientDataSet1.Active := False;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('UPDATE db.curency_rate SET USD = :USD, ');
SQLQuery1.SQL.Add('EUR = :EUR, RUB = :RUB where id = 1 ');
SQLQuery1.Params.ParamByName('USD').Value := StrToFloat(Edit2.Text);
SQLQuery1.Params.ParamByName('EUR').Value := StrToFloat(Edit3.Text);
SQLQuery1.Params.ParamByName('RUB').Value := StrToFloat(Edit4.Text);
SQLQuery1.ExecSQL();
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select * from db.curency_rate ');
SQLQuery1.ExecSQL();
ClientDataSet1.Active := True;
Form9.Hide;
Except
MessageDlg('¬вед≥ть дан≥ в формат≥ -> 0,00',mtError,[mbOK],0);
end;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
Form9.Hide;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
ClientDataSet1.Active := False;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select * from db.curency_rate');
SQLQuery1.ExecSQL();
ClientDataSet1.Active := True;
if  not DataSource1.DataSet.Eof then
begin
Edit2.Text := FloatToStrF(DataSource1.DataSet.FieldByName('USD').Value, ffFixed, 6, 4);
Edit3.Text := FloatToStrF(DataSource1.DataSet.FieldByName('EUR').Value, ffFixed, 6, 4);
Edit4.Text := FloatToStrF(DataSource1.DataSet.FieldByName('RUB').Value, ffFixed, 6, 4);
end else
begin
ClientDataSet1.Active := False;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('INSERT INTO db.curency_rate (id, USD, EUR, RUB) ');
SQLQuery1.SQL.Add('values(1, 0, 0, 0)');
SQLQuery1.ExecSQL();
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select * from db.curency_rate');
SQLQuery1.ExecSQL();
ClientDataSet1.Active := True;
Edit2.Text := FloatToStrF(DataSource1.DataSet.FieldByName('USD').Value, ffFixed, 6, 4);
Edit3.Text := FloatToStrF(DataSource1.DataSet.FieldByName('EUR').Value, ffFixed, 6, 4);
Edit4.Text := FloatToStrF(DataSource1.DataSet.FieldByName('RUB').Value, ffFixed, 6, 4);
end;
Form9.Show;
end;

end.

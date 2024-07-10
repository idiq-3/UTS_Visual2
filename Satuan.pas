unit Satuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    edt3: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('Nama Satuan Tidak Boleh Kosong!');
  end
  else if DataModule1.zqry1.Locate('nama', edt1.Text, []) then
  begin
    ShowMessage('Nama Satuan ' + edt1.Text + ' Sudah Ada Didalam Sistem');
  end
  else
  begin
    // Simpan data
    with DataModule1.zqry1 do
    begin
      SQL.Clear;
      SQL.Add('insert into satuan (nama, diskripsi) values (:nama, :diskripsi)');
      ParamByName('nama').AsString := edt1.Text;
      ParamByName('diskripsi').AsString := edt3.Text;
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil Disimpan!');
  end;
end;


procedure TForm1.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('Nama Satuan Tidak Boleh Kosong!');
  end
  else if not DataModule1.zqry1.Locate('nama', edt1.Text, []) then
  begin
    ShowMessage('Nama Satuan ' + edt1.Text + ' Tidak Ditemukan Dalam Sistem');
  end
  else
  begin
    // Update data
    with DataModule1.zqry1 do
    begin
      SQL.Clear;
      SQL.Add('update satuan set diskripsi = :diskripsi where nama = :nama');
      ParamByName('nama').AsString := edt1.Text;
      ParamByName('diskripsi').AsString := edt3.Text;
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil Diupdate!');
  end;
end;



procedure TForm1.btn3Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('Nama Satuan Tidak Boleh Kosong!');
  end
  else if not DataModule1.zqry1.Locate('nama', edt1.Text, []) then
  begin
    ShowMessage('Nama Satuan ' + edt1.Text + ' Tidak Ditemukan Dalam Sistem');
  end
  else
  begin
    // Delete data
    with DataModule1.zqry1 do
    begin
      SQL.Clear;
      SQL.Add('delete from satuan where nama = :nama');
      ParamByName('nama').AsString := edt1.Text;
      ExecSQL;
      SQL.Clear;
      SQL.Add('select * from satuan');
      Open;
    end;
    ShowMessage('Data Berhasil Dihapus!');
  end;
end;



procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule1.zqry1.FieldByName('nama').AsString;
  edt3.Text := DataModule1.zqry1.FieldByName('diskripsi').AsString;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  edt1.Text := '';
  edt3.Text := '';
end;

end.

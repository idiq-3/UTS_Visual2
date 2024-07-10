program fiture_satuan;

uses
  Forms,
  Satuan in 'Satuan.pas' {Form1},
  Unit1 in 'D:\KULIAH\smstr 4\visual2\UTS\Unit1.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

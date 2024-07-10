object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 150
  Width = 215
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\KULIAH\smstr 4\visual2\UTS\libmysql.dll'
    Left = 24
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select*from satuan')
    Params = <>
    Left = 80
    Top = 40
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 144
    Top = 32
  end
end

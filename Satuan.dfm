object Form1: TForm1
  Left = 419
  Top = 240
  Width = 406
  Height = 376
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 24
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl3: TLabel
    Left = 24
    Top = 48
    Width = 50
    Height = 13
    Caption = 'DISKRIPSI'
  end
  object edt1: TEdit
    Left = 80
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 32
    Top = 96
    Width = 59
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 96
    Width = 59
    Height = 25
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 96
    Width = 57
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 128
    Width = 329
    Height = 120
    DataSource = DataModule1.ds1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 80
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 280
    Top = 96
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn4Click
  end
end

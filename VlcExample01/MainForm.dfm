object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 593
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    753
    593)
  PixelsPerInch = 96
  TextHeight = 13
  object btnCreate: TButton
    Left = 480
    Top = 88
    Width = 75
    Height = 25
    Caption = 'btnCreate'
    TabOrder = 0
  end
  object stgUsers: TStringGrid
    Left = 8
    Top = 264
    Width = 737
    Height = 321
    Anchors = [akLeft, akTop, akRight, akBottom]
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
  end
end

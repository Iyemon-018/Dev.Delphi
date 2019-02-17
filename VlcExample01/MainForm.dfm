object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 225
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    397
    225)
  PixelsPerInch = 96
  TextHeight = 13
  object btnCreate: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = #26032#35215#36861#21152
    TabOrder = 0
    OnClick = btnCreateClick
  end
  object stgUsers: TStringGrid
    Left = 8
    Top = 39
    Width = 381
    Height = 178
    Anchors = [akLeft, akTop, akRight, akBottom]
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
    ExplicitWidth = 737
    ExplicitHeight = 352
  end
end

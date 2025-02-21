object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 331
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Memo1: TMemo
    Left = 16
    Top = 82
    Width = 329
    Height = 201
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object btnDepositar: TButton
    Left = 151
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Depositar'
    TabOrder = 1
    OnClick = btnDepositarClick
  end
  object txtDespositar: TEdit
    Left = 16
    Top = 53
    Width = 129
    Height = 23
    TabOrder = 2
  end
  object Button1: TButton
    Left = 183
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
  end
  object txtNome: TEdit
    Left = 56
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 4
  end
end

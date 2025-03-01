object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 473
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 135
    Top = 19
    Width = 91
    Height = 15
    Caption = 'Data Nascimento'
  end
  object Label3: TLabel
    Left = 8
    Top = 87
    Width = 62
    Height = 15
    Caption = 'Logradouro'
  end
  object Label4: TLabel
    Left = 135
    Top = 87
    Width = 44
    Height = 15
    Caption = 'N'#250'mero'
  end
  object Button1: TButton
    Left = 8
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 184
    Width = 375
    Height = 273
    TabOrder = 4
  end
  object txtNome: TEdit
    Left = 8
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'daniel'
  end
  object txtDataNascimento: TEdit
    Left = 135
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 1
    Text = '24/09/1980'
  end
  object txtLogradouro: TEdit
    Left = 8
    Top = 108
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'rua henrique belloube 1173'
  end
  object txtNumero: TEdit
    Left = 135
    Top = 108
    Width = 121
    Height = 23
    TabOrder = 3
    Text = '1173'
  end
end

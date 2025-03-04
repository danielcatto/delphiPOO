object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 420
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 35
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 152
    Top = 35
    Width = 91
    Height = 15
    Caption = 'Data Nascimento'
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Memo1: TMemo
    Left = 8
    Top = 211
    Width = 504
    Height = 201
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Exibir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object txtNome: TEdit
    Left = 8
    Top = 56
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'dnaiel'
  end
  object txtDataNascimento: TEdit
    Left = 152
    Top = 56
    Width = 121
    Height = 23
    TabOrder = 3
    Text = '24/09/1980'
  end
  object txtCPF: TEdit
    Left = 8
    Top = 117
    Width = 121
    Height = 23
    TabOrder = 4
    Text = '55588877795'
  end
  object txtLogradouro: TEdit
    Left = 152
    Top = 117
    Width = 233
    Height = 23
    TabOrder = 5
    Text = 'rua das flores'
  end
  object txtNumero: TEdit
    Left = 391
    Top = 117
    Width = 121
    Height = 23
    TabOrder = 6
    Text = '34'
  end
end

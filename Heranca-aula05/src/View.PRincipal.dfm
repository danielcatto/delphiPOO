object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculo de Credito'
  ClientHeight = 371
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 56
    Height = 15
    Caption = 'Data Nasc:'
  end
  object Label3: TLabel
    Left = 8
    Top = 85
    Width = 38
    Height = 15
    Caption = 'Sal'#225'rio:'
  end
  object Memo1: TMemo
    Left = 8
    Top = 158
    Width = 353
    Height = 211
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object btnCalcularLimite: TButton
    Left = 8
    Top = 127
    Width = 169
    Height = 25
    Caption = 'Calcular Limite'
    TabOrder = 3
    OnClick = btnCalcularLimiteClick
  end
  object txtNome: TEdit
    Left = 72
    Top = 8
    Width = 249
    Height = 23
    TabOrder = 0
  end
  object txtNasc: TEdit
    Left = 72
    Top = 45
    Width = 73
    Height = 23
    TabOrder = 1
  end
  object txtSalario: TEdit
    Left = 72
    Top = 82
    Width = 105
    Height = 23
    TabOrder = 2
  end
  object btnReset: TButton
    Left = 192
    Top = 127
    Width = 169
    Height = 25
    Caption = 'Reset'
    TabOrder = 5
    OnClick = btnResetClick
  end
end

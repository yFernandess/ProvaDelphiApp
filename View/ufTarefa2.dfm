object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2 - Threads'
  ClientHeight = 262
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 347
    Height = 262
    Align = alClient
    TabOrder = 0
    object lblAguardarThread1: TLabel
      Left = 95
      Top = 27
      Width = 144
      Height = 13
      Caption = 'Delay Thread 1 (milisegundos)'
    end
    object lblAguardarThread2: TLabel
      Left = 95
      Top = 124
      Width = 144
      Height = 13
      Caption = 'Delay Thread 2 (milisegundos)'
    end
    object btnIniciar: TSpeedButton
      Left = 134
      Top = 211
      Width = 83
      Height = 22
      Caption = 'Iniciar'
      OnClick = btnIniciarClick
    end
    object spedtThread1: TSpinEdit
      Left = 118
      Top = 44
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object spedtThread2: TSpinEdit
      Left = 118
      Top = 141
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object pgbThread1: TProgressBar
      Left = 16
      Top = 75
      Width = 313
      Height = 17
      TabOrder = 2
    end
    object pgbThread2: TProgressBar
      Left = 16
      Top = 173
      Width = 313
      Height = 17
      TabOrder = 3
    end
  end
end

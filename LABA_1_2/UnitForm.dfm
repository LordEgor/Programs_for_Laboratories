object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1075#1086#1088#1086#1076#1072#1093' '#1080' '#1089#1090#1088#1072#1085#1072#1093
  ClientHeight = 358
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object labelTownsFileChoose: TLabel
    Left = 152
    Top = 17
    Width = 82
    Height = 13
    Caption = #1060#1072#1081#1083' '#1085#1077' '#1074#1099#1073#1088#1072#1085
    Constraints.MaxHeight = 33
    Constraints.MaxWidth = 174
    Layout = tlCenter
  end
  object labelCountriesFileChoose: TLabel
    Left = 152
    Top = 65
    Width = 82
    Height = 13
    Caption = #1060#1072#1081#1083' '#1085#1077' '#1074#1099#1073#1088#1072#1085
    Constraints.MaxHeight = 30
    Constraints.MaxWidth = 174
    Layout = tlCenter
  end
  object labelRequestInfo: TLabel
    Left = 8
    Top = 104
    Width = 129
    Height = 26
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1074' '#1087#1086#1083#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1089#1090#1088#1072#1085#1099'/'#1084#1072#1090#1077#1088#1080#1082#1072
    WordWrap = True
  end
  object labelGeneralInfoFileChoose: TLabel
    Left = 152
    Top = 320
    Width = 82
    Height = 13
    Caption = #1060#1072#1081#1083' '#1085#1077' '#1074#1099#1073#1088#1072#1085
    Constraints.MaxHeight = 30
    Constraints.MaxWidth = 174
    Layout = tlCenter
  end
  object buttonTownsFileChoose: TButton
    Left = 8
    Top = 8
    Width = 129
    Height = 33
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083' '#1075#1086#1088#1086#1076#1086#1074
    TabOrder = 0
    OnClick = buttonTownsFileChooseClick
  end
  object buttonCountriesFileChoose: TButton
    Left = 8
    Top = 56
    Width = 129
    Height = 33
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083' '#1089#1090#1088#1072#1085
    TabOrder = 1
    OnClick = buttonCountriesFileChooseClick
  end
  object textboxRequestField: TEdit
    Left = 152
    Top = 108
    Width = 174
    Height = 21
    Cursor = crIBeam
    TabOrder = 2
  end
  object buttonGeneralInfoFileChoose: TButton
    Left = 8
    Top = 320
    Width = 129
    Height = 33
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083' '#1076#1083#1103' '#1086#1073#1097#1077#1081' '#1080#1085#1092#1088#1086#1084#1072#1094#1080#1080
    TabOrder = 3
    WordWrap = True
    OnClick = buttonGeneralInfoFileChooseClick
  end
  object buttonGeneralInfoWrite: TButton
    Left = 336
    Top = 320
    Width = 129
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1086#1073#1097#1091#1102' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1074' '#1092#1072#1081#1083
    TabOrder = 4
    WordWrap = True
  end
  object buttonRequestInfoFind: TButton
    Left = 336
    Top = 104
    Width = 129
    Height = 25
    Caption = #1055#1086#1080#1089#1082' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
    TabOrder = 5
    WordWrap = True
    OnClick = buttonRequestInfoFindClick
  end
  object memoRequestInfo: TMemo
    Left = 8
    Top = 145
    Width = 457
    Height = 169
    Lines.Strings = (
      'memoRequestInfo')
    TabOrder = 6
  end
end

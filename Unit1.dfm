object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Maths'
  ClientHeight = 460
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 384
    Height = 434
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
      object edtCalc: TEdit
        Left = 16
        Top = 24
        Width = 214
        Height = 21
        ReadOnly = True
        TabOrder = 0
        Text = '0'
        OnKeyDown = edtCalcKeyDown
      end
      object btn1: TButton
        Left = 16
        Top = 142
        Width = 49
        Height = 33
        Caption = '1'
        TabOrder = 1
        OnClick = btn1Click
        OnKeyDown = edtCalcKeyDown
      end
      object btn2: TButton
        Left = 71
        Top = 142
        Width = 49
        Height = 33
        Caption = '2'
        TabOrder = 2
        OnClick = btn2Click
        OnKeyDown = edtCalcKeyDown
      end
      object btn3: TButton
        Left = 126
        Top = 142
        Width = 49
        Height = 33
        Caption = '3'
        TabOrder = 3
        OnClick = btn3Click
        OnKeyDown = edtCalcKeyDown
      end
      object btnMinus: TButton
        Left = 181
        Top = 64
        Width = 49
        Height = 33
        Caption = '-'
        TabOrder = 4
        OnClick = btnMinusClick
        OnKeyDown = edtCalcKeyDown
      end
      object btn4: TButton
        Left = 16
        Top = 103
        Width = 49
        Height = 33
        Caption = '4'
        TabOrder = 5
        OnClick = btn4Click
        OnKeyDown = edtCalcKeyDown
      end
      object btn5: TButton
        Left = 71
        Top = 103
        Width = 49
        Height = 33
        Caption = '5'
        TabOrder = 6
        OnClick = btn5Click
        OnKeyDown = edtCalcKeyDown
      end
      object btn6: TButton
        Left = 126
        Top = 103
        Width = 49
        Height = 33
        Caption = '6'
        TabOrder = 7
        OnClick = btn6Click
        OnKeyDown = edtCalcKeyDown
      end
      object btnPlus: TButton
        Left = 181
        Top = 103
        Width = 49
        Height = 33
        Caption = '+'
        TabOrder = 8
        OnClick = btnPlusClick
        OnKeyDown = edtCalcKeyDown
      end
      object btn7: TButton
        Left = 16
        Top = 64
        Width = 49
        Height = 33
        Caption = '7'
        TabOrder = 9
        OnClick = btn7Click
        OnKeyDown = edtCalcKeyDown
      end
      object btn8: TButton
        Left = 71
        Top = 64
        Width = 49
        Height = 33
        Caption = '8'
        TabOrder = 10
        OnClick = btn8Click
        OnKeyDown = edtCalcKeyDown
      end
      object btn9: TButton
        Left = 126
        Top = 64
        Width = 49
        Height = 33
        Caption = '9'
        TabOrder = 11
        OnClick = btn9Click
        OnKeyDown = edtCalcKeyDown
      end
      object btnMult: TButton
        Left = 181
        Top = 142
        Width = 49
        Height = 33
        Caption = '*'
        TabOrder = 12
        OnClick = btnMultClick
        OnKeyDown = edtCalcKeyDown
      end
      object btnDev: TButton
        Left = 181
        Top = 181
        Width = 49
        Height = 33
        Caption = '/'
        TabOrder = 13
        OnClick = btnDevClick
        OnKeyDown = edtCalcKeyDown
      end
      object btnIs: TButton
        Left = 308
        Top = 362
        Width = 49
        Height = 33
        Caption = '='
        TabOrder = 14
        OnClick = btnIsClick
        OnKeyDown = edtCalcKeyDown
      end
      object btn0: TButton
        Left = 71
        Top = 181
        Width = 49
        Height = 33
        Caption = '0'
        TabOrder = 15
        OnClick = btn0Click
        OnKeyDown = edtCalcKeyDown
      end
      object btnComa: TButton
        Left = 16
        Top = 181
        Width = 49
        Height = 33
        Caption = '.'
        TabOrder = 16
        OnClick = btnComaClick
        OnKeyDown = edtCalcKeyDown
      end
      object btnClear: TButton
        Left = 236
        Top = 18
        Width = 49
        Height = 33
        Caption = 'C'
        TabOrder = 17
        OnClick = btnClearClick
        OnKeyDown = edtCalcKeyDown
      end
      object Button1: TButton
        Left = 16
        Top = 232
        Width = 49
        Height = 33
        Caption = 'Sin'
        TabOrder = 18
        OnClick = Button1Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button2: TButton
        Left = 71
        Top = 232
        Width = 49
        Height = 33
        Caption = 'Cos'
        TabOrder = 19
        OnClick = Button2Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button3: TButton
        Left = 126
        Top = 232
        Width = 49
        Height = 33
        Caption = 'Tan'
        TabOrder = 20
        OnClick = Button3Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button4: TButton
        Left = 181
        Top = 232
        Width = 49
        Height = 33
        Caption = 'Cot'
        TabOrder = 21
        OnClick = Button4Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button5: TButton
        Left = 16
        Top = 271
        Width = 49
        Height = 33
        Caption = 'arcSin'
        TabOrder = 22
        OnClick = Button5Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button6: TButton
        Left = 71
        Top = 271
        Width = 49
        Height = 33
        Caption = 'arcCos'
        TabOrder = 23
        OnClick = Button6Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button7: TButton
        Left = 126
        Top = 271
        Width = 49
        Height = 33
        Caption = 'arcTan'
        TabOrder = 24
        OnClick = Button7Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button8: TButton
        Left = 181
        Top = 271
        Width = 49
        Height = 33
        Caption = 'arcCot'
        TabOrder = 25
        OnClick = Button8Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button9: TButton
        Left = 244
        Top = 64
        Width = 49
        Height = 33
        Caption = 'x^2'
        TabOrder = 26
        OnClick = Button9Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button10: TButton
        Left = 244
        Top = 103
        Width = 49
        Height = 33
        Caption = #8730'x'
        TabOrder = 27
        OnClick = Button10Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button11: TButton
        Left = 125
        Top = 181
        Width = 49
        Height = 33
        Caption = '+/-'
        TabOrder = 28
        OnClick = Button11Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button12: TButton
        Left = 244
        Top = 142
        Width = 49
        Height = 33
        Caption = 'x^n'
        TabOrder = 29
        OnClick = Button12Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button13: TButton
        Left = 244
        Top = 181
        Width = 49
        Height = 33
        Caption = 'x^(1/n)'
        TabOrder = 30
        OnClick = Button13Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button14: TButton
        Left = 308
        Top = 64
        Width = 49
        Height = 33
        Caption = 'M+'
        TabOrder = 31
        OnClick = Button14Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button15: TButton
        Left = 308
        Top = 103
        Width = 49
        Height = 33
        Caption = 'X=>M'
        TabOrder = 32
        OnClick = Button15Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button16: TButton
        Left = 308
        Top = 142
        Width = 49
        Height = 33
        Caption = 'CM'
        TabOrder = 33
        OnClick = Button16Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button17: TButton
        Left = 16
        Top = 311
        Width = 49
        Height = 33
        Caption = 'log n x'
        TabOrder = 34
        OnClick = Button17Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button18: TButton
        Left = 71
        Top = 311
        Width = 49
        Height = 33
        Caption = 'n!'
        TabOrder = 35
        OnClick = Button18Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button19: TButton
        Left = 244
        Top = 232
        Width = 49
        Height = 33
        Caption = 'round'
        TabOrder = 36
        OnClick = Button19Click
        OnKeyDown = edtCalcKeyDown
      end
      object Button20: TButton
        Left = 244
        Top = 271
        Width = 49
        Height = 33
        Caption = 'Pi'
        TabOrder = 37
        OnClick = Button20Click
        OnKeyDown = edtCalcKeyDown
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1059#1088#1072#1074#1085#1077#1085#1080#1103
      ImageIndex = 1
      object Label1: TLabel
        Left = 90
        Top = 32
        Width = 41
        Height = 23
        Caption = 'X  +'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 168
        Top = 32
        Width = 35
        Height = 23
        Caption = 'X +'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 108
        Top = 23
        Width = 7
        Height = 16
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 32
        Top = 8
        Width = 68
        Height = 13
        Caption = #1050#1074#1072#1076#1088#1072#1090#1085#1099#1077':'
      end
      object Label5: TLabel
        Left = 240
        Top = 32
        Width = 34
        Height = 23
        Caption = '= 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtA: TEdit
        Left = 64
        Top = 32
        Width = 25
        Height = 21
        TabOrder = 0
      end
      object edtB: TEdit
        Left = 137
        Top = 32
        Width = 25
        Height = 21
        TabOrder = 1
      end
      object edtC: TEdit
        Left = 209
        Top = 32
        Width = 25
        Height = 21
        TabOrder = 2
      end
      object btnSQR: TButton
        Left = 32
        Top = 61
        Width = 75
        Height = 25
        Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnSQRClick
      end
      object MemoSq: TMemo
        Left = -4
        Top = 296
        Width = 381
        Height = 113
        ReadOnly = True
        TabOrder = 4
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1050#1088#1091#1075
      ImageIndex = 2
      object Label6: TLabel
        Left = 27
        Top = 3
        Width = 36
        Height = 13
        Caption = #1056#1072#1076#1080#1091#1089
      end
      object Label7: TLabel
        Left = 27
        Top = 49
        Width = 44
        Height = 13
        Caption = #1044#1080#1072#1084#1077#1090#1088
      end
      object Label8: TLabel
        Left = 27
        Top = 95
        Width = 96
        Height = 13
        Caption = #1044#1083#1080#1085#1072' '#1086#1082#1088#1091#1078#1085#1086#1089#1090#1080
      end
      object Label9: TLabel
        Left = 27
        Top = 141
        Width = 47
        Height = 13
        Caption = #1055#1083#1086#1097#1072#1076#1100
      end
      object Label10: TLabel
        Left = 224
        Top = 3
        Width = 96
        Height = 13
        Caption = #1062#1077#1085#1090#1088#1072#1083#1100#1085#1099#1081' '#1091#1075#1086#1083
      end
      object Label11: TLabel
        Left = 224
        Top = 95
        Width = 59
        Height = 13
        Caption = #1044#1083#1080#1085#1072' '#1076#1091#1075#1080
      end
      object Label12: TLabel
        Left = 224
        Top = 49
        Width = 75
        Height = 13
        Caption = #1042#1087#1080#1089#1072#1085#1099#1081' '#1091#1075#1086#1083
      end
      object Edit1: TEdit
        Left = 27
        Top = 22
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '0'
        OnKeyUp = Edit1KeyUp
      end
      object Edit2: TEdit
        Left = 27
        Top = 68
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '0'
        OnKeyUp = Edit2KeyUp
      end
      object Edit3: TEdit
        Left = 27
        Top = 114
        Width = 121
        Height = 21
        TabOrder = 2
        Text = '0'
        OnKeyUp = Edit3KeyUp
      end
      object Edit4: TEdit
        Left = 27
        Top = 160
        Width = 121
        Height = 21
        TabOrder = 3
        Text = '0'
        OnKeyUp = Edit4KeyUp
      end
      object Edit5: TEdit
        Left = 224
        Top = 22
        Width = 121
        Height = 21
        TabOrder = 4
        Text = '0'
        OnKeyUp = Edit5KeyUp
      end
      object Edit6: TEdit
        Left = 224
        Top = 68
        Width = 121
        Height = 21
        TabOrder = 5
        Text = '0'
        OnKeyUp = Edit6KeyUp
      end
      object Edit7: TEdit
        Left = 224
        Top = 114
        Width = 121
        Height = 21
        TabOrder = 6
        Text = '0'
        OnKeyUp = Edit7KeyUp
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1052#1085#1086#1075#1086#1091#1075#1086#1083#1100#1085#1080#1082#1080
      ImageIndex = 3
      object Label13: TLabel
        Left = 24
        Top = 3
        Width = 92
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1091#1075#1083#1086#1074
      end
      object Label14: TLabel
        Left = 24
        Top = 49
        Width = 120
        Height = 13
        Caption = #1057#1091#1084#1072' '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1093' '#1091#1075#1083#1086#1074
      end
      object Label15: TLabel
        Left = 24
        Top = 95
        Width = 104
        Height = 13
        Caption = #1057#1091#1084#1072' '#1074#1085#1077#1096#1085#1080#1093' '#1091#1075#1083#1086#1074
      end
      object Label16: TLabel
        Left = 224
        Top = 3
        Width = 86
        Height = 13
        Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#1091#1075#1086#1083
      end
      object Label17: TLabel
        Left = 224
        Top = 49
        Width = 70
        Height = 13
        Caption = #1042#1085#1077#1096#1085#1080#1081' '#1091#1075#1086#1083
      end
      object Label18: TLabel
        Left = 224
        Top = 95
        Width = 123
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1076#1080#1072#1075#1086#1085#1072#1083#1077#1081
      end
      object Edit8: TEdit
        Left = 24
        Top = 22
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '0'
        OnKeyUp = Edit8KeyUp
      end
      object Edit9: TEdit
        Left = 24
        Top = 68
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '0'
        OnKeyUp = Edit9KeyUp
      end
      object Edit10: TEdit
        Left = 24
        Top = 114
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 2
        Text = '360'
      end
      object Edit11: TEdit
        Left = 224
        Top = 22
        Width = 121
        Height = 21
        TabOrder = 3
        Text = '0'
        OnKeyUp = Edit11KeyUp
      end
      object Edit12: TEdit
        Left = 224
        Top = 68
        Width = 121
        Height = 21
        TabOrder = 4
        Text = '0'
        OnKeyUp = Edit12KeyUp
      end
      object Edit13: TEdit
        Left = 224
        Top = 114
        Width = 121
        Height = 21
        TabOrder = 5
        Text = '0'
        OnKeyUp = Edit13KeyUp
      end
    end
  end
end

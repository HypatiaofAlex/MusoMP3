object frmHelp: TfrmHelp
  Left = 716
  Top = 240
  BorderStyle = bsNone
  Caption = 'frmHelp'
  ClientHeight = 645
  ClientWidth = 831
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    831
    645)
  PixelsPerInch = 96
  TextHeight = 13
  object cmbClose: TRzPanel
    Left = 735
    Top = 609
    Width = 85
    Height = 25
    Alignment = taLeftJustify
    Anchors = [akRight, akBottom]
    BorderOuter = fsNone
    Caption = 'CLOSE'
    Color = 7619329
    Font.Charset = ANSI_CHARSET
    Font.Color = 16776988
    Font.Height = -16
    Font.Name = 'Neogrey'
    Font.Style = []
    TextMargin = 10
    ParentFont = False
    TabOrder = 0
    OnClick = cmbCloseClick
  end
  object panTitle: TRzPanel
    Left = 11
    Top = 32
    Width = 809
    Height = 33
    Anchors = [akLeft, akTop, akRight]
    BorderOuter = fsNone
    BorderColor = clLime
    BorderWidth = 2
    Color = clBlack
    TabOrder = 1
    DesignSize = (
      809
      33)
    object RzPanel2: TRzPanel
      Left = 12
      Top = 4
      Width = 785
      Height = 18
      Alignment = taLeftJustify
      Anchors = [akLeft, akTop, akRight]
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 7619329
      BorderWidth = 1
      Caption = 'MusoMP3 Help'
      Color = 394758
      Font.Charset = ANSI_CHARSET
      Font.Color = 16776988
      Font.Height = -16
      Font.Name = 'Neogrey'
      Font.Style = []
      GradientColorStart = clBlack
      GradientColorStop = clTeal
      GradientDirection = gdVerticalEnd
      TextMargin = 4
      ParentFont = False
      TabOrder = 0
      VisualStyle = vsClassic
    end
  end
  object panSubject: TRzPanel
    Left = 11
    Top = 80
    Width = 152
    Height = 554
    Anchors = [akLeft, akTop, akBottom]
    BorderOuter = fsNone
    BorderColor = clLime
    BorderWidth = 2
    Color = clBlack
    TabOrder = 2
    DesignSize = (
      152
      554)
    object panThings: TRzPanel
      Left = 12
      Top = 4
      Width = 128
      Height = 29
      Alignment = taLeftJustify
      Anchors = [akLeft, akTop, akRight]
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 7619329
      BorderWidth = 1
      Caption = 'Things'
      Color = 394758
      Font.Charset = ANSI_CHARSET
      Font.Color = 16776988
      Font.Height = -16
      Font.Name = 'Neogrey'
      Font.Style = []
      GradientColorStart = clBlack
      GradientColorStop = clTeal
      GradientDirection = gdVerticalEnd
      TextMargin = 4
      ParentFont = False
      TabOrder = 0
      VisualStyle = vsClassic
    end
    object RzPanel3: TRzPanel
      Left = 14
      Top = 46
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 1
      DesignSize = (
        125
        30)
      object labAboutIt: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'About It'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel4: TRzPanel
      Left = 14
      Top = 79
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 2
      DesignSize = (
        125
        30)
      object labTheControls: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'The Controls'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel5: TRzPanel
      Left = 14
      Top = 112
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 3
      DesignSize = (
        125
        30)
      object labPractise: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Practise'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel6: TRzPanel
      Left = 14
      Top = 146
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 4
      DesignSize = (
        125
        30)
      object labTransparent: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Transparent'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel7: TRzPanel
      Left = 14
      Top = 179
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 5
      DesignSize = (
        125
        30)
      object labOpacity: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Opacity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel8: TRzPanel
      Left = 14
      Top = 213
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 6
      DesignSize = (
        125
        30)
      object labHotKeyz: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Hot-Keyz'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel9: TRzPanel
      Left = 14
      Top = 246
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 7
      DesignSize = (
        125
        30)
      object labWinAmp: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'WinAmp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel10: TRzPanel
      Left = 14
      Top = 279
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 8
      DesignSize = (
        125
        30)
      object labTop: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Top'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel11: TRzPanel
      Left = 14
      Top = 313
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 9
      DesignSize = (
        125
        30)
      object labThankYouz: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Thank Youz'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel12: TRzPanel
      Left = 14
      Top = 346
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 10
      DesignSize = (
        125
        30)
      object labOSStuff: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'OS Stuff'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel13: TRzPanel
      Left = 14
      Top = 379
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 11
      DesignSize = (
        125
        30)
      object labContact: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Contact'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
    object RzPanel1: TRzPanel
      Left = 14
      Top = 412
      Width = 125
      Height = 30
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 12
      DesignSize = (
        125
        30)
      object labLegal: TRzLabel
        Left = 3
        Top = 4
        Width = 120
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Legal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = labAboutItClick
        BlinkIntervalOff = 5000
        BlinkIntervalOn = 5000
        BorderColor = 7619329
        BorderShadow = 7619329
        FlyByColor = clTeal
        FlyByEnabled = True
        ShadowColor = clBlue
        ShadowDepth = 1
        TextStyle = tsShadow
      end
    end
  end
  object panText: TRzPanel
    Left = 179
    Top = 80
    Width = 641
    Height = 521
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderOuter = fsNone
    BorderColor = clLime
    BorderWidth = 2
    Color = clBlack
    TabOrder = 3
    DesignSize = (
      641
      521)
    object panSubjectTitle: TRzPanel
      Left = 12
      Top = 4
      Width = 617
      Height = 29
      Alignment = taLeftJustify
      Anchors = [akLeft, akTop, akRight]
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 7619329
      BorderWidth = 1
      Caption = 'MusoMP3'
      Color = 394758
      Font.Charset = ANSI_CHARSET
      Font.Color = 16776988
      Font.Height = -16
      Font.Name = 'Neogrey'
      Font.Style = []
      GradientColorStart = clBlack
      GradientColorStop = clTeal
      GradientDirection = gdVerticalEnd
      TextMargin = 4
      ParentFont = False
      TabOrder = 0
      VisualStyle = vsClassic
    end
    object panText2: TRzPanel
      Left = 16
      Top = 46
      Width = 609
      Height = 460
      BorderOuter = fsNone
      BorderSides = []
      Color = 1184274
      TabOrder = 1
      object mem1: TLabel
        Left = 4
        Top = 5
        Width = 600
        Height = 450
        AutoSize = False
        Caption = 'Read this part here---> blah blah blah blah'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Neogrey'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
    end
  end
  object panTitleBar: TRzPanel
    Left = 0
    Top = 0
    Width = 831
    Height = 17
    Align = alTop
    BorderOuter = fsNone
    Color = 7619329
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GradientColorStart = clAqua
    GradientColorStop = clTeal
    GradientDirection = gdVerticalEnd
    ParentFont = False
    TabOrder = 4
    VisualStyle = vsClassic
    OnMouseDown = panTitleBarMouseDown
    OnMouseUp = panTitleBarMouseUp
    object labApplicationTitle: TLabel
      Left = 16
      Top = -1
      Width = 105
      Height = 21
      Caption = 'MusoMP3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14540032
      Font.Height = -16
      Font.Name = 'Neogrey'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 195
    Top = 584
  end
end

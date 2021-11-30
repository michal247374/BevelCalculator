object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Kalkulator przek'#322'adni sto'#380'kowych'
  ClientHeight = 661
  ClientWidth = 1084
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMain: TPageControl
    Left = 5
    Top = 5
    Width = 1075
    Height = 630
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    ActivePage = tshEtap1
    Align = alCustom
    MultiLine = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object tshEtap1: TTabSheet
      Caption = 'Etap I'
      object pnlNaglowek1: TPanel
        Left = 3
        Top = 3
        Width = 1060
        Height = 74
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object lblNaglowek1: TLabel
          Left = 8
          Top = 3
          Width = 64
          Height = 23
          Caption = 'ETAP I'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNaglowek1Tresc: TLabel
          Left = 8
          Top = 26
          Width = 746
          Height = 16
          Caption = 
            'Etap polegaj'#261'cy na wprowadzeniu warunk'#243'w pracy przek'#322'adni, dobor' +
            'ze odpowiedniego materia'#322'u konstrukcyjnego k'#243#322' z'#281'batych....'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object pnlParmetryWejsc: TPanel
        Left = 4
        Top = 83
        Width = 1060
        Height = 117
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object lblParametrWejsc: TLabel
          Left = 8
          Top = 8
          Width = 160
          Height = 16
          Caption = 'PARAMETRY WEJ'#346'CIOWE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPredObr: TLabel
          Left = 17
          Top = 51
          Width = 157
          Height = 13
          Caption = 'Pr'#281'dko'#347#263' obrotowa z'#281'bnika n1 ='
        end
        object lblObrMin1: TLabel
          Left = 392
          Top = 67
          Width = 35
          Height = 13
          Caption = 'obr/min'
        end
        object lblKoloZebate: TLabel
          Left = 392
          Top = 35
          Width = 98
          Height = 13
          Caption = 'Ko'#322'a z'#281'batego n2 = '
        end
        object lblObrMin2: TLabel
          Left = 632
          Top = 35
          Width = 36
          Height = 13
          Caption = 'obr/min'
        end
        object lblPrzelozenie: TLabel
          Left = 744
          Top = 35
          Width = 71
          Height = 13
          Caption = 'Prze'#322'o'#380'enie i ='
        end
        object Label1: TLabel
          Left = 72
          Top = 88
          Width = 92
          Height = 13
          Caption = 'Moment skr'#281'caj'#261'cy'
        end
        object edtPredObr1: TEdit
          Left = 141
          Top = 46
          Width = 130
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 0
        end
        object edtPredObr2: TEdit
          Left = 496
          Top = 32
          Width = 130
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 1
        end
        object edtPrzelozenie: TEdit
          Left = 821
          Top = 32
          Width = 121
          Height = 21
          Hint = 
            'Prze'#322'o'#380'enie ~ Druga linia|Warto'#347#263' prze'#322'o'#380'enia powinna by'#263' znorma' +
            'lizowana'
          Alignment = taRightJustify
          NumbersOnly = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object btnSzeregi: TButton
          Left = 948
          Top = 32
          Width = 75
          Height = 21
          Caption = 'Szeregi'
          TabOrder = 3
          OnClick = btnSzeregiClick
        end
      end
      object pnlCzasPracy: TPanel
        Left = 4
        Top = 206
        Width = 247
        Height = 69
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 2
        object lblCzasPracy: TLabel
          Left = 8
          Top = 8
          Width = 226
          Height = 16
          Caption = 'LICZBA GODZIN PRACY PRZEK'#321'ADNI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblLh: TLabel
          Left = 29
          Top = 35
          Width = 25
          Height = 13
          Caption = 'Lh = '
        end
        object lblGodziny: TLabel
          Left = 199
          Top = 35
          Width = 6
          Height = 13
          Caption = 'h'
        end
        object edtCzasPracy: TEdit
          Left = 60
          Top = 32
          Width = 130
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 0
        end
      end
      object pnlZmianaObciazeniaWCzasie: TPanel
        Left = 4
        Top = 281
        Width = 454
        Height = 144
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 3
        DesignSize = (
          454
          144)
        object lblZmianaObciazenia: TLabel
          Left = 8
          Top = 8
          Width = 198
          Height = 16
          Caption = 'ZMIANA OBCIA'#379'ENIA W CZASIE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblOkres1: TLabel
          Left = 73
          Top = 54
          Width = 35
          Height = 13
          Caption = 'Okres I'
        end
        object lblOkres2: TLabel
          Left = 69
          Top = 81
          Width = 39
          Height = 13
          Caption = 'Okres II'
        end
        object lblOkres3: TLabel
          Left = 65
          Top = 110
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Okres III'
        end
        object lblCzasTrwania: TLabel
          Left = 146
          Top = 30
          Width = 62
          Height = 13
          Caption = 'Czas trwania'
        end
        object lblWartoscObciazenia: TLabel
          Left = 236
          Top = 30
          Width = 93
          Height = 13
          Caption = 'Warto'#347#263' obci'#261#380'enia'
        end
        object lblProcent1: TLabel
          Left = 210
          Top = 49
          Width = 16
          Height = 22
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = '%'
          Layout = tlCenter
        end
        object lblProcent2: TLabel
          Left = 210
          Top = 77
          Width = 16
          Height = 22
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = '%'
          Layout = tlCenter
        end
        object lblProcent3: TLabel
          Left = 210
          Top = 105
          Width = 15
          Height = 24
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = '%'
          Layout = tlCenter
        end
        object lblProcent4: TLabel
          Left = 314
          Top = 49
          Width = 24
          Height = 22
          Alignment = taCenter
          Anchors = []
          Caption = '%'
          Layout = tlCenter
        end
        object lblProcent5: TLabel
          Left = 314
          Top = 77
          Width = 24
          Height = 22
          Alignment = taCenter
          Anchors = []
          Caption = '%'
          Layout = tlCenter
        end
        object lblProcent6: TLabel
          Left = 314
          Top = 105
          Width = 24
          Height = 24
          Alignment = taCenter
          Anchors = []
          Caption = '%'
          Layout = tlCenter
        end
        object SpinEdit1: TSpinEdit
          Left = 153
          Top = 49
          Width = 55
          Height = 22
          MaxValue = 100
          MinValue = 0
          TabOrder = 0
          Value = 100
        end
        object SpinEdit2: TSpinEdit
          Left = 253
          Top = 49
          Width = 55
          Height = 22
          MaxValue = 100
          MinValue = 0
          TabOrder = 1
          Value = 100
        end
        object SpinEdit3: TSpinEdit
          Left = 153
          Top = 77
          Width = 55
          Height = 22
          MaxValue = 100
          MinValue = 0
          TabOrder = 2
          Value = 0
        end
        object SpinEdit4: TSpinEdit
          Left = 153
          Top = 105
          Width = 55
          Height = 22
          MaxValue = 100
          MinValue = 0
          TabOrder = 3
          Value = 0
        end
        object SpinEdit5: TSpinEdit
          Left = 253
          Top = 105
          Width = 55
          Height = 22
          MaxValue = 100
          MinValue = 0
          TabOrder = 4
          Value = 0
        end
        object SpinEdit6: TSpinEdit
          Left = 253
          Top = 77
          Width = 55
          Height = 22
          MaxValue = 100
          MinValue = 0
          TabOrder = 5
          Value = 0
        end
        object btnZmianaObciazeniaWCzasieHelp: TButton
          Left = 365
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Pomoc'
          TabOrder = 6
        end
      end
      object pnlZmianaKierunku: TPanel
        Left = 257
        Top = 206
        Width = 201
        Height = 69
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 4
        DesignSize = (
          201
          69)
        object lblZmianaKierunku: TLabel
          Left = 8
          Top = 8
          Width = 188
          Height = 16
          Caption = 'ZMIANA KIERUNKU OBROT'#211'W '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbxZmianaKierunku: TCheckBox
          Left = 24
          Top = 33
          Width = 161
          Height = 17
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Obroty w obu kierunkach'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object pnlMaterialZebnika: TPanel
        Left = 464
        Top = 206
        Width = 600
        Height = 118
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 5
        object lblMaterialZebnika: TLabel
          Left = 8
          Top = 8
          Width = 124
          Height = 16
          Caption = 'MATERIA'#321' Z'#280'BNIKA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMateriał1: TLabel
          Left = 53
          Top = 33
          Width = 39
          Height = 13
          Caption = 'Materia'#322
        end
        object lblObrobkaCieplna1: TLabel
          Left = 15
          Top = 60
          Width = 77
          Height = 13
          Caption = 'Obr'#243'bka cieplna'
        end
        object lblTwardosc1: TLabel
          Left = 367
          Top = 62
          Width = 46
          Height = 13
          Caption = 'Twardo'#347#263
        end
        object lblRm1: TLabel
          Left = 15
          Top = 88
          Width = 178
          Height = 26
          BiDiMode = bdLeftToRight
          Caption = 'Wytrzyma'#322'o'#347#263' na rozci'#261'ganie Rm'
          ParentBiDiMode = False
          WordWrap = True
        end
        object lblRe1: TLabel
          Left = 354
          Top = 84
          Width = 124
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = 'Granica plastyczno'#347'ci Re'
          ParentBiDiMode = False
          WordWrap = True
        end
        object edtRe1: TEdit
          Left = 484
          Top = 84
          Width = 100
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 0
        end
        object cbxMaterial1: TComboBox
          Left = 104
          Top = 30
          Width = 345
          Height = 21
          Style = csDropDownList
          TabOrder = 1
        end
        object edtRm1: TEdit
          Left = 183
          Top = 84
          Width = 100
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 2
        end
        object edtTwardosc1: TEdit
          Left = 419
          Top = 57
          Width = 100
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 3
        end
        object edtObrobkaCieplna1: TEdit
          Left = 104
          Top = 57
          Width = 233
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 4
        end
        object btnMaterial1Help: TButton
          Left = 509
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Pomoc'
          TabOrder = 5
        end
      end
    end
    object tshEtap2: TTabSheet
      Caption = 'Etap II'
      Enabled = False
      ImageIndex = 1
    end
  end
  object stbPasekStanu: TStatusBar
    Left = 0
    Top = 642
    Width = 1084
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
end

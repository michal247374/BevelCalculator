﻿object frmMain: TfrmMain
  Left = 0
  Top = 0
  Width = 1100
  Height = 695
  AutoScroll = True
  Caption = 'Kalkulator przek'#322'adni sto'#380'kowych'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  TipMode = tipOpen
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMain: TPageControl
    Left = 5
    Top = 0
    Width = 1075
    Height = 630
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    ActivePage = tshEtap3
    Align = alCustom
    MultiLine = True
    ParentShowHint = False
    ScrollOpposite = True
    ShowHint = True
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
          Top = 30
          Width = 1017
          Height = 32
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 
            'Nale'#380'y wprowadzi'#263' podstawowe parametry przek'#322'adni na podstawie k' +
            't'#243'rych prowadzone b'#281'd'#261' obliczenia oraz dobra'#263' odpowiedni materia' +
            #322' konstrukcyjny przeznaczony na ko'#322'a. '#8236' Aby uzyska'#263' dodatkowe in' +
            'formacje jak'#261' warto'#347#263' powinien przyjmowac parametr nale'#380'y skorzy' +
            'sta'#263' z funkcji "Pomoc"'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          WordWrap = True
        end
      end
      object pnlParmetryWejsc: TPanel
        Left = 3
        Top = 83
        Width = 454
        Height = 117
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object lblParametrWejsc: TLabel
          Left = 8
          Top = 4
          Width = 141
          Height = 16
          Caption = 'PARAMETRY WEJ'#346'CIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPredObr1: TLabel
          Left = 8
          Top = 56
          Width = 186
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pr'#281'dko'#347#263' obrotowa z'#281'bnika n1 ='
          Layout = tlCenter
        end
        object lblObrMin1: TLabel
          Left = 349
          Top = 56
          Width = 55
          Height = 21
          AutoSize = False
          Caption = 'obr/min'
          Layout = tlCenter
        end
        object lblMoc: TLabel
          Left = 123
          Top = 26
          Width = 71
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Moc P ='
          Layout = tlCenter
        end
        object lblKW1: TLabel
          Left = 349
          Top = 26
          Width = 55
          Height = 21
          AutoSize = False
          Caption = 'kW'
          Layout = tlCenter
        end
        object lblMoment1: TLabel
          Left = 8
          Top = 85
          Width = 186
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Moment skr'#281'caj'#261'cy na wej'#347'ciu T1 ='
          Layout = tlCenter
        end
        object lblNm1: TLabel
          Left = 349
          Top = 83
          Width = 31
          Height = 21
          AutoSize = False
          Caption = 'Nm'
          Layout = tlCenter
        end
        object edtPredObr1: TEdit
          Tag = 2
          Left = 210
          Top = 56
          Width = 130
          Height = 21
          Alignment = taRightJustify
          MaxLength = 10
          TabOrder = 0
          Text = '1450'
          OnChange = DeaktywacjaPrzyZmianach
          OnExit = edtPredObr1Exit
        end
        object edtMoc: TEdit
          Tag = 2
          Left = 210
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          MaxLength = 10
          TabOrder = 1
          Text = '5,0'
          OnChange = DeaktywacjaPrzyZmianach
          OnExit = ZabezpieczTEdit
        end
        object edtMoment1: TEdit
          Tag = 2
          Left = 210
          Top = 85
          Width = 130
          Height = 21
          Alignment = taRightJustify
          MaxLength = 10
          TabOrder = 2
          Text = '36,22'
          OnChange = DeaktywacjaPrzyZmianach
          OnExit = edtMoment1Exit
        end
      end
      object pnlCzasPracy: TPanel
        Left = 3
        Top = 206
        Width = 248
        Height = 69
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 2
        object lblCzasPracy: TLabel
          Left = 8
          Top = 4
          Width = 226
          Height = 16
          Caption = 'LICZBA GODZIN PRACY PRZEK'#321'ADNI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblLh: TLabel
          Left = 29
          Top = 33
          Width = 25
          Height = 21
          AutoSize = False
          Caption = 'Lh = '
          Layout = tlCenter
        end
        object lblGodziny: TLabel
          Left = 199
          Top = 33
          Width = 6
          Height = 21
          AutoSize = False
          Caption = 'h'
          Layout = tlCenter
        end
        object edtCzasPracy: TEdit
          Tag = 1
          Left = 60
          Top = 33
          Width = 130
          Height = 21
          Alignment = taRightJustify
          MaxLength = 10
          TabOrder = 0
          Text = '10000'
          OnChange = DeaktywacjaPrzyZmianach
          OnExit = ZabezpieczTEdit
        end
      end
      object pnlZmianaObciazeniaWCzasie: TPanel
        Left = 3
        Top = 281
        Width = 454
        Height = 167
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 3
        DesignSize = (
          454
          167)
        object lblZmianaObciazenia: TLabel
          Left = 8
          Top = 4
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
          Top = 50
          Width = 35
          Height = 21
          AutoSize = False
          Caption = 'Okres I'
          Layout = tlCenter
        end
        object lblOkres2: TLabel
          Left = 69
          Top = 85
          Width = 39
          Height = 21
          AutoSize = False
          Caption = 'Okres II'
          Layout = tlCenter
        end
        object lblOkres3: TLabel
          Left = 65
          Top = 120
          Width = 43
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Okres III'
          Layout = tlCenter
        end
        object lblCzasTrwania: TLabel
          Left = 142
          Top = 30
          Width = 62
          Height = 21
          AutoSize = False
          Caption = 'Czas trwania'
        end
        object lblWartoscObciazenia: TLabel
          Left = 243
          Top = 30
          Width = 93
          Height = 21
          AutoSize = False
          Caption = 'Warto'#347#263' obci'#261#380'enia'
        end
        object lblProcent1: TLabel
          Left = 216
          Top = 50
          Width = 11
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoSize = False
          Caption = '%'
          Layout = tlCenter
        end
        object lblProcent2: TLabel
          Left = 216
          Top = 85
          Width = 11
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoSize = False
          Caption = '%'
          Layout = tlCenter
        end
        object lblProcent3: TLabel
          Left = 216
          Top = 120
          Width = 11
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoSize = False
          Caption = '%'
          Layout = tlCenter
        end
        object lblProcent4: TLabel
          Left = 335
          Top = 50
          Width = 11
          Height = 21
          Anchors = []
          AutoSize = False
          Caption = '%'
          Layout = tlCenter
        end
        object lblProcent5: TLabel
          Left = 335
          Top = 85
          Width = 11
          Height = 21
          Anchors = []
          AutoSize = False
          Caption = '%'
          Layout = tlCenter
        end
        object lblProcent6: TLabel
          Left = 335
          Top = 120
          Width = 11
          Height = 21
          Anchors = []
          AutoSize = False
          Caption = '%'
          Layout = tlCenter
        end
        object sedCzas1: TSpinEdit
          Tag = 1
          Left = 138
          Top = 50
          Width = 70
          Height = 22
          MaxValue = 100
          MinValue = 1
          TabOrder = 0
          Value = 100
          OnChange = DeaktywacjaPrzyZmianach
        end
        object sedObciazenie1: TSpinEdit
          Tag = 1
          Left = 254
          Top = 50
          Width = 70
          Height = 22
          MaxValue = 100
          MinValue = 0
          TabOrder = 1
          Value = 100
          OnChange = DeaktywacjaPrzyZmianach
        end
        object sedCzas2: TSpinEdit
          Tag = 1
          Left = 138
          Top = 85
          Width = 70
          Height = 22
          MaxLength = 2
          MaxValue = 99
          MinValue = 0
          TabOrder = 2
          Value = 0
          OnChange = sedCzas2Change
        end
        object sedCzas3: TSpinEdit
          Tag = 1
          Left = 138
          Top = 120
          Width = 70
          Height = 22
          MaxLength = 2
          MaxValue = 99
          MinValue = 0
          TabOrder = 3
          Value = 0
          OnChange = sedCzas3Change
        end
        object sedObciazenie3: TSpinEdit
          Tag = 1
          Left = 254
          Top = 120
          Width = 70
          Height = 22
          MaxValue = 100
          MinValue = 0
          TabOrder = 4
          Value = 0
          OnChange = DeaktywacjaPrzyZmianach
        end
        object sedObciazenie2: TSpinEdit
          Tag = 1
          Left = 254
          Top = 85
          Width = 70
          Height = 22
          MaxValue = 100
          MinValue = 0
          TabOrder = 5
          Value = 0
          OnChange = DeaktywacjaPrzyZmianach
        end
        object btnZmianaObciazeniaWCzasieHelp: TButton
          Tag = 2
          Left = 371
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Pomoc'
          TabOrder = 6
          OnClick = btnHelpClick
        end
      end
      object pnlZmianaKierunku: TPanel
        Left = 257
        Top = 206
        Width = 200
        Height = 69
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 4
        DesignSize = (
          200
          69)
        object lblZmianaKierunku: TLabel
          Left = 8
          Top = 4
          Width = 188
          Height = 16
          Caption = 'ZMIANA KIERUNKU OBROT'#211'W '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object chbZmianaKierunku: TCheckBox
          Left = 24
          Top = 33
          Width = 159
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Obroty w obu kierunkach'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = DeaktywacjaPrzyZmianach
        end
      end
      object pnlMaterialZebnika: TPanel
        Left = 463
        Top = 206
        Width = 600
        Height = 118
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 5
        object lblMaterialZebnika: TLabel
          Left = 8
          Top = 4
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
          Top = 29
          Width = 39
          Height = 21
          AutoSize = False
          Caption = 'Materia'#322
          Layout = tlCenter
        end
        object lblObrobkaCieplna1: TLabel
          Left = 0
          Top = 58
          Width = 92
          Height = 21
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = 'Obr'#243'bka cieplna'
          ParentBiDiMode = False
          Layout = tlCenter
        end
        object lblTwardosc1: TLabel
          Left = 367
          Top = 58
          Width = 46
          Height = 21
          AutoSize = False
          Caption = 'Twardo'#347#263
          Layout = tlCenter
        end
        object lblRm1: TLabel
          Left = 0
          Top = 86
          Width = 173
          Height = 21
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = 'Wytrzyma'#322'o'#347#263' na rozci'#261'ganie Rm'
          ParentBiDiMode = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblRe1: TLabel
          Left = 312
          Top = 86
          Width = 141
          Height = 21
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = 'Granica plastyczno'#347'ci Re'
          ParentBiDiMode = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblHB1: TLabel
          Left = 526
          Top = 58
          Width = 13
          Height = 21
          AutoSize = False
          Caption = 'HB'
          Layout = tlCenter
        end
        object lblMPa1: TLabel
          Left = 286
          Top = 86
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblMPa2: TLabel
          Left = 566
          Top = 86
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtRe1: TEdit
          Tag = 1
          Left = 460
          Top = 86
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
          Top = 29
          Width = 385
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          OnChange = cbxMaterial1Change
        end
        object edtRm1: TEdit
          Tag = 1
          Left = 180
          Top = 86
          Width = 100
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 2
        end
        object edtTwardosc1: TEdit
          Tag = 1
          Left = 419
          Top = 58
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
          Top = 58
          Width = 233
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 4
        end
        object btnMaterial1Help: TButton
          Tag = 1
          Left = 517
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Pomoc'
          TabOrder = 5
          OnClick = btnHelpClick
        end
      end
      object pnlParametryWyjscia: TPanel
        Left = 463
        Top = 83
        Width = 600
        Height = 117
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 6
        object lblParametryWyjscia: TLabel
          Left = 8
          Top = 4
          Width = 143
          Height = 16
          Caption = 'PARAMETRY WYJ'#346'CIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPredObr2: TLabel
          Left = 1
          Top = 56
          Width = 215
          Height = 23
          Alignment = taRightJustify
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Pr'#281'dko'#347#263' obrotowa ko'#322'a z'#281'batego n2 ='
          ParentBiDiMode = False
          Layout = tlCenter
        end
        object lblObrMin2: TLabel
          Left = 371
          Top = 56
          Width = 62
          Height = 21
          AutoSize = False
          Caption = 'obr/min'
          Layout = tlCenter
        end
        object lblPrzelozenie: TLabel
          Left = 120
          Top = 26
          Width = 95
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Prze'#322'o'#380'enie i ='
          ParentBiDiMode = False
          Layout = tlCenter
        end
        object lblMoment2: TLabel
          Left = 8
          Top = 85
          Width = 208
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Moment skr'#281'caj'#261'cy na wyj'#347'ciu T2 ='
          ParentBiDiMode = False
          Layout = tlCenter
        end
        object lblNm2: TLabel
          Left = 371
          Top = 85
          Width = 38
          Height = 21
          AutoSize = False
          Caption = 'Nm'
          Layout = tlCenter
        end
        object edtPredObr2: TEdit
          Tag = 2
          Left = 230
          Top = 56
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 0
          Text = '456,5'
        end
        object btnSzeregi: TButton
          Left = 516
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Pomoc'
          TabOrder = 1
          OnClick = btnHelpClick
        end
        object edtMoment2: TEdit
          Tag = 2
          Left = 230
          Top = 85
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 2
          Text = '113,15'
        end
        object cbxPrzelozenie: TComboBox
          Left = 230
          Top = 26
          Width = 130
          Height = 22
          AutoDropDown = True
          Style = csOwnerDrawFixed
          ItemIndex = 20
          TabOrder = 3
          Text = '3,15'
          OnChange = cbxPrzelozenieChange
          Items.Strings = (
            '1,00'
            '1,06'
            '1,12'
            '1,18'
            '1,25'
            '1,32'
            '1,40'
            '1,50'
            '1,60'
            '1,70'
            '1,80'
            '1,90'
            '2,00'
            '2,12'
            '2,24'
            '2,36'
            '2,50'
            '2,65'
            '2,80'
            '3,00'
            '3,15'
            '3,35'
            '3,55'
            '3,75'
            '4,00'
            '4,25'
            '4,50'
            '4,75'
            '5,00'
            '5,30'
            '5,60'
            '6,00'
            '6,30'
            '6,70'
            '7,10'
            '7,50'
            '8,00'
            '8,50'
            '9,00'
            '9,50')
        end
      end
      object pnlMaterialKolaZebatego: TPanel
        Left = 463
        Top = 330
        Width = 600
        Height = 118
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 7
        object lblMaterialKolaZebatego: TLabel
          Left = 8
          Top = 4
          Width = 173
          Height = 16
          Caption = 'MATERIA'#321' KO'#321'A Z'#280'BATEGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMaterial2: TLabel
          Left = 53
          Top = 29
          Width = 39
          Height = 21
          AutoSize = False
          Caption = 'Materia'#322
          Layout = tlCenter
        end
        object lblObrobkaCieplna2: TLabel
          Left = 0
          Top = 58
          Width = 92
          Height = 21
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = 'Obr'#243'bka cieplna'
          ParentBiDiMode = False
          Layout = tlCenter
        end
        object lblTwardosc2: TLabel
          Left = 367
          Top = 58
          Width = 46
          Height = 21
          AutoSize = False
          Caption = 'Twardo'#347#263
          Layout = tlCenter
        end
        object lblRm2: TLabel
          Left = 0
          Top = 86
          Width = 173
          Height = 21
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = 'Wytrzyma'#322'o'#347#263' na rozci'#261'ganie Rm'
          ParentBiDiMode = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblRe2: TLabel
          Left = 312
          Top = 86
          Width = 141
          Height = 21
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = 'Granica plastyczno'#347'ci Re'
          ParentBiDiMode = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblMPa3: TLabel
          Left = 286
          Top = 86
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblHB2: TLabel
          Left = 526
          Top = 58
          Width = 13
          Height = 21
          AutoSize = False
          Caption = 'HB'
          Layout = tlCenter
        end
        object lblMPa4: TLabel
          Left = 566
          Top = 86
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtRe2: TEdit
          Tag = 1
          Left = 460
          Top = 86
          Width = 100
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 0
        end
        object cbxMaterial2: TComboBox
          Left = 104
          Top = 29
          Width = 385
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          OnChange = cbxMaterial2Change
        end
        object edtRm2: TEdit
          Tag = 1
          Left = 180
          Top = 86
          Width = 100
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 2
        end
        object edtTwardosc2: TEdit
          Tag = 1
          Left = 419
          Top = 58
          Width = 100
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 3
        end
        object edtObrobkaCieplna2: TEdit
          Left = 104
          Top = 58
          Width = 233
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          NumbersOnly = True
          ReadOnly = True
          TabOrder = 4
        end
      end
      object pnlWspPrzeciazenia: TPanel
        Left = 3
        Top = 454
        Width = 454
        Height = 70
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 8
        object lblWspPrzeciazenia: TLabel
          Left = 8
          Top = 4
          Width = 309
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK JEDNORAZOWEGO PRZECI'#260#379'ENIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTmaxTnom: TLabel
          Left = 51
          Top = 30
          Width = 90
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tmax/Tnom ='
          Layout = tlCenter
        end
        object edtTmaxTnom: TEdit
          Tag = 2
          Left = 150
          Top = 33
          Width = 130
          Height = 21
          Alignment = taRightJustify
          MaxLength = 3
          TabOrder = 0
          Text = '2,9'
          OnExit = ZabezpieczTEdit
        end
        object bntWspPrzeciazeniaHelp: TButton
          Tag = 3
          Left = 371
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Pomoc'
          TabOrder = 1
          OnClick = btnHelpClick
        end
      end
      object pnlSchemat: TPanel
        Left = 463
        Top = 454
        Width = 601
        Height = 70
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 9
        object lblSchamat: TLabel
          Left = 8
          Top = 4
          Width = 143
          Height = 16
          Caption = 'SCHEMAT PRZEK'#321'ADNI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMontazKol: TLabel
          Left = 8
          Top = 33
          Width = 73
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Monta'#380' k'#243#322
          Layout = tlCenter
        end
        object lblLozyska: TLabel
          Left = 356
          Top = 33
          Width = 39
          Height = 21
          AutoSize = False
          Caption = #321'o'#380'yska'
          Layout = tlCenter
        end
        object bntSchematHelp: TButton
          Tag = 4
          Left = 517
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Pomoc'
          TabOrder = 0
          OnClick = btnHelpClick
        end
        object cbxMontazKol: TComboBox
          Left = 87
          Top = 33
          Width = 239
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Text = 'Jedno lub dwa ko'#322'a montowane wysi'#281'gowo'
          OnChange = DeaktywacjaPrzyZmianach
          Items.Strings = (
            'Jedno lub dwa ko'#322'a montowane wysi'#281'gowo'
            'Dwa ko'#322'a montowane mi'#281'dzy podporami')
        end
        object cbxLozyska: TComboBox
          Left = 401
          Top = 33
          Width = 104
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'Sto'#380'kowe'
          OnChange = DeaktywacjaPrzyZmianach
          Items.Strings = (
            'Sto'#380'kowe'
            'Kulkowo sko'#347'ne')
        end
      end
      object pnlWarunkiPracy: TPanel
        Left = 3
        Top = 529
        Width = 949
        Height = 70
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 10
        object lblWarunkiPracy: TLabel
          Left = 8
          Top = 4
          Width = 109
          Height = 16
          Caption = 'WARUNKI PRACY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblObcOdSilnika: TLabel
          Left = 16
          Top = 33
          Width = 98
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Obci'#261#380'enia od silnika'
          Layout = tlCenter
        end
        object lblObcOdMaszyny: TLabel
          Left = 407
          Top = 33
          Width = 177
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Obci'#261#380'enia maszyny nap'#281'dzanej'
          Layout = tlCenter
        end
        object btnWarunkiPracyHelp: TButton
          Tag = 5
          Left = 869
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Pomoc'
          TabOrder = 0
          OnClick = btnHelpClick
        end
        object cbxObcOdSilnika: TComboBox
          Left = 124
          Top = 33
          Width = 277
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Text = 'Lekkie - silniki elektryczne, turbiny gazowe i parowe '
          OnChange = DeaktywacjaPrzyZmianach
          Items.Strings = (
            'Lekkie - silniki elektryczne, turbiny gazowe i parowe '
            #346'rednie - silniki hydrauliczne'
            'Ci'#281#380'kie - silniki spalinowe >4 cylindr'#243'w'
            'Bardzo ci'#281#380'kie - silniki spalinowe jednocylindrowe')
        end
        object cbxObcOdMaszyny: TComboBox
          Left = 594
          Top = 33
          Width = 269
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'Lekkie - pompy od'#347'rodkowe, przeno'#347'niki '
          OnChange = DeaktywacjaPrzyZmianach
          Items.Strings = (
            'Lekkie - pompy od'#347'rodkowe, przeno'#347'niki '
            #346'rednie - obrabiarki, spr'#281#380'arki od'#347'rodkowe, mieszalniki'
            'Ci'#281#380'kie - betoniarki, maszyny rolnicze, pompy t'#322'okowe'
            'Bardzo ci'#281#380'kie - m'#322'yny, kruszarki, maszyny wiertnicze')
        end
      end
      object btnDalej1: TButton
        Left = 958
        Top = 530
        Width = 106
        Height = 69
        Caption = 'Kolejny Etap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = btnDalej1Click
      end
    end
    object tshEtap2: TTabSheet
      Tag = 2
      Caption = 'Etap II'
      ImageIndex = 1
      object lblOstrzeżenie2_1: TLabel
        Left = 3
        Top = 573
        Width = 949
        Height = 28
        Caption = 
          'Przekroczona warto'#347#263' obliczeniowych dopuszczalnych napr'#281#380'e'#324' styk' +
          'owych w stosunku do dopuszczalnych napre'#380'e'#324' stykowych.  Nale'#380'y z' +
          'mieni'#263' parametry wej'#347'ciowe lub wybra'#263' inne materia'#322'y na ko'#322'a z'#281'b' +
          'ate. Wi'#281'cej informacji pod przyciskiem "Pomoc".'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object pnlNaglowek2: TPanel
        Left = 4
        Top = 3
        Width = 1060
        Height = 74
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object lblNaglowek2: TLabel
          Left = 8
          Top = 3
          Width = 73
          Height = 23
          Caption = 'ETAP II'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNaglowek2Tresc: TLabel
          Left = 8
          Top = 30
          Width = 1017
          Height = 32
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 
            'Okre'#347'lenie dopuszczalnych napr'#281#380'e'#324' stykowych na podstawie dobran' +
            'ego materia'#322'u oraz wprowadzonych parametr'#243'w pracy przek'#322'adni dla' +
            ' dalszych oblicze'#324' projektowych.  Znajomo'#347#263' tych napr'#281#380'e'#324' pozwol' +
            'i na wyznaczenie obliczeniowej '#347'rednicy z'#281'bnika.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          WordWrap = True
        end
      end
      object pnlPodProbZmecz: TPanel
        Left = 3
        Top = 83
        Width = 500
        Height = 117
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object lblPodProbZmecz: TLabel
          Left = 8
          Top = 4
          Width = 224
          Height = 16
          Caption = 'PODSTAWA PR'#211'BY ZM'#280'CZENIOWEJ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPodProbZmeczKola: TLabel
          Left = 40
          Top = 68
          Width = 66
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'NH lim2 ='
          Layout = tlCenter
        end
        object lblPodProbZmeczZebnika: TLabel
          Left = 40
          Top = 34
          Width = 66
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'NH lim1 ='
          Layout = tlCenter
        end
        object edtPodProbZmeczKola: TEdit
          Tag = 1
          Left = 122
          Top = 68
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtPodProbZmeczZebnika: TEdit
          Tag = 1
          Left = 122
          Top = 34
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object btnDalej2: TButton
        Left = 958
        Top = 486
        Width = 106
        Height = 113
        Caption = 'Kolejny Etap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnDalej2Click
      end
      object pnlRownowazna: TPanel
        Left = 3
        Top = 206
        Width = 500
        Height = 117
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 3
        object lblRownowazna: TLabel
          Left = 8
          Top = 4
          Width = 267
          Height = 16
          Caption = 'R'#211'WNOWA'#379'NA LICZBA CYKLI OBCI'#260#379'ENIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblRownowaznaKolo: TLabel
          Left = 40
          Top = 72
          Width = 66
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'NHE 2 ='
          Layout = tlCenter
        end
        object lblRownowaznaZebnik: TLabel
          Left = 40
          Top = 34
          Width = 66
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'NHE 1 ='
          Layout = tlCenter
        end
        object lblRownowaznaWspol: TLabel
          Left = 267
          Top = 37
          Width = 185
          Height = 30
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Wsp'#243#322'czynnik zmiany obci'#261#380'enia kFE'
          Layout = tlCenter
          WordWrap = True
        end
        object edtRownowaznaKolo: TEdit
          Tag = 2
          Left = 122
          Top = 72
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtRownowaznaZebnik: TEdit
          Tag = 2
          Left = 122
          Top = 34
          Width = 130
          Height = 21
          Hint = 
            'Warto'#347#263' wspo'#322'czynnika zale'#380'y od obr'#243'bki cieplnej|Sh=1,1 dla norm' +
            'alizacji, ulepszania lub hartowania na wskro'#347'; 1,2 dla hartowani' +
            'a powierzchniowego, naweglania i azotowania'
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtRownowaznaWspol: TEdit
          Tag = 2
          Left = 296
          Top = 61
          Width = 156
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object pnlWspolTrwalosciPracy: TPanel
        Left = 3
        Top = 329
        Width = 500
        Height = 117
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 4
        object lblWspolTrwalosciPracy: TLabel
          Left = 8
          Top = 4
          Width = 228
          Height = 16
          Caption = 'WSPO'#321'CZYNNIK TRWA'#321'O'#346'CI PRACY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblWspolTrwalosciPracyKolo: TLabel
          Left = 40
          Top = 68
          Width = 66
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ZN 2 ='
          Layout = tlCenter
        end
        object lblWspolTrwalosciPracyZebnik: TLabel
          Left = 67
          Top = 34
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ZN 1 ='
          Layout = tlCenter
        end
        object edtWspolTrwalosciPracyKolo: TEdit
          Tag = 2
          Left = 122
          Top = 68
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtWspolTrwalosciPracyZebnik: TEdit
          Tag = 2
          Left = 122
          Top = 34
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlNapreKrytyczne: TPanel
        Left = 3
        Top = 452
        Width = 500
        Height = 117
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 5
        object lblNapreKrytyczne: TLabel
          Left = 8
          Top = 4
          Width = 338
          Height = 16
          Caption = 'NAPR'#280#379'ENIA KRYTYCZNE DLA BAZOWEJ LICZBY CYKLI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNpreKrytyczneKolo: TLabel
          Left = 40
          Top = 68
          Width = 66
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'H lim2 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblNapreKrytyczneZebnik: TLabel
          Left = 24
          Top = 34
          Width = 82
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'H lim1 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa2_1: TLabel
          Left = 266
          Top = 34
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblMPa2_2: TLabel
          Left = 266
          Top = 68
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtNapreKrytyczneKolo: TEdit
          Tag = 2
          Left = 122
          Top = 68
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtNapreKrytyczneZebnik: TEdit
          Tag = 2
          Left = 122
          Top = 34
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlWspolBezpieczenstwa: TPanel
        Left = 509
        Top = 83
        Width = 555
        Height = 117
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 6
        object lblWspolBezpieczenstwa: TLabel
          Left = 8
          Top = 4
          Width = 217
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK BEZPIECZE'#323'STWA '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblShKolo: TLabel
          Left = 40
          Top = 68
          Width = 66
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SH 2'
          Layout = tlCenter
        end
        object lblShZebnika: TLabel
          Left = 67
          Top = 34
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SH 1'
          Layout = tlCenter
        end
        object cbxShZebnik: TComboBox
          Left = 120
          Top = 34
          Width = 145
          Height = 22
          Hint = 
            'Warto'#347#263' wspo'#322'czynnika zale'#380'y od obr'#243'bki cieplnej|Sh=1,1 dla norm' +
            'alizacji, ulepszania lub hartowania na wskro'#347'; 1,2 dla hartowani' +
            'a powierzchniowego, naweglania i azotowania'
          Style = csOwnerDrawFixed
          ItemIndex = 1
          TabOrder = 0
          Text = '1,1'
          OnChange = cbxShChange
          Items.Strings = (
            '1,0'
            '1,1'
            '1,2')
        end
        object cbxShKolo: TComboBox
          Left = 120
          Top = 68
          Width = 145
          Height = 22
          Hint = 
            'Warto'#347#263' wspo'#322'czynnika zale'#380'y od obr'#243'bki cieplnej|Sh=1,1 dla norm' +
            'alizacji, ulepszania lub hartowania na wskro'#347'; 1,2 dla hartowani' +
            'a powierzchniowego, naweglania i azotowania'
          Style = csOwnerDrawFixed
          ItemIndex = 1
          TabOrder = 1
          Text = '1,1'
          OnChange = cbxShChange
          Items.Strings = (
            '1,0'
            '1,1'
            '1,2')
        end
      end
      object pnlDopNapreStyk: TPanel
        Left = 509
        Top = 206
        Width = 555
        Height = 117
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 7
        object lblDopNapreStyk: TLabel
          Left = 8
          Top = 4
          Width = 244
          Height = 16
          Caption = 'DOPUSZCZALNE NAPR'#280#379'ENIA STYKOWE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblDopNapreStykKolo: TLabel
          Left = 40
          Top = 67
          Width = 66
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'H2 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblDopNapreStykZebnik: TLabel
          Left = 67
          Top = 34
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'H1 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa2_3: TLabel
          Left = 268
          Top = 34
          Width = 45
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblMPa2_4: TLabel
          Left = 268
          Top = 67
          Width = 45
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtDopNapreStykKolo: TEdit
          Tag = 2
          Left = 122
          Top = 68
          Width = 130
          Height = 22
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtDopNapreStykZebnik: TEdit
          Tag = 2
          Left = 122
          Top = 34
          Width = 130
          Height = 22
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlOblDopNapreStyk: TPanel
        Left = 509
        Top = 486
        Width = 444
        Height = 83
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 8
        object lblOblDopNapreStyk: TLabel
          Left = 8
          Top = 4
          Width = 341
          Height = 16
          Caption = 'OBLICZENIOWE DOPUSZCZALNE NAPR'#280#379'ENIA STYKOWE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblMPa2_5: TLabel
          Left = 268
          Top = 35
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object Label2: TLabel
          Left = 80
          Top = 38
          Width = 22
          Height = 14
          Caption = #963'HP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtOblDopNapreStyk: TEdit
          Tag = 2
          Left = 122
          Top = 36
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object Button1: TButton
          Tag = 6
          Left = 361
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Pomoc'
          TabOrder = 1
          OnClick = btnHelpClick
        end
      end
      object pnlMaxNapr: TPanel
        Left = 509
        Top = 329
        Width = 555
        Height = 151
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 9
        object lblMaxNapr: TLabel
          Left = 8
          Top = 4
          Width = 406
          Height = 16
          Caption = 'GRANICZNE NAPR'#280#379'ENIA DOPUSZCZALNE PRZY PRZECI'#260#379'ENIACH '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMaxNaprKolo: TLabel
          Left = 40
          Top = 96
          Width = 66
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ko'#322'o z'#281'bate'
          Layout = tlCenter
        end
        object lblMaxNaprZebnik: TLabel
          Left = 67
          Top = 62
          Width = 39
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#281'bnik'
          Layout = tlCenter
        end
        object lblMaxNaprStyk: TLabel
          Left = 164
          Top = 34
          Width = 48
          Height = 14
          Caption = #963'HP max'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblMaxNaprGnac: TLabel
          Left = 321
          Top = 34
          Width = 46
          Height = 14
          Caption = #963'FP max'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblMPa2_6: TLabel
          Left = 423
          Top = 62
          Width = 50
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblMPa2_7: TLabel
          Left = 423
          Top = 96
          Width = 50
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtMaxNaprStykKolo: TEdit
          Tag = 2
          Left = 122
          Top = 96
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtMaxNaprStykZebnik: TEdit
          Tag = 2
          Left = 122
          Top = 62
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtMaxNaprGnacZebnik: TEdit
          Tag = 2
          Left = 279
          Top = 62
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object edtMaxNaprGnacKolo: TEdit
          Tag = 2
          Left = 279
          Top = 96
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    object tshEtap3: TTabSheet
      Caption = 'Etap III'
      ImageIndex = 2
      object imgWymiary: TImage
        Left = 639
        Top = 117
        Width = 426
        Height = 383
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000001A90000
          017F0800000000D62069B500000002624B474400FF878FCCBF0000000774494D
          4507E50C1412172F2126C389000001167A5458745261772070726F66696C6520
          7479706520696363000078DA95536B6E2E2108FDEF2ABA045E022EC7414DEEFE
          37509CC7977E4DDBE4928C0F043C9CE3947F11E5639B542DB00DC33594751803
          E1E9D2A1D3C4A892981041F5DA6A27009B39006792E4DCF29BB91E4551D9D840
          4665D12A709BB1A2598EBCCB69C01FB6F2D68D081FC7601AEA597AAAB4D1D2CF
          43C0E138E704168E6DF64AE4F37BB102FF674D13F6C67963B9DD7595840E4676
          B584F0B410D996E4C9ED47BFDCB8593BD9BAB6148FBFA87D3D782842D1B78487
          BBB390A4001722D4FB02855DE8C703FD25E1BDB597D562F512F837526C27BABD
          D41416DE555ECFE12BD98B4FE88F7A881AED7BE089675D9DB22F7A164FDC9B6A
          4A4DF77C98B7B3A28FFEFDFAA0FB0000402C4944415478DAED9D774013E71BC7
          2F80CCCA1601D9DB81286E45DC7B5BF7AAADB5B5D5B6D6D1695BEDB4AD55DB9F
          766FAD5A57DDA32AA84C07A0202361EF15020442F6DD2F9779974B7277C92521
          25DF3FC44092BBDC27EF7BCFFBBCCFA041805516219A959485C84ACA52642565
          29B292B2145949598AACA42C45565296222B294B91E59262B303CC7D0A2695C5
          9282EEF50937F7399854164B8A7D766488B3B94FC294B258520FB98FD30726F4
          F7B631F789984A964AAA33650A70FEE3D2F051D3E73998FB5C4C234B25F5C866
          3000947C765430E36F37739F8B6964A1A4B8C913E19B14F7D877CF85FB46F688
          FB9585927AC21F26FB4F8D8F80D1D037D2D5DC27647C592629C1AD84DEAA47DC
          921A8F680F739F93B16599A4E8ADA3518FF9E5154F45F731F759195716494A78
          6B94FA10125596DA47FBD2CC7D66469445922AAB1B876522AE2D0622FBD99AFB
          DC8C264B24254E1AA271A6831AE882F0A05EE63E3D23C9124955974ED036CD35
          D33B4342FF9B4B610B2405260FF0D3FED7567A6B408493B9CFD108B240520DF9
          93743AFBD8C58DBE514F99FB2C2997E59182EE8606E13CA5ABA4C62BDADDDC27
          4AB12C8F14337B0ABE81C72FAB708DF636F7A9522A8B2305A5FB8511799EB0A2
          CC31BAEF7F68816571A4DA32A710B4C3C5D5253651FEFF99FD2B8B2375CF3D9A
          F073C17A862822D0CEDCA74C8D2C8D5447EA6432CB25A8B9881B1A626FEEB3A6
          4296462ACB6110C957B08ADA83C21DCD7DDE86CBC24875DD9E447E55DBCE68F6
          8F7431F7A91B2A0B23952B1EAACFCB38C5757DA22C7C17DFB248F193C6EBE97C
          E09556B9477B9AFBFC0D9165912AEC18A9F76B0515652ED17D2C77816551A484
          B7C618328589AA4AEDA2FC2C75816551A44A9AC6183626C0DA623032C032771B
          2D899428699897A1EF0135D279E1C196B8DB6849A42A2BC753719B61D23B82C3
          2C6FB7D182488149B17DA979A7367A4B4084A585735A10A9BAA2899459031DC5
          0D7DA37A1BFE3E2694E590826E475299DAD6555AE3196549E19C9643AAE9F164
          6A8D360B0BE7B41852506A6008D5EF29ACB2A0704E8B21C57A30C5081B4DE25A
          062DAA9F452C862D851494E91D699C37AE670822822C60B7D15248B1D3A6186D
          3FB089CE090DC15D6041669E252D85D443E701467C7716A335305CF7C617F41B
          7365A039AF808590E2DC9D64DC6D5B36A3C92F52D78E4AF96C5BAF956BCDB81F
          6921A41ED1E28C7D084E49AD77B456573DF8E1E9538CCF133E34DF36BF6590E2
          25279AE0DBCC2BAB748BD6E20366CC7D713B90FCDCC91166BB0696412A9F3BDC
          24C71154963945FB68301DC0777EBB1A0F24AF3D35C66CD7C02248096E8D3355
          CAB5B8BAD856433867FE025F97A9EEBF04FF6C3E5FA1459062B0461BFE264405
          D631C4EAE19CE26D69FFFCF8DBE4E8F5FDCC77112C8194E8D64893BA52A1263A
          372C18B97C7BB8E883E72FEFBEEC63CEAB6009A4CA6B124CBDEA6CA1B70787A9
          ECBC6BC7F67B3F5AFD37D9A0504A6501A4B4A5F51A57ED7466BF0885C109F29C
          81BA599FCD36E765B00052352513CCE2C8E92CAEF789525932DCD5D3562771C7
          E165D9194DDD9F14783BC6DF4C87E69656ABC239217ADD49D190476F4499E964
          BA3FA9862793CDB72B21282F778956181257DF9AB7E07A9F17CD742ADD9E1481
          B45EA34A5455621FE5279D7E3F153F7D3D69E37C339D48B727D5924520ADD7A8
          12D731206938E73F673FF7AAF1359793B6BB9382D27DCD5F18186A60F0C3827B
          717FCE0ADB6AB6FA74DD9D14F1B45EE38A49EF0809B36FE005986D77B8BB93BA
          EF1A63EE5390AB95C10A8834636E633727C5BE35BBFBC42577301A7D23CDE6A2
          EDE6A4D2EC4699FB1490EA2AA9F53457F198EE4DAAEB9761FDBB579C2BBFACB2
          B7798AC7746F520F986DE7031287F8750BA3422E6165A9598AC7746B52BCB3B3
          DDD2F6A4F90F9FBEBC3BA5BE8B6B8ACD10CED9AD493D6A9E4A039887FEC71A7D
          D6CFF077A35060035D146EE270CEEE4C4A70760ABCDD21BEB977FE40D7A86E96
          F8DE44E78499B4784C77265550314B763B60BAD8223DA5DD442C7A1B5E382795
          EAC6A444FF8C436C77203CA5DD466C46937F84A9AA7376635225057351776DB0
          96014575B332DB9C925A53158FE9BEA4C4E78705ABFD0AA7CC76EB774B4CBFCD
          07178F893238A59F80BA2FA9AA870B348C1F5D65B6FFFCE45C7F339CA8A0A25C
          733827B5C223C5763693F318BA382042E31F604F69B8A6C4F79605933E34CF7D
          4C545D62FCE23138A4381989662A63589FBA48DB7704F6946A28B3FDD3DE5F06
          9BCB9407EB186044A051EFA138A44C9063A159D0B5601D09539ACA6C37CD87E2
          AB57AE3097C501178F090B31A2DB4B372979EB3433887973B1CEC18CF1944287
          7FF83BF0DCDED3E6B85329CE99CE468673522CDDA494ADD34CAE9BDE43709EA1
          E629AD9BB76A3B5031F3DBC9663A61A9DA18CC7EC6EA05A893143F29C14C1B67
          6D5717E17F39C535C53691724F29B8EFC8757FE0F43B978D93B74D589DC5F546
          2A1EA39354115BFFC28786E9AE23A123C365B6659ED2F6E79887622B57C71D34
          FB0689B17A01EA20C54EED9C61A6DAAD9D171610DCE6809A659E527173EACF61
          B9BDBF0F26F632A3CA38C56374904A5BD0F7FBF1E6F9AC99A204C4A3B63B7571
          23B48F1516BD0D2EB30D66A67BCDA6A85899A1827B0152EDA4D4416ADFCE0167
          CC1318C4FD670E6230976DAF8A2C5FB0438729D80DCB6C53DF0B503B29FE92E4
          DF9798E7633E64232CB8F6673BBE0BBDBFE990CEE1DD0DCB6C53DD0B503BA992
          C98BBEC47E8FC502E3EFC8F04ECC45AC947EF9ECF41040B060FE4B382F2AADD2
          9AF86E2E51DA0B503BA9E3DF1FD390D55A241E68F40F98C558A19AE2D9F3C77E
          42035A67BEB45EF240D8AA6337515051EEDCDD761B29EC05882505DEB9EEB5C1
          8DEFF4E1A8991AAEC6ADB1469F638447693531F101F2F1FC70D55F2300E0C68B
          A7E3250FFEFE72EE3A1DDDA74CE22925A90E46A3EEE231448525F5E4E0E42B5F
          543639B52CD5E0213545167B3E7DF68D2F6A868C1F3D00F6EC5DFCE07A1F80B7
          0EF853B2127EB4797A4EF58A4D3A169670996D237B4A49ABABB8D63BCAF0704E
          2CA9E3EC18C6B36F6F78240E89C2AC093434A7A65CA2BF138281CACF7FE3B97F
          BF5CF2F0DE0B7FC7803F7D76446250343D37E283CEEB652FD2F2E3B44F2846F7
          9412525727721AE695551ADE0B104B2AE5A0CF56FEC1772A12EAB0810BA50D63
          8DBE03549CBD54327FF1CF7C24D83322C401E8DA56BBACE0E4F64D92DFA5BD30
          70C354C97839F1E53F3A93DFBA4199EDBAB204D4630AC239D1A420B15D91C3B9
          6331ECF57EDE11D835017423DEE881BEE0A961B21DC4270DC324B7E37067D6AF
          E9CE2B660276F07AF2F26F5BD7D1DA17C7EFC599DFDA184CF396D9562745412F
          4035527FB4D15FED5F5AE1EF274B5B42AF094A2AED8D5F18A23215B1C524DB33
          14DAD8667EBF47EA27FAE6EFCBEE473EFB07BF011F5C663BD26C59691A4819DC
          0B10410AAC1107D4EDBAF3FCB298ABB10D2E8A7D1ED59A007CFDD8BADDC6F6AD
          43676350CB00B85876B43BF0CF8767CA1C24B7AA3F0FDCB49DD739CD67157E3A
          BDB13CA584A489145C3C86D1A5772F401529F08F83A2F8F5A2F687D9E1751F35
          4E54CDF38A3541CB8CAC57BE3076AA57FD8D956AD600BFBCC2D5F1CAF8C43F0E
          7D31AA7A63FC81BF3EFCD8EB07BB9F0818BE662CB3AD9914A07452EA2115A9BA
          75EBBD4E64446F9851712DC2BFD760E493B88CFABE914FA54F8F3D45656D794D
          822E05609BB609AB9ED046F615FEEF943B33EC2BE78553760319EBCF13F2489A
          ADCC7663C9386D7FD2D749A92255B2E7472751CE9F753F784BD6B71390B763D6
          C55E2378B5DE970E1F9F6AEC4FC8BCB852D3170EAC650091FE9545AE437AFFB2
          FF6218F0CF3BD7086E6FE8EF296DAD02B11709006984B837F3E6697F5E67893E
          4E4AE549F0AFED5DB9DA0B00DBDD6C80278278E465FABC88563F75B66853E457
          469F4AAEB96B5959C3B64D64080D60CDF3386BDFB9DAF517C2B33DFC4A7DCA6C
          7F794039C1F254DF9EF65E844C4AD1D4C3BA9674DC32F2BD0015A4A03FBF0DCF
          755FB1B01F0DB3292F7AF7A5C0FBBF7BAFF9E6F916C728E3A678B59D5DA1FD42
          486D1BC195148FB117EEFC49AA86A6E495A13E9963C8F909B6E57D21FF5FAE68
          A8E2538BB60EDD40E888FCB9BA2F94B417202927A5724C6D1FBDB8FCD41960DF
          4400A0B721936BA1BB9F0E783126BF5418324C4B4149EA946C9BA8EBCFAD8C96
          C0A89603B99E9BC791FCC2B4165F3F38F17D521171DBEA4EC8FE93C71AA71C91
          E279896F1179B18EFB9442647B012A4815BCB76CB9C4AAB8313A1A10DE1A8DFC
          F6B1DE48C8CF897BCEFE426C54A0AD71FB83779E5C82B304922C937C23ECECC9
          9F8078F32FA2D05D2B9D803617829EA66DB527E0AF03F4B8759C6AA6E52F487C
          87C88BB5DA7E48C12911C47B012A48DD7ABF65D1CA4152C26A2EA37B27BEB42B
          3A15D7CFD9AB9017116C0734D28DD61F3C8D8B6FB24896499ED12216D95401B0
          323B35BD76E6CEA0D4F1046D641929E8516B02E2C3524A8A5C2F40E5ECC7BCF6
          67D5C4E786DB00E25B0A97119472C273FED07307E3568DEAD59E3ED901601675
          8686DAAB1794A44CDC130B88DC65F9155597FE7D6305F95D9F564626372C9268
          EB66292928873D16F9ADEC9A33FD6D222F26480A20E1A44418A01DB77F0DFBDC
          0EA82A4F940FA992F5E1CCE251EBFCAEDDE8B7ABD551EA3A902CDC6048923581
          AAA024657AD844B02865D39C87F66BDE090720612F92F72BF6B55944BD2C3029
          7550C294D7D6BE41E4C5C44911EE0588F2FBF1B81E00983CD057FEF0EC8D43FC
          8CDF339FFEA4E9765CD544F9206AA73303229DD40B4A5221C1F19904438BB877
          EFA41504BE3D5F90379AA47943228251420AC8EE18879C9A841976BBA7BC49E4
          C5644811EC05A8B6EBC1716A2A507623BC71EC2B4F4098C59D480372EC6255EF
          2BDBC5441594A442B9650B888F908ED2F4BC9181FE24DBB2A8194B3AB5ADF678
          4EE75834A8A706CC9B6A0452B2BB2F4E2F403429F04913738C7CF50F9DFBA634
          FAD919D22012CE9D49C8DB02A7B80E1E50024AD3A445C72791F35509CBB31791
          DC8522B3BFB6BDFA8DAE3168502EF17C239122E0A4541B5310FD66A4DCB2E3AC
          993DF09F2B1EAB57B96948CE910C28D8C52DAA2AE915ED4BCD028B9EFB34C937
          7A6C134BEE052A63898076DCDD3716B91A8041D178F3A6517E9F521E40B79352
          8D94F8A791A145326F6FEDFB1FFB01C527330F866B4CCEE19755C0515BE4D604
          BAAEE2C95161E45EC1BD3D81E466A1CA5822A0ED2567D4400DB50178F366EC20
          F2627D48C98AC7687552AA91BAF9F5EF5E326FAFF36787363C172AB1965C6C81
          5C51BC86970A2BCAE0A82DB8A02405118865F79691E44D3A6508612C11907CE5
          ABF8B0F088927C3BE6CDDA4EE4C5FA91D2D90B104DAA7149EC21780A82BDBD4E
          B78FB3E7AD8C9120E025256ADE0D826B44C0E395820844F0CC60FC8D5C94C8A7
          0C916BDD8C22251B51125273E618951420EF0558E98DB1D550A4441F7C716485
          ECBFDCB21A77F77B47AB76ADD1D953084E61823D815AD3A489AA267925491711
          DA3B4940D09D0832260B92947C449120556A40EE058B51B3DFF303F54E574852
          D0D5358EC9CA6FB6A0A2E2A9BE858171385F5EB09E0EC2372AC30A4A42E7C306
          937B0519835BA6E647A45A37234829461471521D6D06F5543CFD4C57C01BEB7B
          0322B16AA64292E23C7772DA7984352EAA2EB58FEC6B83B75A841AE97C786E35
          A4A064E3D555245D8965F52403DAA0D4805032CF5791528E2809A9B9735FD7EF
          13925253464A5A45E25B43727BABAC2C2429F1BFE7473E877A05585B6C1B7A7F
          02EE0662739134DD4C620FEA1781085DF521D9B48D94C12D55EB7D72AD9B95A4
          54230AF6FBCD27448AD341C276D1A8364646E378D114D51D05494A903CC6457D
          7E8098D7B222C60CC4F5C7B6D0DB43C21CF48D40649D27EB702565704B3FC83D
          4F72FE770529C48892909ABD801029032C0A95F8A9AE889B159214A3454317C0
          D6CF56B53CB01F13876B2EB4D15B02239C5069D28475D30977E30D2D7206372C
          D2AD9BE5A49023CAD4A492131036378294C6D669E0DEFC3FECD839F7A0D1F1B8
          E64207BD098EBA21BFDBC83EBD8C6436447DC124925F86874E24D38964A45023
          0A9EFD16BE46E4C594902AEC401A0808521A5BA7DD59BE6B0B7C86B969BC9123
          70CD054E711DEC14869A8B48ED36DE154F22F719A03BE1246D2BF2AD9BA5A4D0
          234A3271CC5AF50A91171B64A5CB25BC350619C0A422A5B1755AC3F2DC5B32FF
          04BFE06E7BFC18DCA43F6E49B5578C1BB908C4AE930B8D6B704BF418205B5668
          7BCD099ADA8802B837DEDCBC85C88BDB9811449EA653254D6390C75691AA2EC5
          B64EE3BFFBD5B82B8A5D2821E34E635C02AEEF9C5F5AE916E3492602F1016B32
          C9DA75E9FEA1E45EC1BF3D9EECBAFC8DFA132235505D699EDB96101A53144894
          340C352E54A46A1DB103A6E1F9EBAF7FAE3A5771D99DCA0189B89D52E108A998
          3EB234E968FCDDC6BC2D3417F593913F06699A1F377ADB6AF83BE6E5AAC782F6
          3E3AFFAEE170F909BFA98FA894E0C0994B0991EAEA30B8DE4265E5789D9F0E2D
          F07ACD0854FD22A8EA0E2362126EFCAAA8B2D40136D68944208A5EBDBF487E2E
          9522943B1D2AEC839A8FC54F4265DC4B7CA50608BF300639BFD2DA2B0620ED18
          5A13335A7E8F119646D900B42A6128EAB3339C51DE2528DF0FF95DB51DD14B6D
          44A506C570662F2534FB196E518049B168D8BA493173A6617E577F372F687238
          DE62465CC3B08DF6B321108198B7E8F3A765FFAB2E1C879A2D1F778E46DD8D32
          7B0D935F3269F33051AA2F2A389D93D61F6566B43C18AE581C97312556544DC1
          58948559543B1E65F464F1517BFD509A93DA880A8A013AE72C7F99C875369C14
          C69DAC931494E6AF69CF88999AD5774A14DE2D1D2E4E0817F8C5499306DF7C78
          4E66E294172620A74A28A703B5372ECAB41F2E7B1799C1CD4BF543D9DDECD401
          21C8C78DF74729BE21A25B233C818A02D4DB03F9B5E391AB6DF0011FBB718878
          0C8F28C94264F64AD390826E47A9DD657492D2EA8069CBC8749F3C106FC9248D
          25972CAC74EE3616CF7BFB19E97FF0406538C841C90C6E5E8A3F0A547BEAC010
          E4E3A6CC51CAD9A3A23A818601559F809C3AF14049479484D4AC55A621D5F458
          DDBAD5450ACAF4D2EA80E97C90EA30290E77C9D454C485D3A3B54720421F5DB9
          249DA3F040DDB31B211F9752839B97E28BDA9A6F4F1988F2BF36DF1BA104254E
          8AF33110946C44998E14941A18A2F62B5DA4DAD375396078D977A009C3F01D82
          45EC50789791496787688840AC9AB7495ABC0507943853098A979CE802F0D2FA
          0E445E495DA0809AE28995D48092CC7EAB3711B9D28692623DC0CC663A484139
          4EBA4B850AF392BB1246E22E99DA8A5A03231C61C720AB9F7A0422B4FFD3BFE1
          0867DC7B542F0528E9BE263FB52FAA07BC4E50E0ED01FC7C6A4049C6D45A42FD
          7C0D2405657A632A4AEA22C572C58B8E101725B1468FC15D32B1E9CDD2A29FD8
          08C4C6F9AD76CFAFF7549B9BB023CA66A462D616DC1AE7CA4BF5253EA280C6FC
          308A4694E493CC7CC614A434B9930DAD6C0F9526D5C727E0263EC3453FA39F82
          13ACABBD9011883F1DFC2BE350BF0D6E48A73116D43D9B914ADB91C11ACD4FF1
          89D505AAE9DE4804282815EA1A4B112853917AE0820D39A5A00741D5EDF24189
          B89B8D5D2535DED16EB208C418C53AA775DEC48F81C27D5796BC815809690035
          426907896E8D744EF519A47344658C44EE88B0CEF8255205CA44A434BA9329E9
          16D170971E9588DBCB0BEE80013B2C8495650EF2DDC6E31F9C97DC0AF997BF14
          6E5FA858DC6041D146AA0CD6F2DA912938A0EE0D476D5D5DA85D839A700D0105
          B067ADDF48E48A18464A63957A8AFA7AB4A4E5054FC0DD881094974BC793B47D
          9DBF2DD0B272C0575208B5DF9E18F3862CE40503EA3E8000254EEE4FEF430A14
          2369252AF9D920509231F5DCF344AE8741A43457A9A7AC034BC7BD1C9F092178
          CF12C3BBF7B0EBA09E210C4DFA2BF7A43CB50D4CDF5BF2E27A0F3C50404DA18D
          F76032A0AA8ECC41392E0D0305D4CF7CC5F8A4F2799A424E359212B4492E19C9
          B7A7D974663DF09DDA9706EA7A258D26AA2E761CEC4603A0E63B1F36DAECD9A5
          F84BFBD1C3816F4EB0CD569FFA8051C8C24DD75B06EB1C51CC4C34A8CAFBD042
          A4156520A8B67FDFDF492823DB1052825B1AA3F634926A2B6CE1E9D142D2B6AB
          A6A63A3EBA17A8F35936A296F6FA507F3B206F271B987954E5BE2ED8777BE914
          9751C82B277E00224101753F2DD43DA23247A0405514397B22175E86824A0FDE
          68FCD94F4B0D452DB3DFBD86057A1D455494098D1E80E7BC851AE9C2C840E6D4
          E250B0DFEBD3948E0BFEA52F99BB97202EA5F801849CFA00FEA95054640CD6EA
          1B81FA8255140ECB4E444CF986824A8B739BBE111D67A7450690D218CE026825
          7594AE6F2B27B024933B7C105E903AD44417B0DF7C675AC7A1AB895BE39487AA
          FDEEF8D89DCA605AF17D10B5ED2138DFFA3CD2278F9DFA86A141158CAFE22372
          1FF040A5F71EAA1BD4E0C0B6199B9E2572150C205556A7B9848316521FE49ED4
          3B7B03AACC6C8F8BC38DDF6BDA58F76B7F3BD1DDFD8CD5CF2B1DFC60DADE52A9
          6521BD922234A8F48299C84D180CA87BF16AA0121C91533E2EA8A7E2F140016D
          D35F22464AEF88178DE12CB0349312AF7B926C486268DDFDA601437002C3F29E
          7E2F861914EED871FA90ED96C5CA27B71FF936F0AD445BF84A8A47A141D97027
          23BE3E0440B916B5ABB20CF040A5BAE283224C8AD5A86F77254DE12C526926D5
          399371C7B0464ECD0F6B2386EAAAE204BE917DBEB72CBDBBE6C7E303B62528A9
          482C8B25AF0482F7C5E81195DA87EB8648DC21020A9965800BAAF7307C5040DB
          0C6935705C4180BE378FE4015A6C39CDA4AA26D45C9C0918A6B6EC8AA078ED03
          93316FD75AC98F4E46835FB473F681B4B95B947B61FC8BFBC4DB8351EB284090
          E21591325975FBC3BF4725B822D37AA9012521B5791D910F2FE0E95957A0215F
          5BC8A96652394BDABE5AAFDFA110EAC82DF18DD7E21084F65CBF2433D0BB8A6B
          7D62ECAFED673EBF469913507BF878F83EE48A5590E61197EDA032B831A0D287
          A3AA684A4121B20C48830A46E5DD294001ADD35F2144AAA17C0C91A7612FCBDD
          506DC5903593E2A4B7E32778101037BFC873A8C6D15C35E725E5E629AFA4DAB3
          BFE8E88F5EAFCF545C4E30EDF3924DCF28AD551814F7CE44A595A20EAA25231E
          0B0A9165A00EEA217F0CF97B14ACD669AF1222A5AFEDC7CC9EA26D89A3C5F62B
          6B275AB406477C7A81CB9000CCA40DED3F7A054110AE601AD372F8E298ADCAAF
          B6D2B20064A068B962E5296140650ED5004A956580012518ADD788323A292D21
          4652692155D246329F49BB442579764382D526DF8639CB77A2F0092BCA5CC28B
          0F3C59F182D2CF9BBFEFCED22DF02341AAC7101A2F79BCC23E24060AA82F94C7
          61E182223AA2E0D9EFD5B5443EB49E567A9BACA4B646199F94C4E6AFC80563C3
          5071013F7C733944ED59A2EA1207BFCCC3C2CDCACA71B065B16381A330CD6D08
          0D28EC54E4121104A54CEBA56E44C1A4B6AE26F29199B57A75D7BDE7AE3D2DDD
          14A42457ADFA317760A4CA55CA9A3759830F04AC29B675B9723C7CDB04C595AC
          3D7C22E1F5CEDE71344090A4487C684F1914827C95E67B942ACB80C2112539F1
          69DB089182407D4A7474A44ED6EEDC310D2989EA73DA63FA2B2ED9B1DD1734D6
          6686EA8A45DCD369D35F512CE6C0D4BD058BDE975816C5CDF2C407F5B8BE96F4
          785408A3021494D64F3AF2A81C51923135951829215F9FF638590E83B4FFD164
          A400A0E95173C440E907E8583C689F96EF1CD458D25E7EA679FD3A45FC6BDB91
          EF03DF1A4FBB3142B6346B4F1B888A8A67A50FD5084A11554AE98892989333DF
          2544AAA1428F9E425DB727E9F0C1999094E4B23E2A0F19E60EF0CFBF7B528769
          C92CAECCBCEEF3EA6CC5594B2C8B65F381B1D2FF63406568BC474994294DEB25
          0D4AE7880298D7777FB482C827D5CBF64358B71A64525200C0CE2E097638943A
          FC944E677B2B23EBF2E3C4ADF2E866807FE12BE6DBABE12B8E053544F38892C7
          61510DEA5EC8333B8C468A9F345ED794499654278BF419A064C3CEF9E6211875
          255CF7D33A0A2E9DEA5CF7A2024BCE170FC6EE8C2531A264590614836ABE37DC
          61F29B4623A5B26E358A2CA9E68A5A7B83BC1734E8FDEB80FB05DC0FD295FDFB
          F9BEAF2D957A58C1BB11E59F95BDB4A8300605AA2543CB3D4A1E874535A8CCE1
          7E2D538D464A2DAD57C385D3F86B1DB3DF253703938DBF7BD5E7E991EEF1B8DD
          6EF8F77EBE19BB7D926429D89C3BC9A6EDC8778E3B972317D0ACB4A1A84C3564
          20EE6368881146942F6044526A69BD189127F5B1174EBF561C895EBDBF671AAD
          A8A86F4C1FBC9D01E1FDEFD2A6BDE6995CBE080E29CDDF7777C916D5C563A50F
          D10A0ACE32A01854D33D3844A365EADBCB887C48F2A444B786EB4E77274D0A7C
          C6F3A0411D231E2FD93C290E4E302D140C0DC62B2AC14FDE5FD33B1F7A7D377C
          917917F7413BE6CB2FBF766342A202CE08AA41DD9786BA33A7BDB394C887244F
          4A3DAD1723D2A438335CCF1952D71EDC9177405642515CFE0818128AB7966FFB
          7517CF66E475D9267BCDE1BFC7EF94AE0E758212248DABA21654E37D59A87BF3
          D45DC621254E8EC5C9E1264DAA7A8273B22126057DFE07890DF237072B1F3B0C
          C46B39D4B1E60210FADB78D9E80353F6566C7AC65D3728A0B8C5AD961CA8BBA1
          2850ADE96AA01E8C94ADC48D46AA963101677E214DEAC154FB2492857A918276
          DFB8DCD1A47C73A8A190151DAD7B8C5EB8EB957B7FD14B72BBBEEDCFEF42DE1A
          742F4E07285192337F1C29507742757A261A1E2852869BA7ED5A42E463922505
          DE89C22B1E419AD4C5B5B6C7A7933A0B942AE76CD954C144BE797D4E5BFFFE8E
          DA5FD1993AA517F7D2D7EC4D2BE51B8B4FF6A50C7D035572502DFDAAF25A8441
          A0B48E2898D4FB8B897C4CB2A49A7227E1DD064893625E779CA07FAB58E8AB63
          577CD1A424A799C38C1AA8B5044B762F780837FDFEBBFFB6A9B2C1C7BBF8256D
          FB7C150BF53CB95F5D5075D40D1D51F559A394D37DD3B40F8C410A4A090AC17B
          0E792BFD8933C96AD94835CC59B183A64E4A62FC3EAA0F8BD55CEB4C99F850F0
          BFEB135F93EFFAD41C3A99B843E177564FB6BE5FB44CE7884AEB4D6A44353C54
          81021AA7ED3606290D69BD189127F5D83912D05BDF1FBA1C0C604949BEC88FAB
          82E334ADD1F3848A2858E19D03C56B37C816CCB065F1D23AA903432D45182838
          F33C2A72235B80726B8B335C51156F792921A8CFC3CE188C7A795336B2813B73
          CA9E85443E27814E610841193EF805B14C4B8A3577DA6E9A465270245359BF21
          98A83394DB927DEA5BBB5716CA1E4B2D0B8945585680CE382CBC792F0A39643A
          2AD061F2CD4C742063B5200275094A9C02908FC1425F6FC4E3CE5FA60E229205
          D3114B68135FAEF68C29F811CBA62575F4A30B126B583329C952ED49719FA16A
          957BD4CA1557FD7822F6F571B24BFFE4CB94E55B444FC6AB556EF9FB0EFAFC70
          EB5A917A6C03114A57E22F7C95C46579F0148130589392622F1EBCCF463B29C9
          545450E88E0A85C5D4DA86B20E64CCDF2C3B03DE857DE269DB518BBBFC26E7D5
          5FCCD3F7FCA8537D2509E768670A912A912625756EFB1938DC523B29001014E5
          F71DACB22D3534B7E15D3DC87A7E8DCC47065B163B114579F2EB13DECA3F6BEC
          8EEB04D4544DA293458E2D915AF1A624C55DEEFB2D6CE2E82205276C97820382
          647CD4AB11CAC43CF2B3CFEB33A4863878776FE5CB6B15C32EBF7E7CE902629B
          B2469618249E2AA339AD1723139212FEFBEA51690CB06E52928F59FA98161706
          DF8CAACB35BB2DE9872E8F7B5D96ECD4FAE7F7A16FCA7C4D921165FF4EC6793D
          8BEB532AB198B86F94602719D39162ECBD1571415ABA078F9464A854E4D046F4
          EBCA2A9EA5C5C7224ADD5FB472A36CD703B62C3607C876788BE7BDB55EAFB3A3
          584D35F1449FAA25AD1723D3917AEDB038E08AD46358C524F031EA199C73E7ED
          DEDDA4CD6FD9F1CFFFA02D4F4B3F23EFC297363BE695D72638427BAE5FD4DF81
          A2495DAD8E9E243679C014B18F87ABA35D3DF1185AA29D64A822D585175F21DE
          7A0E70383CB997E480352C0277501AF4F0053630F6A2F6025A353F1F8BDA3E5E
          BAB6AF3E742A7EF66A07A072CE66C3B639D5D570D5ED86CF0E42DF7950C8E372
          38AF653ABBF9860C09E943B4AE38E14E3254916295D6433AD3ED6937F678CE9D
          5BCB09F673AA6B259445D7FE669E78EAFE28ED133EF4E860CAEC2D52579038E5
          B32A8965F1F9C9CB86F6D3402B2F6973FE0FEFE2B9B9859CF6B60E1E686BEFE4
          F0415A70D4C00111346622A1F7D79ED68BBD8094CD7EB784BA73E3765E7F6BB1
          A3B8A982ED4D838899B02987FA3E2768D155769DFFEF8186E7D74A5754AD7F7E
          17FEEC276B5F37683F1A7B80A36DEB3D68BADE93DFDADCCAB57DCADDF52947B8
          B9F0135A3F57C984DD5841B03916F14E32D491FAA6EB2D5D072A5AB8719CD401
          D755F3105C41AC97445A8C97B2E29C16B1FEFAD163EB6C29CBBC7D977DAF1AD4
          F6092B28EF73DEC75A6700B0BDA189EBE4E5EDE6A8CE522420589EBDBA8C6827
          19CA48415B3A7ED7B16B097D90FC034BEE5FAEAC1E4BAC29470A5C751D4E30D5
          D597B8E4F085515B47C01FB76ADAEAF7A81D52E05F45ABFE787CB40FD0D50BB3
          3E12B36A9A69DEBE9E1A634C4190D877517B5A2F469491122C68FF57470868F9
          9CD79616C84955B4105CC0CB48A92ACE699638637FEEF21782E16281170DD890
          D1A4D2B55F8FA89AF5E9E46F0BEC9F1B8DFA12B45534F4F2F377D5F68D6BAE21
          962948A2930C65A49A27B3EF6AAF780F7DF9EECCC9C10B6567A55A4F89453AA3
          9E15A424867859A58E12F99CF3DF085E5E06CE99AC6FB9136DBAB9F3AA6FE7EC
          973B53B7A55E3B8A88A8A9AE14FA05B9E93818C14C37329D642823953F91F3AF
          F6DDB3FAB9C36D6F0B12E78E81C7BA8A54C77DA7501FEDDBD22A52D28A737EB1
          5ABF7FF5BF1C89EC7FE91CC9F6A5B8CA7BE6B7B8D2CD5F733D830AB71C53C40E
          B14B1B5CC37C746FA613DC4924D34986325229EB048716693DCC7787AF06E4FD
          5DF9D02971F670AFEA26C5EC07F16BAB04FEC1DA2A022049496CE14EB756BE9F
          B62F72EEBEE39BF753D3AD1B71C86FAA1664852EB601C45FB03E95DDA95AE8ED
          FDC27093A38891D295D68B1165A43A3380915A6F252D73677C406B281B557EED
          FB2E9F29B101C88F2199F11D43FC35AE9AD0A4246ACD0662B4B53338BD6A3FA1
          961BA4242AECF00F91DCF88FDEFA54BAA86A2EE486051370E91123D57A6F2AF1
          866AD459E985B4186D2F018E7C7C310AA82F91CCDD99399C7FE9BE0BA70F40F6
          386DA8E8F00EF5C28E160C2900AA2BB21BA9311DAC73F995FF514F4A26F1F1E4
          DDF0FD8495DF151944E8DA122395E94162BAA68E54BE8DD675077BE1D02F6D64
          A4A0C79CD8B4D3C57551B3A68623BE9B9CAA1A5A6080BAE7084B0A6EB1E90A30
          7DB07B0A975E14BE67A4D650E0AFFBD685BA4D849EB02243088E0142A43A52C9
          B46E3409A9B36F9C890364A4003087D7AF352CE74A72FBE039138354F753B0A5
          82E91AD21775253491924890D31AA6DEDB8FBBCAA16629A11686E425FCED110D
          729A2D088C227C610991CA7224D3BAD114A4A08D5D7FDA294801E0E3FCE81192
          19FFFEE554D188B9E3102602BFAE92EF1BE2AAFA8516529269A8A85DADF5C4CD
          177ED83BDF48A460D5E7B9C6126A5027131152BAD37A313209A9D53E07012529
          00FAB761353C74A0BAB44B0FEC13E68E4038BEDA2BC471AA71A69594B4F584B4
          05855CFC676CBF5DB0C868A4B88F3A069372FD1221950B0E21F04E4A9984D41A
          F037471529A0EA46F428D98D465C71E7D213F7C9B38622EC7488C09882C5A637
          0728DB84A4ACFB75ECF4C5C62255F924A83FA9FEDA4448493BC990904948AD65
          BF3ACE4945AA8269DB31466113088A6F5D29F59B3E73800697A64E5212738FDE
          E81725FDB4C28DEC63E02C2391E2E774C4E3F65C55130152059C1144DE4929D3
          8CA93E2F558E7742901A96CD19A332DFBA0AAEFF5BD17FE6B448D40DBBABBDCF
          3DBC26F6F2FEC1C0FD15876673661B87545396DF2072030A20424A55B486A04C
          43CAEB9BA2AAF1EDC54A52C3C11C242AC9FDE9ECC996B641732686A86E529D8F
          38359342F11C79DC926AEF1897CDD5275D8C430A2A2A1B8A9B918C153EA962E6
          68724E4A5391028A6AC26B15BE74E670401D1598C1115F4EE50F9F3BAE9FF203
          749CB7EF13188017B4C82BAD69796FDF22C028A4040F8423C9360286854B4ADA
          BA91944C460AA0DFEF3759F658EAA1554725CA74896B4CBB74DF6EEC5C656E45
          5A0450D6E611EA8DE3C5E4BD507BC6B6377726F5A4D8193E83F52955854F0A6E
          DD48EE2D4D470AB8F760836CFD20F3A56350A53B8E04C455772EE7F69E343B5E
          3A87C31605B7B64AE41FAC33E6A470E1EEA7D36D83D6514EAAE1E1003D37BCF0
          48C1AD1B49BEA50949355E0E1A274525DFF5C0A04A7382EBEF084B6E5D29EE3B
          6DE6201720351A1E5D506B45937388AF56FF00B82BE58287A82AFFEDE7B7EA77
          59B5A9AC7004D9CBA9101E29FCB45E8C4C48AABEB44FA5B485AE627F4A0B2A89
          995078FDDFEAD059D31BE3E5A94BC2860A4E9F102D8177A57377C21D1C3A67CE
          7F836BAFD75CA5F9AC0BABC6EA59A059F2592B74560C066FC79036534C49AA64
          BCC4027442EC246A450567535DB9C5F25E39335461207756D5D844066960057D
          7CE9123CF4387316BD56541541CCD78D2FE831731C19670F5A3855B81BF32693
          DE4A332D29408A4AB5E7AB031500B01EFEFE088A9F374E516F186CE60669F87C
          5573366D867FC2B61FC8A47330CE5BBD04E6748C35E07D7457B68752828309BF
          95422626254585884BD7890A48752F3E73B3CF98B9A37414D580F61DBF2C0DEF
          915BE958E7AD3E02B3BBC6E8DDD844A2D6C6181D7F6DC99A4C7EE49B9A940455
          6263B3EACD75A24A19E0C53F59589EE33261CE306D21C1F5B3576F977E7F95EB
          A9363A2B2042FF894B7AC659DC3106CDA23A235E08A5F5626472529225700007
          1145A60B156CA5F3D3BD1C922ED3FB4C9B19AB8A5E6055062AB6880FFD705956
          B51FB1F2ED60281C82FA097AC41E6BC888C2B1FD08A5F562647A520023750032
          9B5D072AA98796971A10C32BFAF77A65C88CE9D1728705BFBC9A1618083B0F9A
          E7CEDD256386F251708AEB7CA2F5CE4DCC6F186FE0BD4E27A9FBBDF5E96E631A
          52DE5F03885D8FD4FC75C8C9493B2A992F9D97D26F80C4F6CBBB7AB33966CEE4
          50D953C196F216D7D0BEB6BF7C7549BE38ED9AFD3472775E585AED19A51FAB8A
          D209861A90CD25DAADF4CE94C9FADC474DB3EBD1F5BB2B727F2AB5EF5842A8E4
          BB1E325492DB74D6E53B5D43E68E0F9471E4D7560A7B6F1FB5473E0D762D1980
          EA1868C32DAF19E8AB47A826EF215EEB2C7C713D276A3D32B1B45E8C4C438AFF
          DC1877C4FE14EBA98AF1445029F6A778A9FEF2EEDE8D9997328051F346CB3760
          DB0F7DFF49A0FC13F0DE6E54DB23B111827634B11DC936AA3CD0C1F0E53334EB
          336DB7228269BD1899687F6AC7E371EE88FDA9E1B225B0521A7C80302AE54EA2
          6254C14FAD49BD98E3243106615774C7E2D82F15E647D7EC499A1AB83298D1DE
          34DDDD5051E2A70CA120ABB18D3B42DB987A22209C588A92A92C8AEADC041E43
          450A20840A1197AE1C55F01FCB93AE14784D9B39B8F7D99D6795FD3338B39FD6
          54AD435455EA108D53E41079AE691E640286B4A9A1449B45C14F2296D68B91C9
          6CBFEA27A14CC4FE14215488DD79C4A8927EDEA21F93858153AF0FFC4679EFD7
          BA3F25AEA91FEC44F47E95D74E306348B7B4DB7E44D37A31329D955E73D35F5E
          1750E6A320802A0D1147811A5512755E830AFF625E55D5EAD1B59308B5168611
          322EEA1F1129B7822FADA408A7F56264C2F554DE8D0DB2C801B937091795130F
          19F1A236AA007666C84E8F1F55EB1E9D7BBEE25A062DDA1F77B474258FA4A295
          9D0E521A8AD6109429F7A792DCC748BF4F0ABF1F1EAA8CC72B913141EAA3AAE3
          DBC3C710D70367771EAC67882203755B75609AD70080126923453CAD172353FA
          28CA8225162080D8F5C043F56B382A634F6D54099E81FE402C2171E328A0A622
          5E78B02E3F4E49752245FB5BDA48A95A37929669BD49D5B9302A952F1D83AA63
          1CF24ADE69091C8642851A55696B7E9A8AF82391881766516768A8564751C7DD
          44AA8A636921A56ADD485E26F6FB495121763DD45165772251A546321C866B1B
          55C2175B8F215F4B2C3689456FD35636014CF533A01A285A5A48295B37EA2153
          7B686154C8BA493A51A5F477972D8195428CAA87CBFE37077914A25164ED0C44
          943452E515A4631BB44A332965EB467D64725FBA6409DCDE8478733554501602
          95643D25D2864AFC4AF969D4C606F178BF4E46836F948BDAFD8223BC37D283D8
          EB094833293269BD18997ED7A3FA89BF0859E540C7A88257BEDA50E52EFEFC69
          D451C844667615B346A18715B43F79CD52EAC265349252B46ED44F66D89FAAB9
          DA1FF531B48F2AA98F4294E9A0C1AC0077E69C430795908BA115D9B41746210C
          E6B639E92B7E3660F3514D1A49C95B37EA29D390F2FC1F80D8F5C84E5B870A9E
          D73AAA64DE248DA88AE6BFBF067D1492D1CEE03557AE438CB7E28DEFCCE97B7C
          0475D52C349182EE495B37EA2BD3EC7A307F0A44EE4F653BA25D2ADA4695DCEF
          A70155CCFBB72FA8C575932495F3FBE7BDAA8A23E4DB90D0BBFFFB71A5019751
          5D9A48C95A37EA2DD390B25B3E3008B93FE5235B022B8519551D09302A858716
          832A8DF6FA4B9BD48E428E146743FFF7698058D48BDE1B7632B5CC99B2DBB0C8
          09B4349192B66ED45F26DA9FDA93362808B93F255B02AB84195552544A5FBA3A
          2AFEA9B7FE9AA0761452A4A05F77FC2DF517438D05605480CDBF7F1D20997AA1
          5B1A48495B371A205359146DA9437A21F7A77050C946956AD7431D55C9EC1FD4
          8B52922255381FBA2D5FDA400D744158E6086A0BF9682005B76E344426B3FDDA
          32BCF9C8FD2922A30AB13FA586AA6CF6778690E26C3AFAF471D56CD7945F373A
          98A2286999B0A4C8A6F562643A2BBDFD9CC77CD963998F82C0A8BA17ADDA8340
          A32A9D6310A98657FF7D6F3BF2172D859D61A114DEA8386CF5B27D055D06F6B2
          36E17AAAECF46A594157B93709775471C058C48A0785CA4052509270A05AB936
          6AA2A4B54A706B9CDE892332999054C303BB58E9BD41E1F7C31B553977D622F7
          F590A80C24D5913E0DEBE26B2B6AD555F396943A5BD5BE08A4D37A313269FED4
          A01469AF64A587166F541D719F854E3055A2329054015F63494BB8C445A46111
          ED72A9C7A5934FEBC5C8B4DE2459CB50952F1D8B2A01E98E4BE1388DD58CCA30
          5260D2502D05263A188D03C927CC60A56E5194D7904DEBC5C8C47E3F69636BC4
          AE87EE5195D2BF929DA0119561A45A72B4279A7144AE0D4E06B7065123A5475A
          2F46A6F6D0B2D287F643EE4FE91C5529FDBD644B60A514A80C23F5C85E57B804
          5455E8116D202BB5D9AFA678A2C13E4593FBD25919F142E4FE942E5492F514A4
          191549526065835D8C72E71D4C1AAE1B84A0BCDC37D6A02D10762B720ED527AD
          1723D3EF7AB0323C1D90F1BE18541589CABA559295AFC207A8900C1549524FD2
          637FEF3CAC380C3B730A1E0641AB7717CF9B2ADFBA3E69BD1899617F8A75366C
          32F2CFEAA80A2B15A8A43E0A8DA38A2CA96B2F702F2F512C684A5A89D4966ACB
          B289F2D3F70277B6237A8140774328B0524C43CAE3108088D52EBAB61215285E
          933716B55F45AF48949915A9FDA5265A76C738A4AB07CC701856318BDCEC77E9
          E646650B76282D84503403584787A2FAE93709A22C8A962CDC314C402621B5AE
          E2A03F446BAC18253D18AD962E1CE981382EADBA689C33F2716143422FC963DA
          BD082FF8079425466EF2D144999E4FADF9910CA9F6DB37F2DE9B227F0F41F204
          82EB5BD879AB5FD904242928DD375C8FB750974948AD3FE3E32299B6F87217A5
          500CD250EB4B1ADB01B5C7466B7B4AFA25E438C8AE12D48E6ECB20E638369C9D
          A276141DA4BA7685ADFBF5D859C948E2DBD380C6C209C46F404D45DCB010F20E
          4124A9B64C7DD27A3132CD4E62FB4608A0B1EA07CAC654133B422DFB8CA6F131
          ADA09F9BEC1500FAEF345AFD27BF931853695BFF09A89DB177AEF04FFA878E40
          3E180B90500B5D0F872092D47DD71892AFD62813ED24C275689B8BC7CA1ED734
          136B4F02A4F7D716D7553983CC7DEA9FCFAE7B30E77D32F69BB35EA79CA19448
          A2ED69E4826BDE869373322148E999D68B91196C3F021D2DE5D25EDD949CED57
          F4EC97E36EFD76C8E6BCF7D19F5C844989A45D7B6C46937F2499ED2504A9EC5E
          A486B056F50852E0B9F4A1CD3324A7F7F08BDF5C588F26E9B14EE214D7F99328
          72AA22C5BD3D91129F6FCF202599C0BA3C617BEFF681E3CE8C0E12EDAB11E236
          FA4320D18BAE229527D42FAD17A31E424AAEBB07FEB6CFF4D37B19CACCF28A24
          56E657498A9F34DEE0920932F5245260DE8D0B9FC4650DD13FFC9C5B56E51E4B
          E4CA2B4915B14712783A11F52452E2E38522F7656589869862826A0F778E0BAE
          9349414AFFB45E8C7A1229A9D8F7A718E8781567B1A3FBE1B05290D23FAD17A3
          1E47AAB672ACA1D70C6CA0E3A50CCB49896F0D23DBBD40AB7A1CA9023105CB1B
          A8A988AFD321282765405A2F463D8ED47D9F102AAE1BD05CD4A5C32128230526
          C512AF2E83A71E47EACE006A2A4E00404B5187D6F46E19A9BA22FDD37A31EA69
          A4C0A49106464822D45AD4A6C5792B2505DD8ED43FAD17A39E464A707B029581
          B2ED452D419A9CB7D28897A6C706A4F562D4D34871D2A9BC7A1275D09BFA4561
          58B53123002835C080B45E8C7A1AA9F65C426DC6C9A8B3D83B40ACC10E643D30
          24AD17A31E46AAE168E33272ADD408499C458B46DDFE785C0F28D39BB24224B0
          7A1829FAC40663F46786F8A5559E3188AEA9F5E5630D4CEBC5A887916A9C547E
          6D02EEB3F411BF943F1850DE0225B6DF43678AEA9AC9D5C34875CDAABA1B88FB
          2CFD040115B58AD4BCBAF2A177A8A9E9A8540F23255EC9BA44ED05444A585DE2
          10DD179E03EBCA7B437106BF1F4A3D8C14F03AED2BEAEA836025AE61D846FBD9
          00ACF22603D37A31A28E5401CD84A4F4CEC83EE4BE06FF498608AC63C06513DA
          5AA888C644CA40529058F9FA429A32ACCDC61614AB7E00C05A2F388A4C16ED4C
          B305CA9A87C13F44D8F7B603A4EF27FF01A421FBF9DADA8841E58FB2B9DF4E44
          BC0E3E52D7DC855B1507447D42D991E43F92BC07A3FF863A204AB6362248755C
          B46C6CA5BFB4D170401AD05CC40DF17107EC4088CA45B681A4448F5A15934925
          2D48FE3F2824B23E5FF22328BA314FFA8B5F5D964BFE65D5C64A7EE935847395
          1905790CE565F1D5E621C86958AFEC761AE438CC21BB0DFE5B5E902A6A8116E7
          5D504B0368B13E45D534A0E5E03AE4F72522B4A648F875FC86F0BA02F5D3857C
          06B3B34534C87B4867969006B0ED11B729C865182DAB9306390FB3CB62AB4F8A
          36433DF21A68804D9C577E9DFADFA0E8A04A060D802243AA8B307FF31BC4BA51
          D87B70DFC1ADCD86D449A29814240215675A60A3185390AD9D580CD1243F4091
          B48B7CAB0D7CC5A5630AB2B18324634AF2031042EAA468BD00C9FBC97F00A831
          05D1EC6C44629AFC07206EF6442C56203B5BB108603ABBDAC2C7557B53C90125
          6721FF817340D4DF500754FB237C409AFCB8EA2F947C6C717DE958C90FB07BFA
          28B4DFA7E4A2F23ED5DD45A0EF3C5999C2F693CB4ACA2059491945565296222B
          294B919594A5C84ACA5264256529B292B2145949598AACA42C45565296222B29
          4B919594A5C84AAA7BA93377B09654522BA9EEA5A2677ED7F299ADA4BA97E8AB
          8EA862FAA006A82F32DE8FEA835949E9ABA6DB5D5EBB8F2A3F33EF70BA68C476
          452A819554F751CD4BA2C8B2822B31425B8EB36D87935DC6814FC42F7F3A5AFE
          572BA96E2368DFB9B37D535E3AD5FF704B4D80CF03AF37214E70D7CAED89F23F
          ABD74BA7405652FA49BCCAF76BA068F5D1FE1B7C36BE1AF3F28E15CB00E0D8B5
          6F14C527588DFD0D7A7B0DB292D24FE265215F01F4D547FABF3879F92B23D6BD
          D2FF65E0C2F1F795570002288FD4B592D24FD0DBD9A75CCFBD75AEFF8B1357BE
          11BB76CB8097AFFFFCC120631EB17B93EA0FC7FB411C88AA26E314EAF1B30181
          9DB9C7635E9CB4E2CD416BB7C4C6AF8F1F0ACD34A8BF9E6E756B5277FBD9D457
          9697948E7FC39851FF7AAA20DD2DA124D63DC53FFC9E67649AA728DD060412D1
          97A017956925DD9AD4CD96FC878CFA2E60FA0E0A3F3155B2B101401A08D942A0
          E43F3692C792DF81E808F67E54E6BA756B5277633CBA587515C5616BBAE19822
          222A4FBB5B93CA0F90651018C192B23C756B5220CD4A48A96E4DCA2A84ACA42C
          45565296222B294B919594016ABB3D91AA7AC0F8B292324085AB8F525BC74597
          ACA40C1063E5112BA9EEAFD20B5D8107FFA27C1B4AABACA4F454F18680D88759
          D714F502387C77EA4ACE6A9495947E82F6A49E757DF8DCDFB2CF0C5D3DC6EBBF
          4DFF2E14446425A59FC4CB83F60345ABE1FB14DF9E56FBD2A6889D4B8D5BE747
          0BA9D2562B299D12AF0838208DF76BFDADDC73835BD910DAAB91AF18F5889A49
          55B689B43669B2928205EDB979D2F3C4C71763F6D56DBAC4FCC40678FCDE5EE3
          DA816AA4C4D24A4FD08101415A5B196A2625E655F4285240F1F380BFDB939FC3
          97F48D6272BEB22FFE60E942E33AFED5483DFCB417DCE8B37E472049528DA713
          EC7B1429A0EE51EFB8AA50FB67A6CEA23978947E347789918FA746AA767DD8D3
          126BF3D4CC10A2A4A00B8F20C97BB4095F244EAA059E5A796D6DC1D4741034AB
          8E9DDFD0EC15FB9CFD62DA4023148D4648FD3EF5E4C087FD00E0A4A7A7D6EE7E
          EAA4BEFB7CAD3B00B0D81B89932AF62E2D2B2BAF117F4B75B542334870F549EF
          59B4D334081A324BFD6F4F51D6D208D06051D47B3A000058CAD66251B4B4773A
          A167BFAE8FBC76485E76623271520F04F7F32B9A3A5CBF0F33F26534856C219A
          ACE422A87E29211F2A3F1FD6F66B4C8E1858076248413CF84C6869F4898E6AF7
          A9D6E2E1368098534DDCA290CC7EDCD6BAF2FA153EA6B894FF116148B5EE6A1F
          F8C29EA52EEAB31FF7AD227BC9735B16CE71C058145C360438D51026C5EAA2B0
          854C8F118654C6F9676EBEB26B50B4BA4521FEF18F9D9221F048381D43AAF023
          8E2D347E9A1D515256E9230CA9FCAF973C99F9E1FABE18DB4FB02F78B5844A69
          B0FAEC077C0AADB2059C1B098F29ABF4118694F087337CB7C513343492E6F2E1
          0D4E2817B39EFAA36BA91DD08BF8CAD72A7D84B528C4B92CEFB07A4D2DBFF937
          598B6B7C2B9DD4493D79C1DD194A986A9DFD8C2A0C29DE0FC95D763E1B9DB0EB
          29E8B714F1DEF36E8331F7A92F044B6C80DE2CEB9832AA30A4B2F73E7F7641EA
          5C072C29C1B62D575714A7CEC3DCA78E75ADA001B6A55652461586D483DFBFFA
          62D599E068AC3749FC5EFFF279A782C761C6D4D94FFBDA008933ADB39F518521
          D5B1FF85CC5F1D5EF2D0E04DCAFFB4C43D7C7703E63ED5DC0801905B670F1C53
          E293E1234D752C0429B0530CE79174D98379FDECDA911685FC39B4B65ABB6047
          A4DF0F2CE3D0242FA1D1009710E295EDFF3B123E3DDD081DE2340B418ABDB984
          0689ED001058F4267A77FEEECF1218A0E4C9CE5BA3511E5AEE0B39349EC01510
          77AEF88CDE0349814BA66C36D5B110A404C9EDE223D16380CE135B67A349659D
          065AEE4C7F0AC8B5FBC117450AACE8121D889B0EF07F98B694F89EEF7F44F547
          8A079D5FF2B2EA1750655388F13C99E8FB54FDCB87FA01C091C24F4AD5235EFE
          607C22F9F3DBEF46AAEF7A343D7B3804006EFCF533A3878DA98E17DA97D57CF7
          DE26E52FC0BF8FBBB1DF1F66C05BEA149A54F9DA6F0703C09FE74E95AB93DACD
          FF4C72035DFACC027552CC25AF2EA241BF9C3957DAC34825BD74669070E19C97
          D92DDEBD0141BD739FF66DCF8EF850F885B18E8726C57FAD708577EDCFCBDEC3
          8CA96B6FBE361CBAF3ED9F23D5498187BF1DD3B7E9F6E6D70B7B18A99FBFBFE5
          265C367DC2D742E823C77D1DDCC53359DE367B441F19EB786A567AE3A15B3CE7
          E99BBD30F17E829F7FEE049C376EB4C7C45108AE5E6AEB3D7DBE734FBB4FFD71
          30C943BC64FAC236FF6D133BB3DECDFFF53737E0C1271F1BAD7A08663DC5E63B
          F6D61899595F0FF8FA031A235EC43634325164FF0D3D5CF6E98CC72F6C5B79AD
          E6F2C2F2DAA1C2CE77DCF33E797686D18E678E18DAFF86045F9CF28F68985BCB
          79665F6C2777178DEFF2E4B3D5738C773C339012D38C1C6B6F22094B781102E0
          9B969167664F7C7B28E0B1E8597602D47F3D951DF790D242AAB85D2BA947CE9A
          FB34E6D3706248EB19A33A99F515C575DB4C97CA6254C1455E00669A9BBF6350
          C523FBA14E0F4462C07B38A2DFA88D097A8FD677690DF0AA70F0D3F8FB6A1A4E
          7444C3554ECA93EA0EC0E64B23D68132B968B69044927F65014A10A21E0F1844
          E507D5424A4755156D7FC22DC4525F14DF5A5FC1A0377D4A719FEF6E2B5B13F4
          1E35869AABA4EB7731C7D1DED0B7EA89322129B1D84AC8009990945506C94ACA
          5264256529B292B2145949598AACA42C45565296222B294B919594A5C84ACA52
          64256529B292B2145949598AACA42C45565296222B294B919594A5C84ACA5264
          256529B292B2145949598AACA42C45565296222B294B919594A5C84ACA526425
          6529B292B2145949598AACA42C45565296222B294B919594A5C84ACA52642565
          29B292B2145949598AACA42C45565296222B294B919594A5C84ACA52F47F5743
          F3F07BB375C50000002574455874646174653A63726561746500323032312D31
          322D32305431383A32333A34372B30303A3030EBE1AFEF000000257445587464
          6174653A6D6F6469667900323032312D31322D32305431383A32333A34372B30
          303A30309ABC175300000011744558746963633A636F70797269676874004343
          30FDD4562D00000014744558746963633A6465736372697074696F6E00755247
          429FFB2CDB0000000049454E44AE426082}
        Stretch = True
      end
      object pnlNaglowek3: TPanel
        Left = 4
        Top = 3
        Width = 1060
        Height = 74
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object lblNaglowek3: TLabel
          Left = 8
          Top = 3
          Width = 82
          Height = 23
          Caption = 'ETAP III'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNaglowek3Tresc: TLabel
          Left = 8
          Top = 30
          Width = 985
          Height = 32
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 
            'Obliczenie najwa'#380'niejszych parametr'#243'w geometrycznych projektowan' +
            'ej przek'#322'adni na podstawie warunk'#243'w wej'#347'ciowych oraz napr'#281#380'e'#324' ob' +
            'liczonych w poprzednim etapie.  Dla lepszego zobrazowania oblicz' +
            'onych parametr'#243'w niekt'#243're z nich zaznaczono na rysunku.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          WordWrap = True
        end
      end
      object pnlZewnOblSredZebnika: TPanel
        Left = 4
        Top = 83
        Width = 325
        Height = 117
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object lblZewnOblSredZebnika: TLabel
          Left = 8
          Top = 4
          Width = 308
          Height = 16
          Caption = 'ZEWN'#280'TRZNA OBLICZENIOWA '#346'REDNICA Z'#280'BNIKA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblKd: TLabel
          Left = 23
          Top = 58
          Width = 35
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'kd ='
          Layout = tlCenter
        end
        object lblDe1Prim: TLabel
          Left = 65
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'd'#39'e1 ='
          Layout = tlCenter
        end
        object lblKbe: TLabel
          Left = 167
          Top = 58
          Width = 35
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'kbe ='
          Layout = tlCenter
        end
        object lblKhb: TLabel
          Left = 23
          Top = 85
          Width = 35
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'kH'#946' ='
          Layout = tlCenter
        end
        object lblKa: TLabel
          Left = 167
          Top = 85
          Width = 35
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'kA ='
          Layout = tlCenter
        end
        object lblMM3_1: TLabel
          Left = 245
          Top = 27
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Layout = tlCenter
        end
        object edtKd: TEdit
          Tag = 2
          Left = 69
          Top = 58
          Width = 80
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
          Text = '101'
        end
        object edtZewnOblSredZebnika: TEdit
          Tag = 2
          Left = 114
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtKbe: TEdit
          Tag = 2
          Left = 213
          Top = 58
          Width = 80
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 2
          Text = '0,30'
        end
        object edtKhb: TEdit
          Tag = 2
          Left = 69
          Top = 85
          Width = 80
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object edtKa: TEdit
          Tag = 2
          Left = 213
          Top = 85
          Width = 80
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object updKbe: TUpDown
          Left = 296
          Top = 58
          Width = 19
          Height = 21
          Min = 20
          Max = 30
          Position = 30
          TabOrder = 5
          OnClick = updKbeClick
        end
      end
      object pnlModulZewnetrzny: TPanel
        Left = 3
        Top = 206
        Width = 326
        Height = 67
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 2
        object lblModulZewnetrzny: TLabel
          Left = 8
          Top = 4
          Width = 222
          Height = 16
          Caption = 'MODU'#321' OBWODOWY ZEWN'#280'NTRZNY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMte: TLabel
          Left = 70
          Top = 25
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mte ='
          Layout = tlCenter
        end
        object lblMM3_2: TLabel
          Left = 252
          Top = 26
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Layout = tlCenter
        end
        object edtModulZewnetrzny: TEdit
          Tag = 2
          Left = 115
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlLiczbaZebow: TPanel
        Left = 3
        Top = 279
        Width = 326
        Height = 98
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 3
        object lblLiczbaZebow: TLabel
          Left = 8
          Top = 4
          Width = 97
          Height = 16
          Caption = 'LICZBA Z'#280'B'#211'W '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblLiczbaZebowKolo: TLabel
          Left = 39
          Top = 61
          Width = 66
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ko'#322'o z'#281'bate'
          Layout = tlCenter
        end
        object lblLiczbaZebowZebnik: TLabel
          Left = 66
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#281'bnik'
          Layout = tlCenter
        end
        object edtLiczbaZebowZebnik: TEdit
          Tag = 1
          Left = 115
          Top = 25
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtLiczbaZebowKolo: TEdit
          Tag = 1
          Left = 115
          Top = 59
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlPrzelozenieRzecz: TPanel
        Left = 3
        Top = 383
        Width = 326
        Height = 66
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 4
        object lblPrzelozRzecz: TLabel
          Left = 8
          Top = 4
          Width = 173
          Height = 16
          Caption = 'PRZE'#321'O'#379'ENIE RZECZYWISTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblIrz: TLabel
          Left = 70
          Top = 26
          Width = 35
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'irz ='
          Layout = tlCenter
        end
        object edtPrzelozenieRzecz: TEdit
          Tag = 2
          Left = 115
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlDluZewnTworzacej: TPanel
        Left = 3
        Top = 455
        Width = 326
        Height = 66
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 5
        object lblDluZewnTworzacej: TLabel
          Left = 8
          Top = 4
          Width = 232
          Height = 16
          Caption = 'D'#321'UGO'#346#262' ZEWNETRZNEJ TWORZ'#260'CEJ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTworzacejRe: TLabel
          Left = 66
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Re ='
          Layout = tlCenter
        end
        object lblMM3_3: TLabel
          Left = 252
          Top = 27
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Layout = tlCenter
        end
        object edtTworzaca: TEdit
          Tag = 2
          Left = 115
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlSzerokoscWienca: TPanel
        Left = 3
        Top = 527
        Width = 326
        Height = 66
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 6
        object lblSzerokoscWienca: TLabel
          Left = 8
          Top = 4
          Width = 226
          Height = 16
          Caption = 'SZEROKO'#346#262' WIE'#323'CA K'#211#321' Z'#280'BATYCH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblB: TLabel
          Left = 66
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'b ='
          Layout = tlCenter
        end
        object lblMM3_4: TLabel
          Left = 252
          Top = 27
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Layout = tlCenter
        end
        object edtSzerokoscWienca: TEdit
          Tag = 1
          Left = 115
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlDluSredTworzacej: TPanel
        Left = 335
        Top = 383
        Width = 298
        Height = 66
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 7
        object lblDluSredTworzacej: TLabel
          Left = 8
          Top = 4
          Width = 198
          Height = 16
          Caption = 'D'#321'UGO'#346#262' '#346'REDNIA TWORZ'#260'CEJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTworzacaRm: TLabel
          Left = 40
          Top = 26
          Width = 50
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Rm ='
          Layout = tlCenter
        end
        object lblMM3_5: TLabel
          Left = 235
          Top = 27
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Layout = tlCenter
        end
        object edtSredTworzaca: TEdit
          Tag = 2
          Left = 104
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlKatyStozkow: TPanel
        Left = 335
        Top = 278
        Width = 298
        Height = 99
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 8
        object lblKatyStozkow: TLabel
          Left = 8
          Top = 4
          Width = 207
          Height = 16
          Caption = 'K'#260'TY STO'#379'K'#211'W PODZIA'#321'OWYCH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblKatyKolo: TLabel
          Left = 24
          Top = 60
          Width = 66
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #948'2 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblKatyZebnik: TLabel
          Left = 51
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #948'1 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblStopnie1: TLabel
          Left = 243
          Top = 25
          Width = 7
          Height = 13
          Caption = #9675
        end
        object lblStopnie2: TLabel
          Left = 243
          Top = 57
          Width = 7
          Height = 13
          Caption = #9675
        end
        object edtKatyZebnik: TEdit
          Tag = 2
          Left = 104
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtKatyKolo: TEdit
          Tag = 2
          Left = 104
          Top = 59
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlSredniceZewnetrzne: TPanel
        Left = 335
        Top = 83
        Width = 298
        Height = 189
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 9
        object lblSredniceZewnetrzne: TLabel
          Left = 8
          Top = 4
          Width = 159
          Height = 16
          Caption = #346'REDNICE K'#211#321' Z'#280'BATYCH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSredPodzialowa: TLabel
          Left = 8
          Top = 52
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'de ='
          Layout = tlCenter
        end
        object lblMM3_6: TLabel
          Left = 245
          Top = 53
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Layout = tlCenter
        end
        object lblSredniceZebnik: TLabel
          Left = 82
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#281'bnik'
          Layout = tlCenter
        end
        object lblSredniceKolo: TLabel
          Left = 162
          Top = 26
          Width = 66
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ko'#322'o z'#281'bate'
          Layout = tlCenter
        end
        object lblSredWierzch: TLabel
          Left = 8
          Top = 83
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'dae ='
          Layout = tlCenter
        end
        object lblMM3_7: TLabel
          Left = 245
          Top = 84
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Layout = tlCenter
        end
        object lblSredStop: TLabel
          Left = 8
          Top = 117
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'dfc ='
          Layout = tlCenter
        end
        object lblMM3_8: TLabel
          Left = 245
          Top = 118
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Layout = tlCenter
        end
        object lblSredSrednia: TLabel
          Left = 8
          Top = 148
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'dm ='
          Layout = tlCenter
        end
        object lblMM3_9: TLabel
          Left = 245
          Top = 149
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Layout = tlCenter
        end
        object edtSredPodzialowaZebnik: TEdit
          Tag = 2
          Left = 64
          Top = 53
          Width = 79
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtSredPodzialowaKolo: TEdit
          Tag = 2
          Left = 160
          Top = 53
          Width = 79
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtSredWierzKolo: TEdit
          Tag = 2
          Left = 160
          Top = 84
          Width = 79
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object edtSredWierzZebnik: TEdit
          Tag = 2
          Left = 64
          Top = 84
          Width = 79
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object edtSredStopKolo: TEdit
          Tag = 2
          Left = 160
          Top = 118
          Width = 79
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object edtSredStopZebnik: TEdit
          Tag = 2
          Left = 64
          Top = 118
          Width = 79
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 5
        end
        object edtSredSredniaKolo: TEdit
          Tag = 2
          Left = 160
          Top = 149
          Width = 79
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 6
        end
        object edtSredSredniaZebnik: TEdit
          Tag = 2
          Left = 64
          Top = 149
          Width = 79
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 7
        end
      end
      object btnDalej3: TButton
        Left = 949
        Top = 528
        Width = 115
        Height = 71
        Caption = 'Kolejny Etap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = btnDalej3Click
      end
      object pnlModulSredni: TPanel
        Left = 335
        Top = 455
        Width = 298
        Height = 66
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 11
        object lblModulSredni: TLabel
          Left = 8
          Top = 4
          Width = 198
          Height = 16
          Caption = 'MODU'#321' W '#346'REDNIM PRZEKROJU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMM: TLabel
          Left = 40
          Top = 26
          Width = 50
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm ='
          Layout = tlCenter
        end
        object lblMM3_10: TLabel
          Left = 235
          Top = 27
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Layout = tlCenter
        end
        object edtModulSredni: TEdit
          Tag = 2
          Left = 104
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object tshEtap4: TTabSheet
      Caption = 'Etap IV'
      ImageIndex = 3
      object lblOstrzezenie4_2: TLabel
        Left = 4
        Top = 583
        Width = 693
        Height = 16
        Alignment = taRightJustify
        Caption = 
          'Warunek wytrzyma'#322'o'#347'ci stykowej z'#281'b'#243'w nie zosta'#322' spe'#322'niony. Nale'#380 +
          'y wprowadzi'#263' poprawki w obliczeniach.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lblOstrzezenie4_3: TLabel
        Left = 703
        Top = 583
        Width = 225
        Height = 16
        Hint = 
          '|Zalecane jest zwi'#281'kszenie jego warto'#347'ci przed przyst'#261'pieniem do' +
          ' korekcji szeroko'#347'ci wie'#324'ca'
        Caption = 'Wspo'#322'czynnik kbe poza zakresem: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object pnlNaglowek4: TPanel
        Left = 4
        Top = 3
        Width = 1060
        Height = 74
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object lblNaglowek4: TLabel
          Left = 8
          Top = 3
          Width = 77
          Height = 23
          Caption = 'ETAP IV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNaglowke4Tresc: TLabel
          Left = 8
          Top = 30
          Width = 1041
          Height = 32
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 
            'Wyliczenie i sprawdzenie stykowej wytrzyma'#322'o'#347'ci z'#281'b'#243'w. Podczas p' +
            'racy przek'#322'adni si'#322'a normalna wywo'#322'uje miedzy innymi napr'#281#380'enia ' +
            'stykowe na powierzchni z'#281'ba, s'#261' one zmienne w czasie i przyczyni' +
            'aja sie do zm'#281'czeniowego zniszczenia z'#281'b'#243'w - pitting. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          WordWrap = True
        end
      end
      object pnlSilaObwodowaWZazeb: TPanel
        Left = 4
        Top = 83
        Width = 341
        Height = 67
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object lblSilaObwodowaWZazeb: TLabel
          Left = 8
          Top = 4
          Width = 208
          Height = 16
          Caption = 'SI'#321'A OBWODOWA W ZAZ'#280'BIENIU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblFT: TLabel
          Left = 49
          Top = 25
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ft ='
          Layout = tlCenter
        end
        object lblN4_1: TLabel
          Left = 258
          Top = 26
          Width = 23
          Height = 20
          AutoSize = False
          Caption = 'N'
          Layout = tlCenter
        end
        object edtSilaObwodowaWZazeb: TEdit
          Tag = 2
          Left = 113
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlPredObwodowa: TPanel
        Left = 3
        Top = 156
        Width = 342
        Height = 67
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 2
        object lblPredObwodowa: TLabel
          Left = 8
          Top = 4
          Width = 183
          Height = 16
          Caption = 'PR'#280'DKO'#346#262' OBWODOWA K'#211#321' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblV: TLabel
          Left = 49
          Top = 25
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'v ='
          Layout = tlCenter
        end
        object lblMS: TLabel
          Left = 258
          Top = 26
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'm/s'
          Layout = tlCenter
        end
        object edtPredObwodowa: TEdit
          Tag = 2
          Left = 113
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlKlasaDokladnosci: TPanel
        Left = 3
        Top = 229
        Width = 342
        Height = 67
        Hint = 
          'Minimalna klasa dok'#322'adno'#347'ci w jakiej nale'#380'y wykona'#263' ko'#322'a z'#281'bate|' +
          'Klasa dok'#322'adno'#347'ci zale'#380'y od pr'#281'dko'#347'ci obwodowej k'#243#322
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 3
        object lblKlasaDokladnosci: TLabel
          Left = 8
          Top = 4
          Width = 138
          Height = 16
          Caption = 'KLASA DOK'#321'ADNO'#346'CI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtKlasaDokladnosci: TEdit
          Tag = 1
          Left = 113
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlWspolKHV: TPanel
        Left = 3
        Top = 302
        Width = 342
        Height = 91
        Hint = 
          'Minimalna klasa dok'#322'adno'#347'ci w jakiej nale'#380'y wykona'#263' ko'#322'a z'#281'bate|' +
          'Klasa dok'#322'adno'#347'ci zale'#380'y od pr'#281'dko'#347'ci obwodowej k'#243#322
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 4
        object lblWspolKHV: TLabel
          Left = 8
          Top = 4
          Width = 290
          Height = 32
          Caption = 'WSP'#211#321'CZYNNIK MI'#280'DZYZ'#280'BNEGO OBCI'#260#379'ENIA DYNAMICZNEGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblKHV: TLabel
          Left = 50
          Top = 49
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'kHv ='
          Layout = tlCenter
        end
        object edtKHV: TEdit
          Tag = 2
          Left = 113
          Top = 49
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlWspolKHA: TPanel
        Left = 3
        Top = 399
        Width = 342
        Height = 91
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 5
        object lblWspolKHA: TLabel
          Left = 8
          Top = 4
          Width = 286
          Height = 32
          Caption = 'WSP'#211#321'CZYNNIK UWZGL'#280'DNIAJ'#260'CY NIER'#211'WNOMIERNO'#346#262' ROZK'#321'ADU OBCI'#260#379'ENIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblKHA: TLabel
          Left = 50
          Top = 49
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'kH'#55349#57084' ='
          Layout = tlCenter
        end
        object edtKHA: TEdit
          Tag = 2
          Left = 113
          Top = 49
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
          Text = '1,0'
        end
      end
      object pnlJedObliczSilaObwodowa: TPanel
        Left = 3
        Top = 496
        Width = 342
        Height = 81
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 6
        object lblJedObliczSilaObwodowa: TLabel
          Left = 8
          Top = 4
          Width = 313
          Height = 16
          Caption = 'JEDNOSTKOWA OBLICZENIOWA SI'#321'A OBWODOWA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblWHT: TLabel
          Left = 57
          Top = 31
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'WHt ='
          Layout = tlCenter
        end
        object lblNMM: TLabel
          Left = 258
          Top = 31
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'N/mm'
          Layout = tlCenter
        end
        object edtJedObliczSilaObwodowa: TEdit
          Tag = 2
          Left = 113
          Top = 31
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlWspolZH: TPanel
        Left = 351
        Top = 83
        Width = 346
        Height = 67
        Hint = 
          'Wsp'#243#322'czynnik strefy nacisku, uwzgl'#281'dniaj'#261'cy krzywizny bok'#243'w z'#281'b'#243 +
          'w w biegunie zaz'#281'bienia|Dla z'#281'b'#243'w prostych przyjmuje sie warto'#347'c' +
          ' ok. 2,50'
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 7
        object lblWspolZH: TLabel
          Left = 8
          Top = 4
          Width = 208
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK STREFY NACISKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblZH: TLabel
          Left = 49
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ZH ='
          Layout = tlCenter
        end
        object edtZH: TEdit
          Tag = 2
          Left = 113
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
          Text = '2,50'
        end
      end
      object pnlWspolZE: TPanel
        Left = 351
        Top = 156
        Width = 346
        Height = 67
        Hint = 'Wsp'#243#322'czynnik spr'#281#380'ysto'#347'c, wzgledniaj'#261'cy w'#322'asciwosci materia'#322#243'w'
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 8
        object lblWspolZE: TLabel
          Left = 8
          Top = 4
          Width = 196
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK SPR'#280#379'YSTO'#346'CI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblZE: TLabel
          Left = 49
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ZE ='
          Layout = tlCenter
        end
        object edtZE: TEdit
          Tag = 1
          Left = 113
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
          Text = '190'
        end
      end
      object pnlWspolZEpsilo: TPanel
        Left = 351
        Top = 229
        Width = 346
        Height = 92
        Hint = 'Wsp'#243#322'czynnik spr'#281#380'ysto'#347'c, wzgledniaj'#261'cy w'#322'asciwosci materia'#322#243'w'
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 9
        object lblWspolZEpsilo: TLabel
          Left = 8
          Top = 4
          Width = 170
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK PRZYPORU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblZEpsilo: TLabel
          Left = 49
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#949' ='
          Layout = tlCenter
        end
        object lblEpsilonAlpha: TLabel
          Left = 49
          Top = 57
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #949#55349#57084' ='
          Layout = tlCenter
        end
        object edtZEpsilon: TEdit
          Tag = 2
          Left = 113
          Top = 26
          Width = 130
          Height = 21
          Hint = 
            'Wsp'#243#322'czynnik przyporu, uwzgl'#281'dniaj'#261'cy wp'#322'yw czynnej d'#322'ugo'#347'ci lin' +
            'i styku|'
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtCzolowyWskaznikPrzyporu: TEdit
          Tag = 2
          Left = 113
          Top = 57
          Width = 130
          Height = 21
          Hint = 'Czo'#322'owy wska'#380'nik przyporu'
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlOblNapreStyk: TPanel
        Left = 351
        Top = 326
        Width = 346
        Height = 67
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 10
        object lblOblNapreStyk: TLabel
          Left = 8
          Top = 4
          Width = 241
          Height = 16
          Caption = 'OBLICZENIOWE NAPR'#280#379'ENIA STYKOWE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSigmaH: TLabel
          Left = 49
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'H ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa4_1: TLabel
          Left = 261
          Top = 26
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtOblNaprezStyk: TEdit
          Tag = 2
          Left = 113
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlWspolZR: TPanel
        Left = 351
        Top = 400
        Width = 346
        Height = 92
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 11
        object lblWspolZR: TLabel
          Left = 8
          Top = 4
          Width = 215
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK CHROPOWATO'#346'CI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblRa: TLabel
          Left = 49
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ra ='
          Layout = tlCenter
        end
        object lblZR: TLabel
          Left = 49
          Top = 57
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ZR ='
          Layout = tlCenter
        end
        object edtRa: TEdit
          Left = 113
          Top = 26
          Width = 130
          Height = 21
          Hint = 
            'Chropowato'#347#263' powierzchni roboczej z'#281'b'#243'w|Warto'#347#263' zale'#380'y od klasy ' +
            'dok'#322'adno'#347'ci wykonania k'#243#322
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtZR: TEdit
          Tag = 2
          Left = 113
          Top = 57
          Width = 130
          Height = 21
          Hint = 
            'Wsp'#243#322'czynnik uwzgl'#281'dniaj'#261'cy chropowato'#347#263' powierzchni roboczej z'#281 +
            'b'#243'w'
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlWspolZV: TPanel
        Left = 351
        Top = 496
        Width = 346
        Height = 81
        Hint = 
          'Wsp'#243#322'czynnik uwzgl'#281'dniaj'#261'cy obwodow'#261' pr'#281'dko'#347#263' k'#243#322' z'#281'batych|Na je' +
          'go warto'#347#263' poza pr'#281'dko'#347'ci'#261' odwodow'#261' wp'#322'ywa r'#243'wnie'#380' twardo'#347#263' mate' +
          'ria'#322'u. '
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 12
        object lblWspolZV: TLabel
          Left = 8
          Top = 4
          Width = 290
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK OBWODOWEJ PR'#280'DKO'#346'CI K'#211#321
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblZV: TLabel
          Left = 49
          Top = 31
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Zv ='
          Layout = tlCenter
        end
        object edtZV: TEdit
          Tag = 2
          Left = 113
          Top = 31
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlWspolZX: TPanel
        Left = 703
        Top = 83
        Width = 361
        Height = 67
        Hint = 'Wsp'#243#322'czynnik uwzgl'#281'dniaj'#261'cy wymiary k'#243#322' z'#281'batych'
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 13
        object lblWspolZX: TLabel
          Left = 8
          Top = 4
          Width = 280
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK WYMIAR'#211'W K'#211#321' Z'#280'BATYCH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblZX: TLabel
          Left = 49
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Zx ='
          Layout = tlCenter
        end
        object edtZX: TEdit
          Tag = 2
          Left = 113
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlNaprezeniaDop: TPanel
        Left = 703
        Top = 156
        Width = 361
        Height = 120
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 14
        object lblNaprezeniaDop: TLabel
          Left = 8
          Top = 4
          Width = 276
          Height = 32
          Caption = 'NAPR'#280#379'ENIA DOPUSZCZALNE DLA OBLICZE'#323' SPRAWDZAJ'#260'CYCH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblSigmaHPrim1: TLabel
          Left = 49
          Top = 42
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963#39'H1 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa4_2: TLabel
          Left = 261
          Top = 42
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblSigmaHPrim2: TLabel
          Left = 49
          Top = 77
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963#39'H2 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa4_3: TLabel
          Left = 261
          Top = 77
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtNaprDopStykSprawdzenie1: TEdit
          Tag = 2
          Left = 113
          Top = 42
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtNaprDopStykSprawdzenie2: TEdit
          Tag = 2
          Left = 113
          Top = 77
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlWarWytrzStykowej: TPanel
        Left = 703
        Top = 282
        Width = 361
        Height = 112
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 15
        object lblWarWytrzStykowej: TLabel
          Left = 8
          Top = 4
          Width = 299
          Height = 16
          Caption = 'WARUNEK WYTRZYMA'#321'O'#346'CI STYKOWEJ Z'#280'B'#211'W'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblSigmaH1: TLabel
          Left = 49
          Top = 31
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'H ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label4: TLabel
          Left = 261
          Top = 31
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblSigmaHmin: TLabel
          Left = 24
          Top = 73
          Width = 64
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963#39'HP ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label6: TLabel
          Left = 261
          Top = 73
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblWarunek: TLabel
          Left = 169
          Top = 49
          Width = 13
          Height = 23
          Caption = #10877
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtWarOblNaprezStyk: TEdit
          Tag = 2
          Left = 113
          Top = 31
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtNaprezStykDop: TEdit
          Tag = 2
          Left = 113
          Top = 73
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlObciazeniePrzekladni: TPanel
        Left = 703
        Top = 400
        Width = 361
        Height = 69
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 16
        object lblObciazeniePrzekladni: TLabel
          Left = 8
          Top = 4
          Width = 161
          Height = 16
          Caption = 'OBCI'#260#379'ENIE PRZEK'#321'ADNI '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProcent: TLabel
          Left = 261
          Top = 29
          Width = 12
          Height = 14
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtObciazeniePrzekladni: TEdit
          Tag = 2
          Left = 113
          Top = 26
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object btnDalej4: TButton
        Left = 968
        Top = 472
        Width = 96
        Height = 124
        Caption = 'Kolejny Etap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        OnClick = btnDalej4Click
      end
      object pnlNowaSzerokoscWienca: TPanel
        Left = 703
        Top = 475
        Width = 259
        Height = 102
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 18
        object lblNowaSzerokoscWienca: TLabel
          Left = 8
          Top = 4
          Width = 195
          Height = 16
          Caption = 'KOREKTA SZEROKO'#346'CI WIE'#323'CA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblOstrzezenie4_1: TLabel
          Left = 9
          Top = 60
          Width = 247
          Height = 28
          Alignment = taCenter
          Caption = 
            'Przek'#322'adnia niedoobci'#261#380'ona powy'#380'ej 5%. Zalecane jest zmniejszeni' +
            'e szeroko'#347'ci wie'#324'ca.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object lblNoweB: TLabel
          Left = 12
          Top = 29
          Width = 39
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'b ='
          Color = clGrayText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object lblMM4_1: TLabel
          Left = 207
          Top = 30
          Width = 23
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'mm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object edtNowaSzerokoscWienca: TEdit
          Tag = 2
          Left = 60
          Top = 30
          Width = 121
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object updNowaSzerokoscWienca: TUpDown
          Left = 187
          Top = 30
          Width = 17
          Height = 21
          TabOrder = 1
          OnClick = updNowaSzerokoscWiencaClick
        end
      end
    end
    object tshEtap5: TTabSheet
      Caption = 'Etap V'
      ImageIndex = 4
      object lblOstrzezenie5_1: TLabel
        Left = 3
        Top = 582
        Width = 677
        Height = 16
        Caption = 
          'Warunek wytrzyma'#322'o'#347'ci gn'#261'cej z'#281'b'#243'w nie zosta'#322' spe'#322'niony. Nale'#380'y ' +
          'wprowadzi'#263' poprawki w obliczeniach.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object pnlNaglowek5: TPanel
        Left = 4
        Top = 3
        Width = 1060
        Height = 74
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object lblNaglowek5: TLabel
          Left = 8
          Top = 3
          Width = 68
          Height = 23
          Caption = 'ETAP V'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNaglowek5Tresc: TLabel
          Left = 8
          Top = 30
          Width = 1041
          Height = 32
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 
            'Wyliczenie i sprawdzenie gn'#261'cej wytrzyma'#322'o'#347'ci z'#281'b'#243'w. Podczas pra' +
            'cy przek'#322'adni si'#322'a normalna wywo'#322'uje r'#243'wnie'#380' napr'#281#380'enia zginaj'#261'c' +
            'e w przekroju z'#281'ba,  s'#261' one zmienne w czasie i przyczyniaja sie ' +
            'do z'#322'amania zm'#281'czeniowego z'#281'b'#243'w.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          WordWrap = True
        end
      end
      object pnlWspolKFV: TPanel
        Left = 3
        Top = 83
        Width = 342
        Height = 78
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object lblWspolKFV: TLabel
          Left = 8
          Top = 4
          Width = 290
          Height = 32
          Caption = 'WSP'#211#321'CZYNNIK MI'#280'DZYZ'#280'BNEGO OBCI'#260#379'ENIA DYNAMICZNEGO PRZY ZGINANIU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblKFV: TLabel
          Left = 49
          Top = 44
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'kFv ='
          Layout = tlCenter
        end
        object edtKFV: TEdit
          Tag = 2
          Left = 113
          Top = 45
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlEkwiLiczZebow: TPanel
        Left = 3
        Top = 448
        Width = 342
        Height = 57
        Hint = 'Wsp'#243#322'czynnik spr'#281#380'ysto'#347'c, wzgledniaj'#261'cy w'#322'asciwosci materia'#322#243'w'
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 2
        object lblEkwiLiczZebow: TLabel
          Left = 8
          Top = 4
          Width = 200
          Height = 16
          Caption = 'EKWIWALENTNA LICZBA Z'#280'B'#211'W'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblZeq1: TLabel
          Left = 25
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z1eq ='
          Layout = tlCenter
        end
        object lblZeq2: TLabel
          Left = 177
          Top = 26
          Width = 39
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z2eq ='
          Layout = tlCenter
        end
        object edtZeq1: TEdit
          Tag = 2
          Left = 78
          Top = 26
          Width = 75
          Height = 21
          Hint = 
            'Wsp'#243#322'czynnik przyporu, uwzgl'#281'dniaj'#261'cy wp'#322'yw czynnej d'#322'ugo'#347'ci lin' +
            'i styku|'
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtZeq2: TEdit
          Tag = 2
          Left = 230
          Top = 26
          Width = 75
          Height = 21
          Hint = 'Czo'#322'owy wska'#380'nik przyporu'
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlWspolKFB: TPanel
        Left = 3
        Top = 167
        Width = 342
        Height = 83
        Hint = 
          'Minimalna klasa dok'#322'adno'#347'ci w jakiej nale'#380'y wykona'#263' ko'#322'a z'#281'bate|' +
          'Klasa dok'#322'adno'#347'ci zale'#380'y od pr'#281'dko'#347'ci obwodowej k'#243#322
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 3
        object lblWspolKFB: TLabel
          Left = 8
          Top = 4
          Width = 317
          Height = 32
          Caption = 
            'WSP'#211#321'CZYNNIK NIER'#211'WNOMIERNO'#346'CI ROZK'#321'ADU OBCI'#260#379'ENIA WZGL'#280'DEM LINI' +
            ' STYKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblKFB: TLabel
          Left = 50
          Top = 49
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'kF'#946' ='
          Layout = tlCenter
        end
        object edtKFB: TEdit
          Tag = 2
          Left = 113
          Top = 49
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlWspolKFA: TPanel
        Left = 3
        Top = 256
        Width = 342
        Height = 95
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 4
        object lblWspolKFA: TLabel
          Left = 8
          Top = 4
          Width = 290
          Height = 48
          Caption = 
            'WSP'#211#321'CZYNNIK UWZGL'#280'DNIAJ'#260'CY NIER'#211'WNOMIERNO'#346#262' ROZK'#321'ADU OBCI'#260#379'ENIA' +
            ' MI'#280'DZY PARAMI Z'#280'B'#211'W'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblKFA: TLabel
          Left = 50
          Top = 62
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'kF'#55349#57084' ='
          Layout = tlCenter
        end
        object edtKFA: TEdit
          Tag = 2
          Left = 113
          Top = 62
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
          Text = '1,0'
        end
      end
      object pnlJedObwdSilaPrzyZgin: TPanel
        Left = 3
        Top = 357
        Width = 342
        Height = 85
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 5
        object lblJedObwdSilaPrzyZgin: TLabel
          Left = 8
          Top = 4
          Width = 317
          Height = 32
          Caption = 'JEDNOSTKOWA OBWODOWA SI'#321'A OBLICZENIOWA PRZY ZGINANIU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblWFt: TLabel
          Left = 57
          Top = 49
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'WFt ='
          Layout = tlCenter
        end
        object lblNMM5_1: TLabel
          Left = 258
          Top = 49
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'N/mm'
          Layout = tlCenter
        end
        object edtJedObwdSilaPrzyZgin: TEdit
          Tag = 2
          Left = 113
          Top = 49
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlWspolYFS: TPanel
        Left = 3
        Top = 511
        Width = 342
        Height = 65
        Hint = 
          'Minimalna klasa dok'#322'adno'#347'ci w jakiej nale'#380'y wykona'#263' ko'#322'a z'#281'bate|' +
          'Klasa dok'#322'adno'#347'ci zale'#380'y od pr'#281'dko'#347'ci obwodowej k'#243#322
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 6
        object lblWspolYFS: TLabel
          Left = 8
          Top = 4
          Width = 214
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK KSZTA'#321'TU Z'#280'B'#211'W'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblYFS1: TLabel
          Left = 25
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YFS1 ='
          Layout = tlCenter
        end
        object lblYFS2: TLabel
          Left = 177
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YFS2 ='
          Layout = tlCenter
        end
        object edtYFS1: TEdit
          Tag = 2
          Left = 78
          Top = 26
          Width = 75
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtYFS2: TEdit
          Tag = 2
          Left = 230
          Top = 26
          Width = 75
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlObliczNaprezGnace: TPanel
        Left = 351
        Top = 84
        Width = 350
        Height = 65
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 7
        object lblObliczNaprezGnace: TLabel
          Left = 8
          Top = 4
          Width = 221
          Height = 16
          Caption = 'OBLICZENIOWE NAPR'#280#379'ENIA GN'#260'CE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSigmaF1: TLabel
          Left = 29
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'F1 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa5_1: TLabel
          Left = 310
          Top = 26
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblSigmaF2: TLabel
          Left = 173
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'F2 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object edtOblNaprezGnace1: TEdit
          Tag = 2
          Left = 78
          Top = 26
          Width = 75
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtOblNaprezGnace2: TEdit
          Tag = 2
          Left = 223
          Top = 26
          Width = 75
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlNaprezKrytyczneZginanie: TPanel
        Left = 351
        Top = 155
        Width = 350
        Height = 95
        Hint = 'Wsp'#243#322'czynnik spr'#281#380'ysto'#347'c, wzgledniaj'#261'cy w'#322'asciwosci materia'#322#243'w'
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 8
        object lblNaprezKrytyczneZginanie: TLabel
          Left = 8
          Top = 4
          Width = 255
          Height = 16
          Caption = 'NAPR'#280#379'ENIA KRYTYCZNE PRZY ZGINANIU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSigmaFlim1: TLabel
          Left = 28
          Top = 29
          Width = 67
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'F lim1 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblSigmaFlim2: TLabel
          Left = 31
          Top = 61
          Width = 64
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'F lim2 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa5_3: TLabel
          Left = 268
          Top = 26
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblMPa5_4: TLabel
          Left = 268
          Top = 59
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtNaprezKrytyczneZginanie1: TEdit
          Tag = 2
          Left = 120
          Top = 29
          Width = 130
          Height = 21
          Hint = 
            'Wsp'#243#322'czynnik przyporu, uwzgl'#281'dniaj'#261'cy wp'#322'yw czynnej d'#322'ugo'#347'ci lin' +
            'i styku|'
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtNaprezKrytyczneZginanie2: TEdit
          Tag = 2
          Left = 120
          Top = 61
          Width = 130
          Height = 21
          Hint = 'Czo'#322'owy wska'#380'nik przyporu'
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlWspolTrwalosc: TPanel
        Left = 351
        Top = 256
        Width = 350
        Height = 162
        Hint = 'Wsp'#243#322'czynnik spr'#281#380'ysto'#347'c, wzgledniaj'#261'cy w'#322'asciwosci materia'#322#243'w'
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 9
        object lblWspolTrwalosci: TLabel
          Left = 8
          Top = 4
          Width = 180
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK TRWA'#321'O'#346'CI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblKolo5_1: TLabel
          Left = 192
          Top = 20
          Width = 65
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ko'#322'o z'#281'bate'
          Layout = tlCenter
        end
        object lblZebnik5_1: TLabel
          Left = 112
          Top = 20
          Width = 38
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#281'bnik'
          Layout = tlCenter
        end
        object lblNFlim: TLabel
          Left = 7
          Top = 42
          Width = 69
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'NF lim ='
          Layout = tlCenter
        end
        object lblNFE: TLabel
          Left = 7
          Top = 71
          Width = 69
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'NFE ='
          Layout = tlCenter
        end
        object lblYN: TLabel
          Left = 7
          Top = 129
          Width = 69
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YN ='
          Layout = tlCenter
        end
        object lblKFE: TLabel
          Left = 7
          Top = 102
          Width = 69
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'kFE ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object edtNFLim1: TEdit
          Tag = 2
          Left = 94
          Top = 43
          Width = 78
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
          Text = '4000000'
        end
        object edtNFLim2: TEdit
          Tag = 2
          Left = 190
          Top = 43
          Width = 78
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
          Text = '4000000'
        end
        object edtNFE2: TEdit
          Tag = 2
          Left = 190
          Top = 72
          Width = 78
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object edtNFE1: TEdit
          Tag = 2
          Left = 94
          Top = 72
          Width = 78
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object edtYN2: TEdit
          Tag = 2
          Left = 190
          Top = 130
          Width = 78
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object edtYN1: TEdit
          Tag = 2
          Left = 94
          Top = 130
          Width = 78
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 5
        end
        object edtKFE: TEdit
          Tag = 2
          Left = 120
          Top = 102
          Width = 130
          Height = 21
          Hint = 'Czo'#322'owy wska'#380'nik przyporu'
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 6
        end
      end
      object pnlWspolYA: TPanel
        Left = 351
        Top = 424
        Width = 350
        Height = 65
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 10
        object lblWspolYA: TLabel
          Left = 8
          Top = 4
          Width = 340
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK UWZGL'#280'DNIAJ'#260'CY KIERUNEK OBROTU '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblYA: TLabel
          Left = 49
          Top = 28
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YA ='
          Layout = tlCenter
        end
        object edtYA: TEdit
          Tag = 2
          Left = 113
          Top = 29
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlWspolYR: TPanel
        Left = 351
        Top = 495
        Width = 350
        Height = 83
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 11
        object lblWspolYR: TLabel
          Left = 8
          Top = 4
          Width = 329
          Height = 32
          Caption = 'WSP'#211#321'CZYNNIK UWZGL'#280'DNIAJ'#260'CY CHROPOWATO'#346#262' I OBROBK'#280' CIEPLN'#260' Z'#280'BA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblYR: TLabel
          Left = 49
          Top = 46
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YR ='
          Layout = tlCenter
        end
        object edtYR: TEdit
          Tag = 2
          Left = 113
          Top = 47
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object chbSzlifowane: TCheckBox
          Left = 264
          Top = 28
          Width = 73
          Height = 43
          Caption = 'Z'#281'by szlifowane'
          TabOrder = 1
          WordWrap = True
          OnClick = chbSzlifowaneClick
        end
      end
      object pnlWspolYX: TPanel
        Left = 707
        Top = 83
        Width = 357
        Height = 95
        Hint = 
          'Minimalna klasa dok'#322'adno'#347'ci w jakiej nale'#380'y wykona'#263' ko'#322'a z'#281'bate|' +
          'Klasa dok'#322'adno'#347'ci zale'#380'y od pr'#281'dko'#347'ci obwodowej k'#243#322
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 12
        object lblWspolYX: TLabel
          Left = 8
          Top = 4
          Width = 317
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK UWZGL'#280'DNIAJ'#260'CY WYMIARY K'#211#321
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblYX1: TLabel
          Left = 57
          Top = 29
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YX1 ='
          Layout = tlCenter
        end
        object lblYX2: TLabel
          Left = 57
          Top = 61
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YX2 ='
          Layout = tlCenter
        end
        object edtYX1: TEdit
          Tag = 2
          Left = 120
          Top = 29
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtYX2: TEdit
          Tag = 2
          Left = 120
          Top = 61
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlWspolSF: TPanel
        Left = 707
        Top = 184
        Width = 357
        Height = 65
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 13
        object lblWspolSF: TLabel
          Left = 8
          Top = 4
          Width = 213
          Height = 16
          Caption = 'WSP'#211#321'CZYNNIK BEZPIECZE'#323'STWA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSF: TLabel
          Left = 57
          Top = 28
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SF ='
          Layout = tlCenter
        end
        object cbxSF: TComboBox
          Left = 120
          Top = 28
          Width = 130
          Height = 21
          ItemIndex = 0
          TabOrder = 0
          Text = '1,7'
          OnChange = cbxSFChange
          Items.Strings = (
            '1,7'
            '1,8'
            '1,9'
            '2,0'
            '2,1'
            '2,2')
        end
      end
      object pnlWarunekWytrzymGnacy: TPanel
        Left = 707
        Top = 375
        Width = 357
        Height = 114
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 14
        object lblWarunekWytrzyGnacy: TLabel
          Left = 8
          Top = 4
          Width = 279
          Height = 16
          Caption = 'WARUNEK WYTRZYMA'#321'O'#346'CI GN'#260'CEJ Z'#280'B'#211'W'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblSigmaF: TLabel
          Left = 49
          Top = 30
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'F ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa5_7: TLabel
          Left = 261
          Top = 31
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblSigmaFP: TLabel
          Left = 24
          Top = 78
          Width = 64
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963#39'FP ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa5_8: TLabel
          Left = 261
          Top = 78
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblWarunekGnacy: TLabel
          Left = 169
          Top = 53
          Width = 13
          Height = 23
          Caption = #10877
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtNaprezGnace: TEdit
          Tag = 2
          Left = 113
          Top = 31
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtDopNaprezGnace: TEdit
          Tag = 2
          Left = 113
          Top = 78
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlNaprezDopGnace: TPanel
        Left = 707
        Top = 256
        Width = 357
        Height = 113
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 15
        object lblNaprezDopGnace: TLabel
          Left = 8
          Top = 4
          Width = 276
          Height = 32
          Caption = 'NAPR'#280#379'ENIA DOPUSZCZALNE DLA OBLICZE'#323' SPRAWDZAJ'#260'CYCH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblSigmaFP1: TLabel
          Left = 24
          Top = 42
          Width = 64
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963#39'FP1 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa5_5: TLabel
          Left = 261
          Top = 43
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblSigmaFP2: TLabel
          Left = 16
          Top = 80
          Width = 72
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963#39'FP2 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa5_6: TLabel
          Left = 261
          Top = 80
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtNaprDopGnace1: TEdit
          Tag = 2
          Left = 113
          Top = 42
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtNaprDopGnace2: TEdit
          Tag = 2
          Left = 113
          Top = 80
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object btnDalej5: TButton
        Left = 968
        Top = 492
        Width = 96
        Height = 107
        Caption = 'Kolejny Etap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        OnClick = btnDalej5Click
      end
    end
    object tshEtap6: TTabSheet
      Caption = 'Etap VI'
      ImageIndex = 5
      object lblOstrzezenie6_1: TLabel
        Left = 4
        Top = 287
        Width = 585
        Height = 32
        Caption = 
          'Warunek wytrzyma'#322'o'#347'ci stykowej z'#281'b'#243'w przy przeci'#261#380'eniach nie zos' +
          'ta'#322' spe'#322'niony. Nale'#380'y wprowadzi'#263' poprawki w obliczeniach.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object lblOstrzezenie6_2: TLabel
        Left = 4
        Top = 324
        Width = 650
        Height = 32
        Caption = 
          'Warunek wytrzyma'#322'o'#347'ci gn'#261'cej z'#281'b'#243'w przy przeci'#261#380'eniach nie zosta' +
          #322' spe'#322'niony. Nale'#380'y wprowadzi'#263' poprawki w obliczeniach.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object pnlNaprezStykPrzyPrzeciaz: TPanel
        Left = 4
        Top = 83
        Width = 654
        Height = 78
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object lblNaprezStykPrzyPrzeciaz: TLabel
          Left = 8
          Top = 4
          Width = 293
          Height = 16
          Caption = 'NAPR'#280#379'ENIA STYKOWE PRZY PRZECI'#260#379'ENIACH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblWarunekStykowyPrzeciaz: TLabel
          Left = 296
          Top = 35
          Width = 13
          Height = 23
          Caption = #10877
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSigmaHMax: TLabel
          Left = 36
          Top = 36
          Width = 64
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'H max ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblSigmaHPMax: TLabel
          Left = 338
          Top = 36
          Width = 64
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'HP max ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa6_1: TLabel
          Left = 568
          Top = 37
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtNaprezStykPrzyPrzeciaz: TEdit
          Tag = 2
          Left = 122
          Top = 37
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtNaprezStykMax: TEdit
          Tag = 2
          Left = 422
          Top = 37
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlNaglowek6: TPanel
        Left = 4
        Top = 3
        Width = 1060
        Height = 74
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 1
        object lblNaglowek6: TLabel
          Left = 8
          Top = 3
          Width = 77
          Height = 23
          Caption = 'ETAP VI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNaglowek6Tresc: TLabel
          Left = 8
          Top = 30
          Width = 1041
          Height = 32
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 
            'Wyliczenie i sprawdzenie wytrzyma'#322'o'#347'ci z'#281'b'#243'w przy przeci'#261#380'eniach' +
            '. Warto'#347#263' napr'#281#380'e'#324' przy przeci'#261#380'eniach w g'#322#243'wnej mierze zale'#380'y o' +
            'd wspo'#322'czynnika jednorazowego przeci'#261#380'enia. Okre'#347'lenie warto'#347'ci ' +
            'si'#322' pojawiaj'#261'ce sie w zaz'#281'bniu podczas wspo'#322'pracy k'#243#322' z'#281'batych.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          WordWrap = True
        end
      end
      object pnlMomentRzecz: TPanel
        Left = 664
        Top = 83
        Width = 400
        Height = 78
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 2
        object lblMomentRzecz: TLabel
          Left = 8
          Top = 4
          Width = 304
          Height = 16
          Caption = 'MOMENT RZECZYWISTY NA WALE WYJ'#346'CIOWYM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblT2RZ: TLabel
          Left = 49
          Top = 36
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'T2 rz ='
          Layout = tlCenter
        end
        object lblNm6_1: TLabel
          Left = 270
          Top = 36
          Width = 31
          Height = 21
          AutoSize = False
          Caption = 'Nm'
          Layout = tlCenter
        end
        object edtMomentRzecz: TEdit
          Tag = 2
          Left = 113
          Top = 37
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnlSilaObwodowa: TPanel
        Left = 664
        Top = 167
        Width = 400
        Height = 114
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 3
        object lblSilyObwodowe: TLabel
          Left = 8
          Top = 4
          Width = 111
          Height = 16
          Caption = 'SI'#321'Y OBWODOWE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblFt1: TLabel
          Left = 49
          Top = 36
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ft1='
          Layout = tlCenter
        end
        object lblN6_1: TLabel
          Left = 270
          Top = 36
          Width = 31
          Height = 21
          AutoSize = False
          Caption = 'N'
          Layout = tlCenter
        end
        object lblN6_2: TLabel
          Left = 270
          Top = 73
          Width = 31
          Height = 21
          AutoSize = False
          Caption = 'N'
          Layout = tlCenter
        end
        object lblFt2: TLabel
          Left = 49
          Top = 73
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ft2='
          Layout = tlCenter
        end
        object edtSilaObwodowa1: TEdit
          Tag = 2
          Left = 113
          Top = 37
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtSilaObwodowa2: TEdit
          Tag = 2
          Left = 113
          Top = 74
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlNaprezGnacPrzyPrzeciaz: TPanel
        Left = 4
        Top = 167
        Width = 654
        Height = 114
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 4
        object lblNaprezGnacPrzyPrzeciaz: TLabel
          Left = 8
          Top = 4
          Width = 273
          Height = 16
          Caption = 'NAPR'#280#379'ENIA GN'#260'CE PRZY PRZECI'#260#379'ENIACH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblWarunekGnacyPrzeciaz1: TLabel
          Left = 296
          Top = 35
          Width = 13
          Height = 23
          Caption = #10877
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSigmaFMax1: TLabel
          Left = 36
          Top = 36
          Width = 64
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'F max1 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblSigmaFPmax1: TLabel
          Left = 327
          Top = 36
          Width = 75
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'FP max1 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa6_2: TLabel
          Left = 568
          Top = 37
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblSigmaFMax2: TLabel
          Left = 36
          Top = 73
          Width = 64
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'F max2 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblWarunekGnacyPrzeciaz2: TLabel
          Left = 296
          Top = 72
          Width = 13
          Height = 23
          Caption = #10877
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSigmaFPMax2: TLabel
          Left = 327
          Top = 73
          Width = 75
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = #963'FP max2 ='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object lblMPa6_3: TLabel
          Left = 568
          Top = 74
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtNaprezGnacPrzyPrzeciaz1: TEdit
          Tag = 2
          Left = 122
          Top = 37
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtNaprezGnacMax1: TEdit
          Tag = 2
          Left = 422
          Top = 37
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtNaprezGnacPrzyPrzeciaz2: TEdit
          Tag = 2
          Left = 122
          Top = 74
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object edtNaprezGnacMax2: TEdit
          Tag = 2
          Left = 422
          Top = 74
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object pnlSilyPromeniowe: TPanel
        Left = 664
        Top = 287
        Width = 400
        Height = 114
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 5
        object lblSilyPromeniowe: TLabel
          Left = 8
          Top = 4
          Width = 125
          Height = 16
          Caption = 'SI'#321'Y PROMIENIOWE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblFr1: TLabel
          Left = 49
          Top = 36
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fr1='
          Layout = tlCenter
        end
        object lblN6_3: TLabel
          Left = 270
          Top = 36
          Width = 31
          Height = 21
          AutoSize = False
          Caption = 'N'
          Layout = tlCenter
        end
        object lblN6_4: TLabel
          Left = 270
          Top = 73
          Width = 31
          Height = 21
          AutoSize = False
          Caption = 'N'
          Layout = tlCenter
        end
        object lblFr2: TLabel
          Left = 49
          Top = 73
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fr2='
          Layout = tlCenter
        end
        object edtSilaPromeniowa1: TEdit
          Tag = 2
          Left = 113
          Top = 37
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtSilaPromeniowa2: TEdit
          Tag = 2
          Left = 113
          Top = 74
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlSilyPoosiowe: TPanel
        Left = 664
        Top = 407
        Width = 400
        Height = 114
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 6
        object lblSilyPoosiowe: TLabel
          Left = 8
          Top = 4
          Width = 102
          Height = 16
          Caption = 'SI'#321'Y POOSIOWE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lblFa1: TLabel
          Left = 49
          Top = 36
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fa1='
          Layout = tlCenter
        end
        object lblN6_5: TLabel
          Left = 270
          Top = 36
          Width = 31
          Height = 21
          AutoSize = False
          Caption = 'N'
          Layout = tlCenter
        end
        object lblN6_6: TLabel
          Left = 270
          Top = 73
          Width = 31
          Height = 21
          AutoSize = False
          Caption = 'N'
          Layout = tlCenter
        end
        object lblFa2: TLabel
          Left = 49
          Top = 73
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fa2='
          Layout = tlCenter
        end
        object edtSilaPoosiowa1: TEdit
          Tag = 2
          Left = 113
          Top = 37
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtSilaPoosiowa2: TEdit
          Tag = 2
          Left = 113
          Top = 74
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
  end
  object stbPasekStanu: TStatusBar
    Left = 0
    Top = 637
    Width = 1084
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
end

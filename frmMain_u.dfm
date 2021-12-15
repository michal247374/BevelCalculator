object frmMain: TfrmMain
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
    ActivePage = tshEtap4
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
          Left = 37
          Top = 56
          Width = 157
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pr'#281'dko'#347#263' obrotowa z'#281'bnika n1 ='
          Layout = tlCenter
        end
        object lblObrMin1: TLabel
          Left = 350
          Top = 56
          Width = 36
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
          Left = 350
          Top = 26
          Width = 15
          Height = 21
          AutoSize = False
          Caption = 'kW'
          Layout = tlCenter
        end
        object lblMoment1: TLabel
          Left = 23
          Top = 85
          Width = 171
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Moment skr'#281'caj'#261'cy na wej'#347'ciu T1 ='
          Layout = tlCenter
        end
        object lblNm1: TLabel
          Left = 350
          Top = 85
          Width = 15
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
          OnKeyDown = edtMocKeyDown
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
          NumbersOnly = True
          TabOrder = 0
          Text = '10000'
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
          Top = 29
          Width = 39
          Height = 21
          AutoSize = False
          Caption = 'Materia'#322
          Layout = tlCenter
        end
        object lblObrobkaCieplna1: TLabel
          Left = 15
          Top = 58
          Width = 77
          Height = 21
          AutoSize = False
          Caption = 'Obr'#243'bka cieplna'
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
          Left = 15
          Top = 86
          Width = 158
          Height = 21
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Wytrzyma'#322'o'#347#263' na rozci'#261'ganie Rm'
          ParentBiDiMode = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblRe1: TLabel
          Left = 335
          Top = 86
          Width = 118
          Height = 21
          AutoSize = False
          BiDiMode = bdLeftToRight
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
          Top = 8
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
          Left = 26
          Top = 56
          Width = 189
          Height = 21
          AutoSize = False
          Caption = 'Pr'#281'dko'#347#263' obrotowa ko'#322'a z'#281'batego n2 ='
          Layout = tlCenter
        end
        object lblObrMin2: TLabel
          Left = 371
          Top = 56
          Width = 36
          Height = 21
          AutoSize = False
          Caption = 'obr/min'
          Layout = tlCenter
        end
        object lblPrzelozenie: TLabel
          Left = 144
          Top = 26
          Width = 71
          Height = 21
          AutoSize = False
          Caption = 'Prze'#322'o'#380'enie i ='
          Layout = tlCenter
        end
        object lblMoment2: TLabel
          Left = 45
          Top = 85
          Width = 171
          Height = 21
          AutoSize = False
          Caption = 'Moment skr'#281'caj'#261'cy na wej'#347'ciu T1 ='
          Layout = tlCenter
        end
        object lblNm2: TLabel
          Left = 371
          Top = 85
          Width = 15
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
          Top = 8
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
          Left = 15
          Top = 58
          Width = 77
          Height = 21
          AutoSize = False
          Caption = 'Obr'#243'bka cieplna'
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
          Left = 15
          Top = 86
          Width = 158
          Height = 21
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Wytrzyma'#322'o'#347#263' na rozci'#261'ganie Rm'
          ParentBiDiMode = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblRe2: TLabel
          Left = 335
          Top = 86
          Width = 118
          Height = 21
          AutoSize = False
          BiDiMode = bdLeftToRight
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
          Top = 8
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
          Text = '1,0'
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
          Top = 8
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
          Left = 29
          Top = 33
          Width = 52
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
          Top = 8
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
          Left = 428
          Top = 33
          Width = 156
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
          Caption = 'Ko'#322'o z'#281'bate'
          Layout = tlCenter
        end
        object lblPodProbZmeczZebnika: TLabel
          Left = 67
          Top = 34
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#281'bnik'
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
          Caption = 'Ko'#322'o z'#281'bate'
          Layout = tlCenter
        end
        object lblRownowaznaZebnik: TLabel
          Left = 67
          Top = 34
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#281'bnik'
          Layout = tlCenter
        end
        object lblRownowaznaWspol: TLabel
          Left = 296
          Top = 33
          Width = 156
          Height = 30
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Wsp'#243#322'czynnik zmiany obci'#261#380'enia'
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
          Caption = 'Ko'#322'o z'#281'bate'
          Layout = tlCenter
        end
        object lblWspolTrwalosciPracyZebnik: TLabel
          Left = 67
          Top = 34
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#281'bnik'
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
          Caption = 'Ko'#322'o z'#281'bate'
          Layout = tlCenter
        end
        object lblNapreKrytyczneZebnik: TLabel
          Left = 67
          Top = 34
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#281'bnik'
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
          Width = 209
          Height = 16
          Caption = 'WSP'#211'CZYNNIK BEZPIECZENSTWA '
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
          Caption = 'Ko'#322'o z'#281'bate'
          Layout = tlCenter
        end
        object lblShZebnika: TLabel
          Left = 67
          Top = 34
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#281'bnik'
          Layout = tlCenter
        end
        object cbxShZebnik: TComboBox
          Left = 120
          Top = 34
          Width = 145
          Height = 21
          Hint = 
            'Warto'#347#263' wspo'#322'czynnika zale'#380'y od obr'#243'bki cieplnej|Sh=1,1 dla norm' +
            'alizacji, ulepszania lub hartowania na wskro'#347'; 1,2 dla hartowani' +
            'a powierzchniowego, naweglania i azotowania'
          Style = csDropDownList
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
          Height = 21
          Hint = 
            'Warto'#347#263' wspo'#322'czynnika zale'#380'y od obr'#243'bki cieplnej|Sh=1,1 dla norm' +
            'alizacji, ulepszania lub hartowania na wskro'#347'; 1,2 dla hartowani' +
            'a powierzchniowego, naweglania i azotowania'
          Style = csDropDownList
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
        ParentBackground = False
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
          Caption = 'Ko'#322'o z'#281'bate'
          Layout = tlCenter
        end
        object lblDopNapreStykZebnik: TLabel
          Left = 67
          Top = 34
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Z'#281'bnik'
          Layout = tlCenter
        end
        object lblMPa2_3: TLabel
          Left = 268
          Top = 34
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblMPa2_4: TLabel
          Left = 268
          Top = 67
          Width = 20
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
          Height = 21
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
          Height = 21
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
          Left = 128
          Top = 34
          Width = 117
          Height = 13
          Caption = 'Dla napr'#281#380'e'#324' stykowych'
        end
        object lblMaxNaprGnac: TLabel
          Left = 293
          Top = 34
          Width = 106
          Height = 13
          Caption = 'Dla napr'#281#380'e'#324' gn'#261'cych'
        end
        object lblMPa2_6: TLabel
          Left = 423
          Top = 62
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblMPa2_7: TLabel
          Left = 423
          Top = 96
          Width = 20
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
        Height = 384
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000001A90000
          017F0800000000D62069B500000002624B474400FF878FCCBF0000000774494D
          4507E50C0B0C08012E68096B0000001F7A5458745261772070726F66696C6520
          7479706520696363000078DA530000002100218EB4E7A40000438A4944415478
          DAED9D075814D716C767E902D2AC08482F0BD8B1810550417DE931C65E52D468
          7A7B495E5E124DEF9AC4E499C4DEBB290A48EF1650DA167A5D7A67D965DBCCDB
          BE53B6CC6C65E3FEBF7C9F0176A7FDE6DE7BEE39E79E4B82008BCC42240B2933
          918594B9C842CA5C6421652EB29032175948998B2CA4CC45664CAACFC9CED497
          604C992F29765ABC93A9AFC198325F52A5BD71A6BE04A3CA6C4971FFE40F4686
          7998FA328C27B32555D939E3CA21C182989953C798FA528C237325C54F5E301E
          A8F8E432E8FBEB72535F8B7164AEA4EAEAE34900C03CFD25F871CC541B535F8D
          3164A6A40429B33CC5FF53DC369B3612E4FF00D8EB664AAA899A6025FFA18BD6
          E71FFC8F1FADCC93149812EE0BFFB997DA3535D4D9D45765589927A9B6A2D5D6
          C8DF0CD2189EE1AEA6BE2E43CA2C4941E97E41985F0E57358D27FF83E7576649
          AABB6095AD925F8FD4D53A874F32F5C5194AE6480ACA994856FE175E7D955DB8
          17C9D41768109923A981EC952AAD72412395143ED59AC8E1CC44E648EA96D334
          357F0519545E88BF2DEEA3998BCC9014333D41C3E4A99D3A1C14606FEAEBD4B3
          CC90D45DAB391A3FD343EFF60D7134F595EA55E6478A95B202CF1C7780DAEE15
          E662EA8BD5A3CC8F54092B1ADF0799F4E60911EEA6BE5CBDC9EC48716EC4B9E1
          FD2CBBAAC13D7CBCA9AF584F323B52D4AE2504E64BDCBA1A47F2E47FC404CBDC
          48F19262C611FA02BFB1D23ACCC78AD07746A5CC8D544D531CD116023653F964
          3FB38F369A192941CA1C2D1C7B502B951D1260E6D1463323D554B94CBB8EAC93
          3A1810E460EACBD745E6450A4C8DF0D6F6BB7DF42E2F738E369A17294669A20E
          CED7211A633219B7893FDA6456A4A0D4A0009D0E305CD5302E8298ED386A6456
          A43A0BFFA5AB0937525DE7629ED146732205657986E97E145E7D8D1DD9D3FC26
          58E644AA3767B55E2C6D41331D0A33BB68A33991CA739DA6FB41C4025B299CD0
          00F38A369A11A9A18C443D4E88DA29CCC060738A369A11A9229B997A3D5E37B5
          D7CF8CA28DE6438A95B65CDF8F7580DEE11936D6D4378653E643EA3E6F9EFE0F
          CAAC6C9E106E1ED146B32135921C6F90583BBBAACE3D7CA2A9EF0E87CC865445
          DF62031D995B53E318EE39EAA38DE6428A7B63B1E1BC40FCC64A1BB29786C930
          646296E642AA9241388248442083CE0B511B6D848E76AFF731E513301352FCA4
          F9061E4BA0760A2B2850F504AB7EB5F5B8F59B4D5801C34C48D5D72C377CE7D3
          45E90B0851919E0BEEBB74B1EACB45FB4C178C340F52E0CD695EC6384F2FB5CB
          375469BBA97A68E71B40E63317E69AEC199807290665B9919CDF43F4D64964EC
          DA46F0BDA349B381CCCD17179AEC19980529303DC457F7A3E014ABAA119BCE49
          7974B2D372B7C3BEBF9BCEA36116A43AEEAE32668C8253533D3662127C5C14BC
          9E7FF5D7A3F1A1DB8CD2072B9739908232BD438C7B465E5D957DF81445875BF4
          F887CF5DFFE8BA495D19E640AA276FB5D1434982263A29CC47D69293CF7C37BE
          64E3F948533E05332005E58E8B30C169C1363A2748BAB6111C71045A577DBEDA
          948FC10C480D64AC3651C4AF933218284FE7646F5CB131831D33D5548FC10C48
          DDB29F65B273F7507A64132CA8B2F5027F66C9DB461E32E51AFDA48653134C19
          9815AD6D244B6CF3A4771E7E3465C24E135DC8E827755F1065DA0B6056B58C27
          8BA28D9F099E4CC978FE11135DC6A827357233DEE4C9E423D5F5AEE11380AB57
          BE1CD732D9544EDA514FAA9C693A078E42DCBA2A8708F7A345FEAF9A6C91F768
          27C54D5A323AD21CF80D741BB22D7F8AC956CC8D7652D48ED8D11237075BA820
          D9C7424AB97897977A9AFA1A1482DA69EC4053AD6D1CE5A468E56B4D7D094875
          53FBFC424C5249757493129C1FE1479247C74025531FB5D3DB14E99CA39B547D
          51E29F3F43D14B667A8EA6E5D443B4161354521DD5A4C06B912140D9DE6B367E
          DF3C6CEA6B418855D5388E6CE4B58DA39A544BEE5342536BF0F0D7FC2F967B8F
          AEB5699CDA5A67F224639AA5A39914F457A038DC01E5B42CA2F1C34659F10F5E
          43A54DB811DF9FD14CAA2375AD7C7882DA28ECE0C0D1345A89A28D5480EC6BAC
          BC81514C0A4A99381BFE7327652030787415FF005BA99C502355521DC5A47AAF
          AF414D5C7AE9DD3E21A36C23B70E1AD33FD018EFCF282695EE88F5CDAA48C793
          A8EF9735A608F3F5D2BAA71AE1FDD148CA644B1C06AF3DA12CDCC1AA5459FCE3
          C4A7D7C8802934406BF30C37B4935D1329DA24536DC0902758AAFC0F23D5B52E
          114A8A7FF43C1AB7CF54AF15B3B27162B8619F94065243199A2A5E1B4AAC4B8F
          A82C71C4ADAF72089F82A6F2DB1787A79B6E5F0F7675BD6BC404039E4003A9DB
          76A6CA36B933B042CD5F054D5540A80FC240EE7C049ADDBC7E9DE90A8270EB6B
          1CC8865BDBA89ED4704AA2894CAD918BABD57B6BD0063274F0D0799F6B5F5C32
          CD482511BF894E22FB18E85D514FAA4830DF44375DD2BA4AD3DB097550984141
          B254C0D68737BC0134ACFC39DE44172C11D842E587FA1BC499A296143B69B989
          D2067817964DC6F1B12E4ABFB4F807F8CDC99429C0A5F7AE079BE682E582DA28
          ACE04003A492AA2105F1E8C3A6CA36A1563D8AAFC3EFA7757A8B2A610E3CD3FD
          D3B4C68D33F68F8262485DD401FF20BD1B626A4831DF1F7923C834662FFF5234
          EEAC6266256342983BD899F77B40D9D8FF196F9D953AF5D33BBCF55D49550DA9
          F2F8FE032F9886544DC9133027757F76EB8CB96ADA0ABBAADE2D723C5458306E
          F5A8A9B138446F9914AED74AAA6A481D7E7EE139D3ACEB072FCF840D37756F34
          05D73FFAA63A3F3AA7A6C6296214A5C688C4AA6CF088D0E35615AA49F1B7DF38
          6FA28DC21BF39E56984F03DB877EF1BFB3EB27F5255E780D95B6E19A8A7F1859
          9C9A5AE708BDB572D5A418894FBD8F9D1A706B430C3EB7842E87C1D6941DFEFC
          D24C80FBE8232F68F896A0850E84982E1D4FA9780DD5766153F4F3FEA82675FD
          C821256D97DE6AD05A2B62B51D591924F7970F3E12FD2909E85BF9C236D19DF7
          A95BC009B551D9C1A36CAB01410B0D0C9BAA8FF7074B0ACC4E19F7AC73C394B3
          914A4C74FE8D05065FEC0AFDE9D49812BC74DA24F1BB58B4E1F45C0048DD7949
          14553CFFF5435BD4D6E1EEA40C04848CAE6823D44A19D1C75615585215FBE36F
          7CD531D0C45AA7C474A9AD337CAD95AE6B5BAC53F756F8CF5BFDB0F0FEFEFA30
          650230B20538217CFE257B12EE37AFDBA536D9AEB7A2DB2FD4F4D1461080F579
          1D1583C13A6F558125757630AC6AFBBB7B687C6802A660BF206596E12DAC2497
          180068FEEA30FB91E3C2F3DFDE713E0CFCEDF3934283A2F399B91F3253EA7692
          2833D4CD2B07E86D53C8A6AE844977444C087BA8BDBAEEDB882595BB7FE2AB9C
          FDEF54AEE6D634B88423FDF85A6F8042407D97D68BE68C9CCB87B64D9C10E6C2
          7E8DB1967AE18D5DC2F3E6EF887876B9D09E39F7F555F5F3E2E1CA96F161A6DD
          D8FCB60BCA553C486BF7D469DF462429486043B7BF76266C70DBF80961A25543
          D5F038100466841BBE74469A95D4C9DAE9C1A5378D0F078EE539AE5B09D888CA
          F05D3FFAEA16D2C013B3BFD0647F8ED4D4BA4498B27CC49DB118A7FE7055E3B8
          08EDDF1F14A9E3FD952F936B1BA678E648B6A1E637D2ACC2657EFCB2A361DB0C
          BE8A7DE8FC1A589F3B525DEB3ACDD58674EB7F7BC57EA21FCE5F773BF9F9D550
          CDC7E1D6563962A38D46931252C2BBA9AA75D3FAFD8191025B04DEADEF673FB7
          362C693A638CAC883CD84C93F9F10FBC1A76C9E09521F20757217EE6D6563B86
          4FFEEBA3CB75F6C2A1EAC4F769D60F33574CDC3045F391F88D74E15B66A2C9B0
          5252E2B58D6322B48B362A4881C7F7F3676FE30F14DD0B6CFDB8659962CC86DA
          69AC207F7B80B3E1CACB5F183A56CF3EF5183AC4CD6FAAEABAFB58FCB19FBE9A
          DFFCFCECEF4FEFFB64DC219BDFF0F83FC116BA20C4D724936115A4447753691D
          E6A585F74041AA75CBB671E70A439F4D6C480E9A648DDC86BA9FD2ED1BDABED4
          E782C187A9BB6D0F63DF38B0A9D42EC8F3B70BAEDD01DF3A3EB6EC23A070DB1F
          F8F662813A68CC4043448B34A9D849E50582AD346E881FE1E88C8254CDDE5FC7
          F0EF9F683D341EE0DC406C43DDFB974DBC13ADA3FC9753B186BE41EEA955CAA7
          016D94E120A0C979E6D8C3DFFD15005C7D2F197778A34BB4364D0B0319CCA4CB
          9E0D09808D11B8BA5352D3BF96A8FE2BD44E1D0E0C22F8FEC8497192BF58BF71
          1C000EB85A01A5C3F06DA8C12FE9A4B6654F79BC08ED32F896D365F4A75475E2
          5DD4FEC010BBDE87DDAFD83137BA1C2630E9EFA3B64F253B736D880D59236B6D
          A46F03A9D1463E2C3253E2713D83CEAD096AFFDE45E90D08253494C84841277E
          0E2C735BF7981709B30D35FF3F2FF8DC3968B7EFE4E6DE7A77B22113A500FEA9
          38356DA58FD6E93D252FD72DFACFEC13C4AA890CD15AA714F4BE48C8EC1A59B7
          5BFAB0EB2A62E51321C6D6438178BE7D77ACA6EE5974376104A28DF236F5C682
          27EA2F5E06BE89456F430DE57C16BE33AC37A72D34D68A5B5BEB1866C022F0F4
          7BEBD4BEF8CCCA56CF31C7CBDDF6C410BD0656E1334D2B3E8C26F0B591F5BB12
          C5FF5357B154915FDDBCFD7F4178BEADD2A28069A89231290C77B451468AFADF
          B54F0BAD8AD405A100EF460CDC89DEFBF622CAFD19CF7B5F9920105AEB42D385
          44F63650E043706E9EA684157675A38BAFB716E65CED7B775AC6BFB6C3ADAF0B
          67EEBA8C546D791C2C11BE79FB2FB8726AF09012A773BAE18D36CA48A57FD0F3
          F8FA48F10B5D5BBF0CFEEADD3EF7B50DFDE28C29B633DA2B864302EDC066AAC0
          40895275791B341F97535BE31492319D68C628C46194E6DE0FDDDD37096746A0
          94545D491C7C60626CD55F9B12DF4D4DB573C4643C4D5DDEFB75279F688A7D26
          CA0A10A4CC96267041B9E73C1E99756DFF8C0DF36D9969A28A609D158341C1F6
          501B75383848FF7120F05238AEAA94BC86BFF74E78FF692D9CD37DD58DDCB538
          ED6309A9FA9258840591F3F6195CDB9FE225853F5A0DF3510C651D09F8D20668
          A6CBBCB035DB02BBABE76FF14C4EF5FAEF0057B2A7508FD0E60D1E639844A996
          D48D38F11FFDA8C576EBBB7E403F89E812F63B63F0EEE02726D550B21401AA3C
          FFCC313D9312EFDB08846ADCB711E1F71B61BB03605AB86C1BEA2BA93F710A8F
          DD7AF2D3CEAC5995F1B238C200ADC33BCC499428E515AAD7D802746DEA1C9C9F
          E4341767DF727F6D795E040EAF125C045644884835DE47822A6B09DAF33F5CB6
          1F1152A268356D24C85FFD6B8A8A7AB40AAF66858C6EEA996F3D005E313B9604
          94326360B74B634C21BB004C7A8B5E77D9EAFC6333810E0DEA2AAB1AEFBC92A0
          5BEF8E156EF37E64FD6EF2DDA508DF7769F3B2EEEDF8AC7462A4007125D500B5
          BD148A545B69C5FC680929E8DA0FB5A1DB13C579FCA81916304C6F9A18E106B0
          AAEA3CF4B712E5BA7B34C16FFC1DE14FEC0BAC9415B86730231B564F8C41AC62
          286B5CE6D8F4EC21BDF77E52F552BA7CC35447ABD1914446DA24693D81E14DAB
          23AEDE70DFB841381450BA97A0CC137665FDF8080FB121168ECB74D17CA19736
          120CAA77DE5949D0042D61E17F1946D6CC7C03D9F50941018DCFFD8AEBEDD082
          94786DA397CA68238A14EF8BB989ED345660803DC0F8E0134FA0FAC2ADFD8100
          2F2906BB4486535DEF4A9E00F01BAA6CC3F49168976A1B4BEC0B509617C165BD
          E8AE41AD469EDE89A8BA2D06655852A26875F378B2F268238AD41F9F5F982AB4
          D869BD7E413FFCF4CC33C28B1A74B206AA194B95351B6E7DF598704F0064D0F8
          213A97F5183CFF34C1D8754F2ED12DB391CE170D92FB28242A6D8E17B9790D4C
          4A78DADA3AE77065E99C48520D8F859C164F37FA696D40D5DF830FAD0F13FEC8
          4F99A76230E2D7D3ED22BC48A2B21E413AC616B23909C4BE00E57A10DC138097
          144D20FB1849AAAC490C4A48EA373F3CDFD69A94F0326BAB1C423266A3372F46
          5AE9AFFFF2E38BD2FF1FAA6C2535FCDDF49F4DC2697A7DBCCA5751200EDF5BA9
          DD650B8F58671E2758316A206315C1B96F6D2391AC52042949D72754C38EDF70
          C55B8AC6E2C82050257ED3958F3CDF5D870CD5C04981A777D9272B36CD65D534
          5975CD9C0180C96A53C7C4453F85F3B63E6A978FF62B516E773E44D02E215CF0
          5E7073169ED57332C149C941E1263564AD53CED8AF9F32ACD6BE170E74D8C98D
          1A3829DE97DF91FF869B3B9CFA8631B64E0E4D1AB23185F3364EB09FADA8194E
          C4EF1B463E96D3AB0926120EA7AD20F82C08A6C0C1482940E126A59BA0114649
          FE2DDB1D0FE52E908F3B88DEAFB866D212E4CDF01BEFD575C6C56A6C2A1DD4A1
          A0203B805DD5E016AECD04ABA4EE71824DEA1E48B0E03D783382D01A230529A9
          3121165E523563744E64E8AFA60B2627CA1F0B9CD448F20AEC8C06CABA31DE61
          CE748D765977455F608883642513E10916EF743CC19D4D8817BC6FBDBF9250B0
          464E4A664C8855B7EB302EDE98CC4CADF4479482379C94D26DA887DE5D43BE5B
          613B7B96C66EADB7A2C73F748CC81EB4255AF78E56F234C11919E182F7505A00
          2E37905C3252B0AE0FC04F4A07DB4FA1E68A44C5638191E2DD588435BFC00317
          FE9C007497DC07674569CCFF14396F854685A0B9120C25B2124570269AD853D4
          A2E07D5701C1EDC6A4A490A080FA5DBF1B8D14981A06EB6961A4AA9B9418E3B9
          4F3DF9A388EB40E91DCE8C791A131198F4164FB28B244510FF4A949AC20D04A3
          C8B48EA5C47A58281B6F0451260929F8182552E6FBF856D46ACEA3D0ACF67B89
          B0C7A22025B8118535BF5AD7E79F7D4AF2BFCC8AC281690B35461958950D1344
          294C5DD43E7F9C132CE84A24C1C907FF460CC1D9577F36D11DFC38EB84A4D0A0
          CA732F9EF4C6F3ED7E1B9D97CE4359BE7067302C33B302BB672EF7DDEF7CD3E5
          1D139B9ADF1911E3A3E9656657D5B9478E07803E4AE7545CC9370DD71F21F814
          9B6B093629E0BE2DD14D0E39BB5E4D44757D50699BCF1B478CB5FF684F21C201
          AD20350C619F2AE77F07E61D877989B895B98CD0C5BE9A467F4E4DB56BA4D058
          1FA4333CC91AA3B2EC97EF7B48AE82346C6F03B3704800D3D10AFE3334EC2801
          D4EB3846F87B12C846BCF0243E07F9338F3F467A607EBF9B3560350239C02725
          562C6B3BF8CFA461076BC5CF50DF2F8EF508504059F3B296DD477191AA71C0D5
          F4D408CA9D80E8AF35D422CB85A620133CF87579B5014B02340D2BBCBA9A3164
          A1B1CEAA6A760FD3E06C4BFDFC33E91CA0BA7109626CA3F446C34F04DD05A2C4
          2F49738BD8F013DC728D80372D6E8E2F226F889517217BAAA58EC2BF0CE6CD85
          CFF5489D453188C9474DF32258DB86ECFBDB915D5F1923764CF51E7CA474B7D2
          FBB357223CA9EA4975E73D8431E1C0A65C9AD7D2304DA61DBFB1D25A94C8A131
          82C5D939E335C9FFD556C4219E1CA5290EE1D9BB3BB85472D654F1322E28DF6A
          01BC75F3B3DD10D1FD914C3FD9D3E2DC14368EA1AC48841BBC276F1E6260AEA1
          C5217A95F2462C28A0FA457CBD9FEEB65F81D30CC4CF6A4941D913C395FD9E91
          777FC2B2704DA69DA0990A88D65EF1EBD516162FF8CF31892D5A5D118FE829D1
          83C49D8158C929DB4A138447E3E759C5C05B1C37CB6D2EFC856065F8CB971095
          B21602FD99D310DD4357EE7CC433AFA22C43BC278809AFF0F4658C38A18154F9
          F2515CA91B3A931A4A5D85B4C7D492EACDFE970A1C9D7977DDE2A66BF265830C
          2A4F14401634D1A03015AB63F8AF4C7E5FFC8031A01A96C39F147857060ACA08
          10B60D413E800495E9360F012AD3576E43882288FD19D391A0F2E6214055972F
          53F79E00A52DF1A22757F9D231E390BA0BCC45FE421D29B511A0DE5B050E71B3
          3599E1501B8513E26F0B40AD544EB0D2E49B92577E13476E6BCA91F1D88A7A15
          2D0AE8BCBD4A08BF1044839A0B6FB6ACACA98A6BA7762D1DC840B7A8798821BF
          96B2546D832E6B8D15DFABB148B19397A312BFD491EACD59A52E3A3874371758
          3257A319DE49650688A28C5DB4415F6CF28DE0DF769F8A9A02BA455534C52A6F
          51C269C694504050405AA8B6EBCBF453AC9EE4DD586493198900D5993F1701AA
          86BE04D1F5A1E65150595BACA403A97CF9182EA7BFAEA444FD3552EA4855586B
          381BFB7EC6F0E2188D66780FB5C73FD441BC73930F7A82455B9DF05F6F255D1F
          6A9050B428A03777951D3FDF2A1A09CA3D0A0E6A38D31FB6CCB5BA696EC63484
          BBAA330F394655D362D5822A6D93D936B4578FE30A72E9488A931C8B7EACEA48
          E15871C42DBBD917B344A343B0AF42922035486B9D8C287201EDA3B9D6ED7CB8
          A50CE71825548EFB34411E09D5F5B9235B54962F0C942025901649688CC2806A
          8D970DC9D4D78C428ADEB5086D2EEBBC07019F7AB37D5E9CC698D400B5DD9BEC
          2C4ABE698417A6AFDFFEE5CC3F7EF55CB019F14A97D72F57D5A280C1B4D5B658
          63023946654F852F1C6F29B4513F46A187488C674201CA48A4F8290B30DE323D
          EC160156A736CC5CA6B1F766D219E28D1E383575CEE113256F0CF42DF57F7640
          F3C1DC4D1B602F35A53E0E1E27038BFA15A080DB76D30BA168B5561F121474A5
          6D15A2EBEBCA9B4BD098804DEB8C43AAA6099BF1A19F7D3D1A53E9612B34C642
          453BA1890AF5F31AAA6CC9E214C1D62DEF89CA848039FB6D5E8D96358BF26684
          3101DD1D58AA00359CB6EC1E291AB7312114E3D016A431811EA3A871F88C09B1
          28AF9FC4B5B251275282A428ECEBA0AF1D58DAD2EF0526066A729B8E54D7890B
          F50B9A692079AA0DF04BEE618935D877FC72DC2E89F98B7EA58B06E02EA6FB5C
          2EA461C2EB8B58CDD17F3C6E3AFC67F484176DCBA0419574C041198754033D01
          6B21E86FAF9C9ECC3BDE89219A58F16BAA9D45CE5BA0952A88E66DD823DFFFB0
          EC7BC66E51A625CA98808AFA612D0AE024D98E556F4C644E45801AB8C879017E
          D75863225EED1855D28EF068092E1CBC8A2B4F4417526072A4925C05A5A4D815
          1C01E19C5812A9379F3E276CA20DA8F663569CFAC6200F57120072165CBD7C42
          31BD635FFD3DEC95D08AFA78F81805DDED8B83CF97CB92A317AA1BA3D8194850
          FD593D8BE0B12F8C315111ABDE986843822A2CBF72DAE06D4A79C68752523C46
          5F851695D24956BCDAEBBC65D3ED41750D95440207EFF3C2BCACED9CB7AE5F07
          FF4BE3C1DBCB2356C39F8C10542C7CF2CDFB312C11D5F54521AC3E748BCAF26A
          4D841D0033E1A52E553B8D2B6D47747DFC7CEBB16F9F32749B5291F1A1A2F76B
          38FB6FED160570EE655AC5CDD618181467735E3D7C0A990C21C8FA66CCDBF315
          6D04DDA2047FF29F20344665CD6877828D5218638212AFD698408D51A2691CE5
          ADD3B832A67520D5756B95B20E4D05A9DCEF4E6A1B5DE695657096CCD5E81064
          5058BF3DF11CFAD7BD47AF26EC90D93D1850D9E9AFC25F68CC18850695397DF2
          CD958A2B213AE1458F51A2F976E9DB862605E5782A5DC2A282D4C9CF6F6A1FB3
          14D0320617CED748FADC576FCC09C4B4BE7BFB3BF7AC14FF1603AAB0DA6B058C
          0CD67B8E1AA332A607DD2529F237D1A06ACA341813D816650DE025A57D24B13F
          37516900433929E8A31FD26703DA0BAACDEC8C5AA83E9B93B373D67ACA107689
          08EBF291C8978345A07AE3E07F13140A06E1393958EFB90F728CCA9816C4BEB9
          4CFEC260BCE715B16A27BC2850FC7C6091B0E7C54BAACD4EDB2DB40B5C940730
          9493E26F397FF9312DCF24555376CBB468750EC1DC0F4EF8003DF41E5F4C0653
          FD8FC59BD739DF41B5A8022BAFCA150A34D809AF2FE20E07B222038132B67C57
          A6CE7C548BA2C6AA0D1CDEEF42D8323257E3FD77CE1AB66CEA5046A2F2B09F72
          52FD0977BF7E53D773B6E7D586C6A83494782FF9BC277AD203940E1F322AC99A
          9FFEA3CBBF26C6C27B467E9EF5C274B2629A81F69E638D89698100E7E652190D
          8C31819AF09637C5214175221A343F5FEA13C64B0AB64883986EDBAAE8CC9493
          6ADD59BDF355DD57EFF61456FAC6A8700816BFFEBB343D6590DAEA158E0A9B75
          1F39FBF80B30CAA257BA0B96A8A8D99810396569DDB2F46D4DC604169492314A
          24BCA4B4B52854EFA2A7A2F763DC5DE5A88F75D68377CB3D6394D92682B7ED3F
          9177654C7AF3E470543CA6F8BBBE171364D6AAA0008AB1CAF29327AC60C628F4
          3C4A1CE155AC41D4E43DD7084A3C4689646852F738AA26B22A6CBFBEDB2BB53A
          1156C3F74B3D16F861A8D3761E843F5B76A5C4790BFFE285E3335F9624910A44
          DEF3AE3B89327018AB0F6D4C64878B9CB2358DD2F46D4DDE7354161254D2891A
          A3E4A080E2F70C4A6A24295E55605605A9DEDBAB007D895351EC343F00399106
          3F1CFC0EE931E1D4D4BAA2965ED5FE58B2ED2927D12061156D0D657BCADC429A
          26BC03391122C282A439929E5793F71C0DEA5E77ACD2314AA4A2FF9CC3350069
          69A52B5D6E2391114809BB21FA3DABA860F8C4BB6EFB3773D19F12D53D8E4464
          06F2527FF2786D0E98234A17EBCB96AD94D7644C88AD3E40E191C678CFD16314
          0A5471779C32AB4F22BCA49AECB5D9CE887763B1CA166B1452C2DBAD2DE2CF0A
          931B73D057353F2BF138F1EBE8F691881AE79DBF253D3263EC7CE193CA7391BA
          85344D7807D225E962604A84D854D4E43DC7B4A82E35A07093D24E2ACA498865
          2452C227D058C49A162E7D06AD9B3E8855FA294123DD9A0CCFE284EE7CDFF8E1
          0A6B60305DEA16D20C2A52E28C69BB27F64863BDE7716A5B14661EA518A344C2
          4BAAD3560BA0829428D58E7AA391128A51DC171629B6410F161C5695D50932E8
          02440935E6F913512FFADFB69164326327BC68EF79B8C4F88732FC45839526EF
          39A645F52C553946894E7FF4EC355C6BCEB5B2281A6A96A936B88D494AF8DC8A
          1821B35C80AE4DAFAC56FD215936A75CD507289B5CFF256E521AC728795E5FF7
          6D91A9A8C97B8EF64CA81DA384664F4ED55FE70C460A4C9EA126E7DDB8A484E6
          7F7163C0EC6B7F1D53EFBF6DA730E1453979C95FBA7F2CAA79A269C23B903E4D
          3A9D86722785E298F012312684A7CF18077D6038522D65EA8AE01125C5AAE643
          BA4C8949A4DEBEBEC33BB76BFA5C57C54060B0BC87E45DA0E43EB6DD03F71805
          00FDA22D6430DE73F484170DAA27562DA82CD779773F3C6B2852606A88BA924C
          4449B11BBA5BF0D6075521AFA483DB7C67698C9CF6527AFD83A5CE5BCAE0FC5B
          FB397B486E516A27BC1911F2C84E81F374CC84B78682F49E97372C533F46218D
          09F110796BEF395C0555B520D5716795BA9408E2BD1F257B37D16B408AB565C5
          660ADD234AE3846380DEEE25CE8EE6A62C720786CE1CF3FF1C9EA986F59E47C8
          D3C586D2568E417BCFD129CDE81655D4178B70DEE72133AA3959A29EB7709FA1
          4841193E6A8BE01127F5D7E5DF75AB1097F4F5AE47ED47A80D63C3BC35F5A343
          B416CF7057A0B24D3CCDA0FF407FFE31798844B5310188AB986AF49EA341F5C4
          A9B5FA32DC453DAFE148F5E4A95F334E9CD4F7E7538816544668E4B9D921A23D
          93F875F7AD67F96BCAD618A63747795E976E78CABDFE8BF76B523CAA8D09D11F
          931359048D0914286CEABB6488341CA95C0FF57B7B112605EDF9330757255655
          CAF9E870C57271CB10D4DE87E6046A623502B4D6C883F2ADFFCB5CB35534A4AB
          3126842A1909CE569F2EA6D19850324689FEA7E09373B80A461226359895A8BE
          40226152ECC7726F2E22761108F1F604BCF5B7AC1436D840B10DD6B495179834
          53D13AC0FCFDE02B4BAC30C64466046C31362725BC228AD884B7179EFF89EDFA
          E4F3EDFC4F0D44EA8EC374F51F204C8A115F757C0BB18B40E8EE9B47FCFE5614
          2D87DAEE0F4486A95D32DC4445E4FE0E9C3AB7646B9D37D298402E64ABA492E6
          129AF0C217930052E73DEC676E86876C1A672852C3699A0AB9132655BDB3EDDF
          DB085D044282379DF6096EC0AF0A62DC1B0C0F57BD64184C25A3727FA9FBEFAD
          7D05DE550C6444C2CB1B084EF3572296786A1AA3EEF4C523AD3E946722D35D3E
          8D3314A96270AE864F1026C5ABAB422E5526A68A3D3F47709350EF4FFBBD9ED0
          4855076D2FC6E4FE72FEFAD5F755C5F88B302684A29F7F8E90F71C9DADA6C298
          102BEFF373B8365E20480ABBAC1723E2B65F3B3D96C83520057E30FC8D358614
          0074DF6B0B9AAEF45A51D583A46AF93977DD26693B411A1300D079EA31C43730
          135EB4D58758A3A0DA98102BF70B83902A1BD438F61327D556194BE41A90AA7D
          E6DB2840092900E82B69F69DA1C45123F1B46204E61CB07A35465C254DE63D97
          7DE19CC706F8CF75D4A588674B698C47A4BEDFEB5F0A3F81A0108841168E7183
          17E7CCFBE23CAEFAFBC46A91716F2CD51824312E29E88B869F6C959312DAA925
          F55EB3D0F98C50CE641575CAFA8F5F8C7B610ADA9800BA72F207E10711D0A7BA
          C0EF915B15883839BB9A8C98700E3693E1F60BA9BB13DE3848CD858FE22A86D7
          B78B48662B9E2278C625D5B279DF62401529006096574D9C838CA52982F25895
          EF6FDE1D53806C515DF9633F42860AD177A8DBCF2492FA45473275AE9F89EB73
          62F16F2CD4BC80C4B8A47EBC7DD85E0D29E184B682E6812833983F56CD3463E4
          EA61DB971117DA953BFF70C78F26DA171BAE222702E3545DDD32CDF109A392EA
          DAF89AE8B06A48099F3EAD7A62B8BC5D0DA6AD523BCD68FCF9D6FA0D0AB3B92B
          771E7FEB970BB4BD3E3DAA6A0CFE42D282D41938AA911895D491A463A2E1582D
          29E13CA0BE82345BBA5FBC2C28AFFA2EB30FD8BFBA50FA4676E6CDF3FEBCEEA0
          FEF705242E08C01FC553ECA2A74EC624D5B7E9992745FF6A20256455536A3D4B
          9421389C92A071714FEFD1AB2B7688DF4951724BF3967D8B357DC3181AB6C6BD
          9505981A8EA7FD1993D4855327C563BD4652C2A65257E230CDC7BABB1B8FAD5B
          F27DFB9E55B6922CA4EF4B7E35C12EF30AC902E2C56371EFB8244DA2D2247D91
          6257F240B5E7837CC66E8C7B49DCCA7190126D1742E1876B72DE4AC5BA7238E2
          158F9C281FA06DD33B2BF03E217C87EE73F020928DD079C8D9DB6B828B73A93B
          5E8B024AF7C3B5EFACBE488D340E52A2D4DE92E7ADAFF738F9F88EC5494AB15D
          081E35FC5814F992B0FDFD927344AF3BA2B627B9A64E7C139757823B323CC462
          35BFD80DB8789217B945E32585B790BBFE7ABFB6636FA96D019CED735FE9AD6D
          770AF0B2B9BE02E7E3ECAA180C0AC2D59BF1337E18FBEAFCEE0DAFFC0BE703C2
          A7F28C3D9443FFD154CF7464A0A797C9B3B67776721A7A150C8F08F39B5081B7
          4DA9AA4B8A91FE48DDDB7B5C6DD64ED6873BD6D8035C462DD3A3F1497C3EDE21
          EEB86ED1BE56B806E7EE237F3E6473FB18C1BD16358873AA7F9B3B495D5FC1EA
          6EEFE1DABB79B83BDB8BBA767E878BB3E8E354279C5BEAF467AEC637B0EA8FD4
          D57F27AB8B05F35EF09F25A987345873FD597CDBF0D675CD17E52875FB85E222
          5BFC75F62F3AAE79450B2AFF72E41395AD03EC6F69633B4D9CE4867D954000E7
          F41B5D1858A5F447EAEB7DC931806ADD79FBB76A69E52AC1DFCBF1BDF9B55DE2
          49EC00AD1DDF1E64C72E9D21B8D7A20681A7E91B8E979E9A00B06C316309D8DB
          D4064CF01AAFBC45E0B5D2996989384702BD9102771C3EBD015029FE2B0E5FDD
          8C952E02C06751C84909EFA79231294C63A6C9C0E6F5EBF1DD355ED56E3E30B7
          69D567F13F53ED9E5980E803071B18C0141F37950D07AF955E4CC2EBC9D51B29
          E6EADC0F3F527D9EB2A7C62F707F56E234519002FB9CD575D27252A2ED421AC7
          47B8A9B7972F1D3DA5E71533696F254D66AEDECDCC7B3D2FF994A2B9F219D5C3
          9303C6A9EBDF70C6A7D8A9CBF00EAC7A23D5FD52C5E6B7543E49F07DE6BA9B37
          3C16AC98E18C2055DC322968BCCA3B8691121A58954D0BD47A9C995B1FD29844
          4D50E55B8FCEA8DD7380ED3195F6E219592629BBA6DE2ED84783CB0A27A95236
          6E27A5FE7ABFAEBC55635492AA7EEEFBD9E045A79C62FB65F164BBEBCBE5BDDF
          507DA3959F9F8AF70A414A68949078741FD5753BFEFCF28A36EB00D589F743D3
          A3C5FE4F580182AF7A3F938C544C7AF3F830CD310A7CA43849B1B8F795D49F45
          3194B34A65E3803E6BFED1967773B97DF3812A96C712AB2D30FB00ECACEB760D
          F05436174391125507AC71264F507E1AF686811B04B78DD52C3E6D688A9FF01A
          4FA57F269E5431A96D5EA17826C2F84851BB17E37680E88FD460CE6A95A49AB6
          7EBC08E0A5C43B02FD69939B534AA6252C9E0AFB30A7A59EEDE98FF5DA604809
          DFF2C64ABF70A57797B661D635BDFA2714129CCDFC48E4446551193E61F8A682
          B848F16EC4E0DF0ADA28A4A003F77FB5979002BAB3E74F3CC22BE8084D58000F
          CAF4D7B5D8064C453D6925A4848F8DEB50E380CD681F79A1C7E6B461488147BE
          D9E2EF1A6B47AFF28AC43BFEE32255DD88238228935148756C7A2B01909212A2
          9A495F01D1D37399D313E6C2568AF3DB6BFAC6054D82BB799592126508965A91
          7D50FEE0EC4F36FE715AA7DD8E558A77B40400C6AEE9709C85DFB4C4434AE92E
          7A2A651452B99F89D2EEA5A4809EF4FEADF6A2DDFC520BA1792B66C07A7D5663
          83606AA8C26E57414ABCB50B3FCC0F91EBB5276CD60F670C434AA4E1E2C19944
          EAE8E121D5485F41208FC028A4320F9C1DA3200574FDBC4952BEB3EF7ECA7D87
          45CBC98A4E0BEA6DF65358432A49093FD84E1D09862D062E7CEF78CD81B38622
          0556D303C884D622E12005A64610616F1452D96F1F8C8291E29F252DF293FEA9
          F3F64DAA476C5C90D2E9891A52427551060283A50D90FFB2E7FBE93F1A8AD4E0
          6D681EC15DDA71906A2D4B20929A631452595F3D1B349D2427C54D99752BCA4F
          F647A8252FADDE7BF9E2A9D840A47A52C27EB4A2D73F447CCCE2D70E07A7198A
          544D69189968BA9366525046A01F9E23C9649CDEEFC7C3055E33F87252492B99
          5951B0A800BF3EEB52F7DC15C82D6805352ECCBE791A2EBF8F26AE0E287873CC
          27560622C5BD33B09078F145CDA4BA6EAF24D49F1A87D40F67804CAFC82439A9
          84313DD97310019C9663ECCAFEE909518AF905585FD3ECBC5AA36F7C88CE9842
          6EDCFD4B04601852BD05133497AAC64A2329F1365A44642452A71DD95913DBE3
          14A4809EAC397EF0CFB4DF9EDE75B3903F2F61861C0E545A3CD9C1DF4B53A08D
          55D57271E25724C390AA2D9BE9AFCDF73492EACD594D2CDBCD68A400765AFD0E
          89B747E2A1EDCE528C5522B5DE5A3C61E07E4AB17DF48A70E913AFEB9ED55A3B
          38518D0F57A2D29D877C008FF41FF44E0ABCDFBA483BF7BC4652B96E048B4518
          8F14C0FA61B964D584D497DE9D3517D101B616C64C161A837753A8EE4BE38245
          2F9CD8A218AA6F24F9F9A90B24827BFBBE6F2D766F3F7B56CF3E0A6E8120464B
          57A226528369AB091ED988A4F87F8021E248B42CEAD19D831CAB5A0B168B9CE1
          10233FB5D66BF9125FEBFA0EB1ED0776D676B9054E56395AD43EF3D57C805B77
          29EBB24E8BFA316265BBCFC59389A74C9A2A316A4C0EC6C888A478371716FA88
          D603C8E35368B382712B46B2FF00BF2127BD352871B2ADAC88F6484BC3886780
          F24822F479C34111C5B4AF2F38300925E7A9577F766084D6472B71569BC4C7BA
          B982686A8E3149A52C0332BDA7C323893D99E8B12A5AB65504B72A239B11BC5E
          B1FFF8407DCB18A51B1B881DF542A5FD74565000847BE989554F6E24AE8C49E5
          E290D4DA0B255C4DF30F8C8C4A2ADE919DE13D039E47D19D39D70FFE49C95825
          152BEB4A07372A61A6AC4FE3F7B8281988A0EFCA0F89CD4391ED2768A25845F8
          E863554E57FEECA93A7C5D405277119C94385CD99E70199914C0CAF099C183AD
          9DEFCE8E52625648D5D0197A777FCF84052B22D418756D9BDE5B26FE1F89950E
          365341B2AFB6C38B5CE8529B44A53EDF8FD21F83FB4832199B14C04AF7235F87
          E52661C7AA45F218BBC8F66BC81C73BBCC6DE9B260786F025FF37230FF88C48A
          92CDA744FB7187FAEB56DBA92767AE4EA0D45B14BCA445C4BD1E462705B0323D
          5BE0D9CEE829306CAC125BE90D9468767E6AF594F8A5FEF296C22BB20B90CE73
          3A37BE2EBD54D8CCB783CA0C0AD46119555F76946EA0D45BE9558C58E283A9F1
          4901ACD4865D70BF03660A2CEF00251EDABA9265AE82C69C7446C08A18A9B900
          0DD6B6D807FA888EF2DBCDE3523E081F4537A53F2058DBB48AA1F4195A392660
          52478A7F6301AE1DFC90320EA9EFCFC14801CCFDAB10930995A8A4BEF49AD278
          6103E2566764F74524CC971A83BCD69AC149C1E3FB37EE7C54FAB5F49FCEC39B
          D120A5CB2F54ABB554DCCC401DAC3E894A1D8355FEADAE3A410BFBD438F1A9B7
          BE8BB65290E25D05C210EBAC316685640A2C8F7AD49649AA92B2A8E9799C3909
          B3A5C6E0507DA35D45F2CF32CB3DEFFB37E1A448A43E2A7BBE160B0AACA8DCE9
          C4BF85127B76A0AA3F09926768D3B51A273EF5CD0B13A2AC14F1A9E445057E88
          0A552AA6C0F2F8545D992C2F6EB0E4669175F48A08090141F5B3AB62A477402A
          FE710ED2E4239138D65620DF0122B6136E8B8793EE5BE792F62C5579FCF2446D
          A611461AA74E143BCC0393E5518F4410559954B959A18824D695C6CA3DA53D77
          53CA5D162F0F11F56C174F9E947B90D20F9C5032DD62E58F0DF320C08A446D89
          D3CD6E148BE6AA6AA403D342FC881C497E61468A4FD9E68E9993028B4FB1D27D
          911DA0B229302CE65B5B12EF0EFFEBCD72EFC425FE9C4D8F2B2AD8A5FDA4D443
          CBAAAE779B867F2BBCB6DBCBB5DDCB132ED5567A4711AE65BD1819CDF6E3E5D9
          F52E83C5A786D3FC91A89478D6E1D179D4FE93823BBFB0FA02C6979C54841E55
          C6A738B5A4303ECE68E070EA7C02995DAAA5D2F683B2BDB533578C67A5F3B2CA
          F6C0E353C3690188080D7AAC6A2D5832DC01CBA3A82D47E670D3A97ED95FBF0F
          AB33AD2E92089576474E06344B90393912C7C7344B25A9DE82442D42C88051E7
          539C1FE7C7C0D7CE0F67FA236AE46250DD99640DF7632ACC0A89282D9C832760
          6B06D4C67C798D5576E4291A8DE3B2EE58FD94F251450ACA1B876F592F46C68C
          4F5DB71D27DE334FE6A145173C477BD6DB2F9297C37FAE2D8D430460CBF6ACDB
          03FB5143745ED04283C853D573E8C84FD4D33A6155A406325769592FC3A8F1A9
          25C58EA26DE2E5BE747407889E02DF4F79063199974C81E5CADA770A9ECDA431
          8F425CE2C24FCD70CE4D9EA98BFF1C2E55A40A1D66697944E3C6A76C739D84A8
          14518FE1D440242AE414B8BE045888185D6A4B6166057717F94D78778623E305
          6AA570C25497B8B8CB8DD65720520529E6CD95DAE67A18D9EFC7CB13A282C5A7
          98E9416AC6AADA1E9F824588D56BF0B1AAE0BD637EF0BFE1CB4D6AA732835538
          6F3B6F25E86D01960A524520E108A24CC6F6D0F2729DE6C26B3B63CC0AF81458
          68A5B7DE598844259F02F35EF6FA0FA205E0CD22EBA6F607042941C24F8DD057
          DFA78A148EC2C02A65745FBA10D5EC2458D463382300810A3E5689E6536DB791
          A8E453E0BB6FFD8E9C98E0CFF7EBA374FB86A296BA823DAD838BF49784A19C54
          F950B4D647347ED483976BD703AF72309C1A84B000615360F1CCB7ED568C32B3
          42F0BACB5EE4F98864660E50EC6623BFDDF92CF8E15C0393E2A62C26B8100126
          13C4A77899652FC23B1F665AB08AB14AE2A3682D5C8C4025F1AC97BD7808F52C
          88E5D00AAC8AA07098DF28F971E8D7CD062655D9817F592F4646F2A59F7386C5
          A7460E2C5A08FF28332308311B94A3927A9318B763306605F80EF405CADE2698
          EDDC9413DC3E39CC45FAE8C037F6EFFC568F35979491E2272FC0BFAC172323C5
          A73E8DB381C5A7FEB21F8FD8367E382310894A3A0596F9FD5A6FA150952C6BDB
          F9233A88448C146F6FD463ECEAAE05523A1DCBDDCF6A2A394644CA48D536C4EB
          D0688DD3FBED7FC966910D2C3E157FC709892A2D48995921F7D0A251D556DC6B
          FF193D8525462AE9BD0BC1C2D7DCAABF3244E468FFFBED237A2D34AC84947C77
          75ED64A471EA54097731A0884F25D8E4225131D34210AD4A320556F8D25B6F2D
          428C55F5AFCFF8087D1642A43A9E70FE433C5872ABAADD222682EF076DD7DF20
          052825D544D12A822893B12C0A8702FEC234D8AA1C5E8E3302D5507A0876AC82
          453DE0C965227D00EC439F850829C1277B3FFC408A865B5BED3CBEEC29FD96AF
          C592026F927196FC532EA3D97EE02D3673052C3EC543B5AAA1CC60C4BDF564CF
          F683C7A71877A2E1A8F60A742295B976E8DA4AF94FFCC6129B284FBDD6C3C7EE
          EBD156BC4AA77C51E359E9607EC14B305242548EF3D45A8099F304F0F81472AC
          FA08D48954FA9B82BFE10E09B0990692A7EA9C790B7B8036A8D59450BA7FA076
          8792CA98518F9FC8CBC4190A52BF1FBA55A17D80DD396ECE702F1902958EA406
          AE07CF403AFF2006851BA663E6AD3A7517AED2EDE0C62495E460BB4874B5320F
          2D7AAC62A685223AC0DE33412BE13FC3C72A1D49DD1360B75083DA2BD821017A
          DAC0A0C91E59170DCA9B40649B232532AA8F22AE941F6D038B4FF172C64621C6
          AA8C50C4ED54FCB509519D9F715B6E01EA464A7063A1D2396817653030502FFE
          7474C6CB404EA28EEF8071BD490EB77942548AA807C6ACC80A86A3AAA77167FA
          C10FD47A5B6656E846AAA378A58A6BEDA3F52FD447E14DB4ED573056C73DE08D
          EDF713DCE6C5D8C0E253D8B12A047687B53D4119A88C25D958A51B29755BB232
          6DC16A5F9D97A1A248897657D7F188C6F6D00A0A798B21587C0AD3AAD2616395
          D04AEFC98E42048D64A8742225485AA4CEA7CDA7D44E8AD491158AD41DAB286D
          8F2493D17DE98202C1C214587C0A3B050E937780A2F9544FEE1CE45825312B88
          91021BDB6DC21431BCEE220D158BD8F48688609D7C161D76F03E9495AC79CF1F
          4D327ED443706B6410DE1560CC8ACC5059F113F1CCB72717B98C53E2592746AA
          A260DA31E641793B2A85346E8DC7E6B83639E8ADAC6D094BFB08A24C26884F09
          F20B5E8177DAE829B00295C44781590922EA0009924ADEC1BEBE46361705D366
          692EF90B40CDE5F6E19EDA362C8495CEB911A77D04512623D5223B3F56B41A25
          5E02887F607A3CDC1D20C87142445B8733422565E1EB3BC5550ED06355DBEDE8
          89C4BC49E0DF69CF2B6C2F6616BEDA52FC46AA5D84964BF111563A91C2C02A65
          9CF8D42B6F2DB506F85931525269362E880E8F97370151F961286BA6786C6AEC
          1117E827751544C3A73F244671DCAF8E7BD16751436A202BB5FCBFF29AAFB58C
          25389F8EA0916A13E1A58D43106E51F092A3F1AF605029E390DA34C1DD1A807A
          3C241F807ADC0691FB2CF087104541486CAEB8A76273251618890920C2B1A401
          BBD6F51FA3CFA29A14EBFD802D47CE5CF116F64376C2F3E44DC4BDDF1A0036D1
          48E1DEC459C149D53669B1AC1723E3F47E9F7D6D2FDA267CBE64FACFCF897150
          BF892E0910FFDCDC3B03F133ECEF3FB913E8FDF25FBDEACD48FCE221DE89CA7D
          0E80E006A1BC13884113841276DEC2480952E6E8C3343192457156C8084C966E
          232EB891802F1854DFA5328F711F9F00A9AB9FA7B8773FFC69F40F57C65D7404
          067256137BEE501B6584A8F31646AAB16AB93E829426B0FDB4D82B072B42B61F
          7DFBD731E9477FB2FA63FCA9DF9C80DA16950B3B55AAAD821D1A4064358D8214
          98324DC78A09123D10A4C06B05B3BA12858FAEE8ABA34E40A14B04405CED94E1
          E9BEF8DB868214A344BB3588683D10A400A09FE521EA79B3BE3FEB0825CFD66E
          D8E81AF1EE73C0ED59949182528302707E47BD1E105252E57C7FDE8E93847717
          358CA06A9A7718BEA44039A98EDBABF5139E7C904881E5A97F7E3A937B6B95F6
          191343D4D680083C4F5E468A706160957A904809CED2F86E9B78CDC40D0A9886
          5A02409EE6DD1865A4FA7256E9298AFC209192A8C816E7669F2AD55BE01AAEC9
          E9202355E0A29F15DE0F22A98C209D5749716A6B5DC2D53B79A5A486B256E86B
          F1DC03470A4CD647F49D575735466DD90429A93B761AE32B78F5C091E226EB67
          8928BF9E6E1FA1BA6C8284D4706A82DE4AB83F70A406737530FD101234D0543B
          DA25A4EEF1E6133AA43A3D70A43A4A57E86DA900D84C259195D72716931A495A
          A6BF3DBB1F3852F52D8BF5F3E4C4025B69FC5065F589C591C4F27E3D9EEB8123
          451D9EABF9430404B553D8A10198C9708D8337C0BDB184786160957AC04841A4
          92317AF21928D45E1DE9022A71B457B6EA238228D383462AF5AF80EDBA679F60
          0ECBCC9B4C469894FD36CEFCA4F95A140656A9078C14F0FEA7D36EE2291F4750
          D020A5D33F04765777C78635D410D8AD57B31E3452BF3FFFC4593D39E2D0F74F
          19172C908F5777C686DE9CA1979A8E323D68A4921E79679F5E17F4C2044177B9
          915207C81D57973222BBF56AD68346EAFEAAFDEBF4F4E8B082462AEBC6458A9D
          B7B75D18C13A2DEBC5E84123D5B4F620D12DBA0889535DEB16315E78E9FDEDFA
          09CACBA54752AADD34D23589B22A073C78852B75AAEB54496A2F88CDCCFC09C7
          EE7B7DEF7E640083022E5E5D8D63F8248001E8B31009A03B29BE40F67F4379F2
          720B5636004F785C92ADF81F00C8FEF18488546AACE849DA92D849CBC608FFE1
          839863DB588B8F676D23392C228BCCCA06E229FEF918FC107E17A233A51F3CE3
          223D21EAA03C507EEC913F1F815BD3D63602BEF81F90877D34B6E233C9EF0221
          E9E52BBB0B2BB0896A1B34D9C14A726CEC61B51B27752545A9919D974D9D2DFD
          5F68C27C76019B04B9C67084FF08CF515FF894D02812DC9F660F40F6D1CE8549
          336D6D16BADDEEC0B4C1593E55341200450455D245C7EA185024BB829EF37A6E
          F349E094B983851C12290B8C537C0D1A13635330545FB8758943610FFA3990E6
          4CB9DF680590A23C45D70A0EC0B375A1C0C8C652E1B18322DBEFA21F04E41ECD
          CEE790208F85DC8261D44121BB85636F759300AB79138A18E8BB80A60550D2EB
          433D43C36A2BB050209768ED2A5FE8DCA6F8B28B51B429C84AF8364224E93FA2
          0F71C5E5E2D2968AFE91B7291E88B90FE17B2F3C1E646323392CBC4D41D6E2C6
          24FD07E000B0FB854876000F14701D45FF2839284F40921D1BF5D86CC4EFBDF4
          1FD4DFE477017021CC41A5972F6C5302657701163985CAEE027358D3B4298534
          8613F43A4E8D7669DECD9CA88C62FB49A457DB6FB4CB42CA5C6421652EB29032
          175948998B2CA4CC451652E6220B2973918594B9C842CA5C6421652EB2903217
          5948998B2CA446959865D3551583B3901A55A26F3DA68A8785D4A852E586938A
          12EF503B344991E36221357AD499C51AF7D129398F918305FCB96FC8EFCB426A
          D4A8E5057E701DF54618CF7AD8D17A688C4DE1F79F0A767F26BF5E0BA9D122E8
          9B6B5726E5BE70917CB0A7C57BE2DD71FF86867D59EBDF90170E44D74BD75D16
          52DA49B061F20180BEF114F9D989CFBF1CB6FBCD756B01E04CF20FF265247447
          FDED632A9185947612ACF5FB16A8DC7892BC33FEE997E66E7989BC1BF8F3EC07
          8A7604027A4D4A072CA4B415F4EEBD8B2ED7DEB946DE19BBFEED699B5F0CDF9D
          F2FB87FA2A12A254A39B54B778E93938E2A0EF175477956EF3F11E2E3B43DE19
          B7EEDF919B5F9C367BDBEC59D04A6DEAD1E1D4E826C588E8696FACABE17FAACF
          C57D7A12B5C07551CD34B7DC2981B73D82F33DF885241058A2D48CB076309B9A
          991269412A67E816A5A91F18F70D8EFAE6C696951520B01200561024FE0F10CD
          7A05CA9E26E839E79F4FAA630EABAFADB186F59A0EFBE09A5E24D23F9E545BBF
          A43701F572AB66AE514D4AFFA6AE196B5493B208260B2973918594B9C842CA5C
          6421A583FAB362F55FD947952CA474106DE3A970DD8F825316523AA86AFD490B
          A9D1AFDA3F593EFB4FEB3B5EA85A16525AAAFA59EF6945C5C9B27D5287396E06
          9EA55B486927686FDE1597A267CE4BF784483A33427E5D1F7B6BAB9685947612
          3C3DF53B80BE51344E71EC488C177605BDF5D426839E5105A9BE5B16526A2558
          E7FDBD38DFAFEF68BDC7B3AE7533492F07BF64D0332A27D5684559A9EA1B1652
          22417BD32E789CFBE4AFB06F5A77FDDDFDA91550FADF2F0C6B07A24809C4B130
          E8BBC5EC0455DF504E4A30C2CF5BF5009102AA9F03A6B856FC1EB8665248F7F0
          B776D51F3EF5986143332852459F89AAFA40AD9FB30892EAB8B041D3BE4EFF2C
          52406BC9D8194DFE765B97AF22D9BBD77EFCD01A039F0F458AB12DE049E1F3BE
          B069042F29E8CF1248788C7ECE6785B84989B7D600593D4E661DCA95E8CCB567
          BB3DA63D63FF3829629EEE475323F43855F1FD3E2F00381FDC95A8EA1B6852BF
          7CB9D94D682CF67F829B14EFCF997D8D355575CDBB371BF4DE8C22DE0DCAD855
          C0251204CD5235B4DBB918243ADFE6612F7CDFFBEEA8B0FD7A061CE9B188DFB0
          3E1EF7A6F06B67B6E1EEFD78E76D4A4A6A3B98D0734F4280B98B6405092989D2
          5D4050F927A0C9B30C9347D1911914D1EA8E994F4123A0A80C663EFD695A2CF2
          2F7DD55156808009E0B7286E24DAB1FB3B9A6A16E8738B8D7FBA30A4FADE1F88
          D8F1D1AE1674EFC77E876E27FC6CCFA3CF5063D107610F42C01892A6FA7E7252
          FCF208C3942CFF470B43AAF08FAD692FBD170BA02D0AC1AFC7DF9A0800259C2D
          1852B48F87ADA145CFE6E325256A9BA6BE6FF3138614E5C09A8A957BDFE8C358
          14DC6F7C370AA9D4CC43F77EC067D0066BC0D10E779BB2481B6148F10E5DE6B8
          3EF66411D690617344014EA81D339F3ACE7ACA06B01558481954588B4250D63B
          3E80735789EDC749EB7DA265D208CAF6135AF63BDC1CA1986770F77E1669230C
          A99143992C9B09EF3461E753D0D15CC1177F8C4DC08C535F71D75801631D71DB
          7E1669230CA97B5F3C77E5D19CEDF55852DCD75F4C5A579DFB1C669C3AC35A47
          02ACB996DECFA0C290BA7BECDBAF365C9A0D60BD4982FF92EB1FBEE8F324A64D
          5DF96C9215B068A7A5F733A830A486BEDB71EB88DDFB9D4ABC4994CF6ADC023F
          8430E354570704402EEE0F60EF27B8106858671F4C30522053209AE8B0ECC072
          AF89081F85F433A47E868DAF03DCEF07D60D93845F219100273FFCF1A97F8E78
          4F26BC68AC73C1480DEEA92141021B00041EFF37323A9FF3BB100628FCB0E3AB
          A1080F2D7BC77DD208D7051030D77DC67A0049816B96ED31D6B960A4B8990382
          93A10B01E6B95757F52148155F027AB2139C81329B439311A4C00616FFFB1909
          00E7D08AA71EB836D576B23AF28F35BB15BF801A3BFD0CB7CC15394EB5EDFEC9
          0B004ED23EE9477B688F577D2AFCF3BBFF0946473D3AB71FF40380D4D3BF8E3C
          60A486760CAC6DF9E5BFBBE4BF00CF9F751DFCC060FB902149D56FFE793A009C
          B87661104DEA23CEE7C201F4A9AD8FA24975AF79F9711274F8F2157EF683452A
          E385CB91BCC7FEB57BB067FC5880DBE63861E0F5ED73F7F1BE32D4F990A438AF
          D0D68D67FCBEF6BF7D6852C9FF7E250ACAFEF9C43C3429F0E0CF0B277566ED79
          6DE8016B53BFFF2FDD95B73661E9011EF4B1C33743EC2756F68EB7DACBFFD850
          E74359E91D3FA58F3826EC1987C9F7E3FEFE3B13707CFE793B4C1E0537E9EFFE
          B1098F383E68E3D4F1FD19EE8235098FF54F793D9659FC1FCA91A3AEC0DD4F3F
          3158F510CC7C6A90E330566966665B1B30790AA034E3456045229245F6CF50D1
          DACF124B77BCBE3EB9E5FA63F58C593CE67B6EE59F6E4FD4FDC02A648A1CDA7F
          86B85F5D9C12D4FE106378EB37D398ECF7491CA78ACF37FECB70E7330529E89F
          1147E4D58C0471811F7AE65D5E1DFBEE2CC8E3F1ED838B20F2361BDD8FAC5446
          25B5CC8ED5CBA8AF9CF5B8816EC614EACD779DE2E0DD5462376BCC5D3E088D9F
          6BA8D7D088A4F81781D2FB351DC3C09AE70C7433A610C91A12CACA0A02216B51
          52AB00F30968D24C13D578A1C729FDBD66527F4D1B6C6EA8AB6F7AE405F34F1E
          232207770392EA2B5AA1EA1BEDD5CA73BF86F2133490CA5822DAF49833646DD8
          8546FF50A920C567AA5C14CE1D7151FA7BC190ABFA57071A72B614D7D15EA407
          AB2332635948998B2CA4CC451652E6220B2973918594B9C842CA5C6421652EB2
          9032175948998B2CA4CC451652E6220B2973918594B9C842CA5C6421652EB290
          32175948998B2CA4CC451652E6220B2973918594B9C842CA5C6421652EB29032
          175948998B2CA4CC451652E6220B2973918594B9C842CA5C6421652EB2903217
          5948998B2CA4CC451652E6220B2973918594B9C842CA5C6421652EB290321759
          48998BFE0FD11A3CFFAD9FCD650000002574455874646174653A637265617465
          00323032312D31322D31315431323A30383A30312B30303A30306B5A7A2A0000
          002574455874646174653A6D6F6469667900323032312D31322D31315431323A
          30383A30312B30303A30301A07C29600000011744558746963633A636F707972
          6967687400434330FDD4562D00000014744558746963633A6465736372697074
          696F6E00755247429FFB2CDB0000000049454E44AE426082}
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
      object pnlSilaObwodowa: TPanel
        Left = 4
        Top = 83
        Width = 341
        Height = 67
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object lblSilaObwodowa: TLabel
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
        object edtSilaObwodowa: TEdit
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
          Top = 26
          Width = 39
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'WHt ='
          Layout = tlCenter
        end
        object lblNMM: TLabel
          Left = 258
          Top = 26
          Width = 28
          Height = 20
          AutoSize = False
          Caption = 'N/mm'
          Layout = tlCenter
        end
        object edtJedObliczSilaObwodowa: TEdit
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
          Top = 26
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
          Top = 26
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
        Left = 964
        Top = 475
        Width = 100
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
        Width = 255
        Height = 102
        BevelOuter = bvNone
        Color = clMenu
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
          Left = 7
          Top = 62
          Width = 243
          Height = 42
          Alignment = taCenter
          Caption = 
            'Przek'#322'adnia niedoobci'#261#380'ona powy'#380'ej 5%. Zalecane jest zmniejszeni' +
            'e szeroko'#347'ci wie'#324'ca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
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

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
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  ShowHint = True
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
    ActivePage = tshEtap2
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
          Left = 155
          Top = 26
          Width = 39
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
          TabOrder = 1
          Text = '5,0'
        end
        object edtMoment1: TEdit
          Tag = 2
          Left = 210
          Top = 85
          Width = 130
          Height = 21
          Alignment = taRightJustify
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
        object cbxZmianaKierunku: TCheckBox
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
          Left = 70
          Top = 33
          Width = 67
          Height = 21
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
          ItemIndex = 1
          TabOrder = 2
          Text = 'Kulkowo sko'#347'ne'
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
      object bntDalej2: TButton
        Left = 961
        Top = 490
        Width = 106
        Height = 112
        Caption = 'Kolejny Etap'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
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
          Tag = 1
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
          Top = 64
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
        object lblMPa5: TLabel
          Left = 266
          Top = 34
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object lblMPa6: TLabel
          Left = 266
          Top = 64
          Width = 20
          Height = 21
          AutoSize = False
          Caption = 'MPa'
          Layout = tlCenter
        end
        object edtNapreKrytyczneKolo: TEdit
          Tag = 2
          Left = 122
          Top = 64
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
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 0
          Text = '1,1'
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
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 1
          Text = '1,1'
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
        object edtOblDopNapreStyk: TEdit
          Tag = 2
          Left = 122
          Top = 34
          Width = 130
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 0
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
          Height = 16
          Caption = 'Dla napr'#281#380'e'#324' stykowych'
        end
        object lblMaxNaprGnac: TLabel
          Left = 304
          Top = 34
          Width = 106
          Height = 16
          Caption = 'Dla napr'#281#380'e'#324' gn'#261'cych'
        end
        object edtMaxNaprStykKolo: TEdit
          Tag = 2
          Left = 122
          Top = 96
          Width = 130
          Height = 22
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
          Height = 22
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtMaxNaprGnacZebnik: TEdit
          Tag = 2
          Left = 290
          Top = 62
          Width = 130
          Height = 22
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object edtMaxNaprGnacKolo: TEdit
          Tag = 2
          Left = 290
          Top = 96
          Width = 130
          Height = 22
          Alignment = taRightJustify
          Enabled = False
          ReadOnly = True
          TabOrder = 3
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

object frmPomoc: TfrmPomoc
  Left = 0
  Top = 0
  Caption = 'Pomoc'
  ClientHeight = 441
  ClientWidth = 624
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bmbZamknij: TBitBtn
    Left = 466
    Top = 410
    Width = 150
    Height = 25
    Caption = '&Zamknij'
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 0
  end
  object btnPoprzedni: TButton
    Left = 8
    Top = 410
    Width = 65
    Height = 25
    Caption = #9668
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnPoprzedniClick
  end
  object btnNastepna: TButton
    Left = 79
    Top = 410
    Width = 65
    Height = 25
    Caption = #9658
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnNastepnaClick
  end
  object pgcPomoc: TPageControl
    Left = 5
    Top = 0
    Width = 612
    Height = 405
    ActivePage = tshNapreStyk
    TabOrder = 3
    object tshPrzelozenie: TTabSheet
      Caption = 'Prze'#322'o'#380'enie'
    end
    object tshMaterial: TTabSheet
      Caption = 'Materia'#322
      ImageIndex = 1
    end
    object tshZmienneObcia: TTabSheet
      Caption = 'Zmienne obci'#261#380'enie'
      ImageIndex = 2
    end
    object tshWspolPrzeciaz: TTabSheet
      Caption = 'Wsp'#243#322'. przeci'#261#380'enia'
      ImageIndex = 3
    end
    object tshSchemat: TTabSheet
      Caption = 'Schemat przek'#322'.'
      ImageIndex = 4
    end
    object tshWarPracy: TTabSheet
      Caption = 'Warunki pracy'
      ImageIndex = 5
    end
    object tshNapreStyk: TTabSheet
      Caption = 'Napr'#281#380'enia stykowe'
      ImageIndex = 6
    end
  end
end

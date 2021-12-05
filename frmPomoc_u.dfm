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
    Width = 150
    Height = 25
    Caption = 'Poprzednia zak'#322'adka'
    TabOrder = 1
    OnClick = btnPoprzedniClick
  end
  object btnNastepna: TButton
    Left = 243
    Top = 410
    Width = 150
    Height = 25
    Caption = 'Nast'#281'pna zak'#322'adka'
    TabOrder = 2
    OnClick = btnNastepnaClick
  end
  object pgcPomoc: TPageControl
    Left = 5
    Top = 0
    Width = 612
    Height = 405
    ActivePage = tshMaterial
    TabOrder = 3
    object tshPrzelozenie: TTabSheet
      Caption = 'Prze'#322'o'#380'enie'
    end
    object tshMaterial: TTabSheet
      Caption = 'Materia'#322
      ImageIndex = 1
    end
  end
end

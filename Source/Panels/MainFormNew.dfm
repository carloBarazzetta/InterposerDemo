object Form1: TForm1
  Left = 344
  Top = 161
  Caption = 'Panels Demo'
  ClientHeight = 181
  ClientWidth = 342
  Color = clBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object BluePanel: TPanel
    Left = 64
    Top = 32
    Width = 185
    Height = 41
    Caption = 'Blue Panel'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object YellowPanel: TPanel
    Left = 64
    Top = 88
    Width = 185
    Height = 41
    Caption = 'Yellow Panel'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object OKBtn: TBitBtn
    Left = 24
    Top = 144
    Width = 89
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
  end
  object CancelBtn: TBitBtn
    Left = 120
    Top = 144
    Width = 89
    Height = 33
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
  object ImageList: TVirtualImageList
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'file'
        Name = 'file'
      end
      item
        CollectionIndex = 1
        CollectionName = 'folder-open'
        Name = 'folder-open'
      end
      item
        CollectionIndex = 2
        CollectionName = 'floppy'
        Name = 'floppy'
      end
      item
        CollectionIndex = 3
        CollectionName = 'printer'
        Name = 'printer'
      end
      item
        CollectionIndex = 4
        CollectionName = 'printer-settings'
        Name = 'printer-settings'
      end
      item
        CollectionIndex = 5
        CollectionName = 'exit-run'
        Name = 'exit-run'
      end>
    ImageCollection = dmResources.Images
    Left = 288
    Top = 48
  end
  object MainMenu: TMainMenu
    Images = ImageList
    Left = 272
    Top = 120
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Caption = '&New'
        ImageIndex = 0
      end
      object Open1: TMenuItem
        Caption = '&Open...'
        ImageIndex = 1
      end
      object Save1: TMenuItem
        Caption = '&Save'
        ImageIndex = 2
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Print1: TMenuItem
        Caption = '&Print...'
        ImageIndex = 3
      end
      object PrintSetup1: TMenuItem
        Caption = 'P&rint Setup...'
        ImageIndex = 4
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        ImageIndex = 5
      end
    end
  end
end

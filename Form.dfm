object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cambio de precios de cadena'
  ClientHeight = 607
  ClientWidth = 989
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 105
    Top = 46
    Width = 50
    Height = 13
    Caption = 'Proveedor'
  end
  object Label3: TLabel
    Left = 299
    Top = 46
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  object Label2: TLabel
    Left = 8
    Top = 46
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object DBEdit_NombreProveedor: TDBEdit
    Left = 161
    Top = 43
    Width = 121
    Height = 21
    DataField = 'NAMEPROV'
    DataSource = DataSource_CambioCadena
    TabOrder = 0
  end
  object DBEdit_CambioCadena: TDBEdit
    Left = 56
    Top = 9
    Width = 461
    Height = 21
    DataField = 'DESCRIPCION'
    DataSource = DataSource_CambioCadena
    TabOrder = 1
  end
  object DBNavigator_Prev: TDBNavigator
    Left = 8
    Top = 8
    Width = 42
    Height = 21
    DataSource = DataSource_CambioCadena
    VisibleButtons = [nbFirst, nbPrior]
    TabOrder = 2
  end
  object DBNavigator_Sig: TDBNavigator
    Left = 523
    Top = 8
    Width = 42
    Height = 21
    DataSource = DataSource_CambioCadena
    VisibleButtons = [nbNext, nbLast]
    TabOrder = 3
  end
  object DBCheckBox1: TDBCheckBox
    Left = 491
    Top = 45
    Width = 74
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Procesado'
    DataField = 'PROCESADO'
    DataSource = DataSource_CambioCadena
    TabOrder = 4
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBEdit_FechaCambio: TDBEdit
    Left = 334
    Top = 43
    Width = 135
    Height = 21
    DataField = 'FECHA'
    DataSource = DataSource_CambioCadena
    TabOrder = 5
  end
  object DBEdit1: TDBEdit
    Left = 47
    Top = 43
    Width = 40
    Height = 21
    DataField = 'CODE'
    DataSource = DataSource_CambioCadena
    TabOrder = 6
  end
  object SuperConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Super')
    Connected = True
    Left = 876
    Top = 51
  end
  object FDQuery_CambioCadena: TFDQuery
    Active = True
    IndexFieldNames = 'CODE'
    Connection = SuperConnection
    SQL.Strings = (
      
        'SELECT CODE, codeprov, nameprov, inputdat as fecha, (extract(day' +
        ' from inputdat)||'#39'/'#39'||extract(month from inputdat)||'#39'/'#39'||extract' +
        '(year from inputdat) || '#39' '#39' || code || '#39' '#39' || iif(descripcion is' +
        ' null,'#39#39',descripcion)) as descripcion, a.CODEPROV, procesado  '
      'FROM CAMBIOCADENA a '
      'where codealmacen=1 '
      'order by inputdat')
    Left = 735
    Top = 392
  end
  object DataSetProvider_CambioCadena: TDataSetProvider
    DataSet = FDQuery_CambioCadena
    Left = 738
    Top = 419
  end
  object ClientDataSet_CambioCadena: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_CambioCadena'
    Left = 743
    Top = 452
    object ClientDataSet_CambioCadenaCODE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODE'
      Origin = 'CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet_CambioCadenaCODEPROV: TIntegerField
      FieldName = 'CODEPROV'
      Origin = 'CODEPROV'
      Required = True
    end
    object ClientDataSet_CambioCadenaNAMEPROV: TStringField
      Alignment = taCenter
      FieldName = 'NAMEPROV'
      Origin = 'NAMEPROV'
      Required = True
      Size = 120
    end
    object ClientDataSet_CambioCadenaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 283
    end
    object ClientDataSet_CambioCadenaCODEPROV_1: TIntegerField
      FieldName = 'CODEPROV_1'
      Origin = 'CODEPROV'
      ProviderFlags = []
      Required = True
    end
    object ClientDataSet_CambioCadenaPROCESADO: TStringField
      FieldName = 'PROCESADO'
      Origin = 'PROCESADO'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet_CambioCadenaFECHA: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'FECHA'
      Origin = 'INPUTDAT'
      Required = True
    end
  end
  object DataSource_CambioCadena: TDataSource
    DataSet = ClientDataSet_CambioCadena
    Left = 747
    Top = 494
  end
end

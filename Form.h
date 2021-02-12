//---------------------------------------------------------------------------

#ifndef FormH
#define FormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <Datasnap.DBClient.hpp>
#include <Datasnap.Provider.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.FB.hpp>
#include <FireDAC.Phys.FBDef.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Mask.hpp>

class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TFDConnection *SuperConnection;
	TFDQuery *FDQuery_CambioCadena;
	TDataSetProvider *DataSetProvider_CambioCadena;
	TClientDataSet *ClientDataSet_CambioCadena;
	TDataSource *DataSource_CambioCadena;
	TDBEdit *DBEdit_NombreProveedor;
	TDBEdit *DBEdit_CambioCadena;
	TDBNavigator *DBNavigator_Prev;
	TDBNavigator *DBNavigator_Sig;
	TLabel *Label1;
	TLabel *Label3;
	TDBCheckBox *DBCheckBox1;
	TDBEdit *DBEdit_FechaCambio;
	TIntegerField *ClientDataSet_CambioCadenaCODE;
	TIntegerField *ClientDataSet_CambioCadenaCODEPROV;
	TStringField *ClientDataSet_CambioCadenaNAMEPROV;
	TStringField *ClientDataSet_CambioCadenaDESCRIPCION;
	TIntegerField *ClientDataSet_CambioCadenaCODEPROV_1;
	TStringField *ClientDataSet_CambioCadenaPROCESADO;
	TSQLTimeStampField *ClientDataSet_CambioCadenaFECHA;
	TDBEdit *DBEdit1;
	TLabel *Label2;
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif

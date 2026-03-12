unit RdMx_about;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.StdCtrls, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation;

type
  TfmAbout = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Memo1: TMemo;
    bClose: TButton;
    procedure bCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAbout: TfmAbout;

implementation

{$R *.fmx}

procedure TfmAbout.bCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action := TCloseAction.caFree;
end;

end.

unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TMainForm = class(TForm)
    mainLbl: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    procedure refreshLabel;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TMainForm.refreshLabel;
begin
   mainLbl.Text := DateTimeToStr(Now);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  refreshLabel;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
   refreshLabel;
end;

end.

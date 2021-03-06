unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.ComCtrls, Vcl.Buttons;

type
  TfTarefa2 = class(TForm)
    Panel1: TPanel;
    spedtThread1: TSpinEdit;
    spedtThread2: TSpinEdit;
    lblAguardarThread1: TLabel;
    lblAguardarThread2: TLabel;
    pgbThread1: TProgressBar;
    pgbThread2: TProgressBar;
    btnIniciar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIniciarClick(Sender: TObject);
  private
    procedure IniciarProcesso;
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

uses
  uProcessThread;

{$R *.dfm}

procedure TfTarefa2.btnIniciarClick(Sender: TObject);
begin
  if (spedtThread1.Value = 0) or (spedtThread2.Value = 0) then
  begin
    ShowMessage('? necess?rio informar um valor maior que zero em milisegundos!');
    Exit
  end;
  IniciarProcesso;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fTarefa2);
end;

procedure TfTarefa2.IniciarProcesso;
var
  Thread1: TProcessThread;
  Thread2: TProcessThread;
begin
  Thread1 := TProcessThread.Create(pgbThread1);
  Thread1.SetDelayThread(spedtThread1.Value);

  Thread2 := TProcessThread.Create(pgbThread2);
  Thread2.SetDelayThread(spedtThread2.Value);

  Thread1.Start;
  Thread2.Start;
end;

end.

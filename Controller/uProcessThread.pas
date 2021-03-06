unit uProcessThread;

interface

uses
  System.Classes, Vcl.ComCtrls;

type
  TProcessThread = class(TThread)
  private
    FDelayThread: Integer;
    FProgressBar: TProgressBar;
  public
    procedure SetDelayThread(pnDelay: Integer);
    procedure Execute; override;
    constructor Create(pProgressBar: TProgressBar);

  end;

implementation

{ TProcessThread }

constructor TProcessThread.Create(pProgressBar: TProgressBar);
begin
  inherited Create(True);
  FProgressBar := pProgressBar;
end;

procedure TProcessThread.Execute;
var
  index: Integer;
begin
  inherited;

  for index := 1 to 100 do
  begin
    Sleep(FDelayThread);
    FProgressBar.Position := index;
    FProgressBar.Repaint;
  end;
end;

procedure TProcessThread.SetDelayThread(pnDelay: Integer);
begin
  FDelayThread := pnDelay;
end;

end.

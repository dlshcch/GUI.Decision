unit GUI.Decisions;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ActnList;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnFonts: TButton;
    btnTexts: TButton;
    btnHints: TButton;
    cbVisible: TCheckBox;
    cbTransparent: TCheckBox;
    cgButtons: TCheckGroup;
    ComboBox1: TComboBox;
    lblDemo: TLabel;
    lbJustification: TListBox;
    rgBackground: TRadioGroup;
    procedure cbTransparentChange(Sender: TObject);
    procedure cbVisibleChange(Sender: TObject);
    procedure cgButtonsClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure lblDemoClick(Sender: TObject);
    procedure lbJustificationClick(Sender: TObject);
    procedure rgBackgroundClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm1.FormClick(Sender: TObject);
begin

end;

procedure TForm1.lblDemoClick(Sender: TObject);
begin

end;
procedure TForm1.rgBackgroundClick(Sender: TObject);
begin
if rgBackground.ItemIndex = 0 then
  begin
  lblDemo.Color := clRed;
  end;

if rgBackground.ItemIndex = 1 then
  begin
  lblDemo.Color := clBlue;
  end;

if rgBackground.ItemIndex = 2 then
  begin
  lblDemo.Color := clLime;
  end;

if rgBackground.ItemIndex = 3 then
  begin
  lblDemo.Color := clBlack;
  end;
end;

procedure TForm1.cbVisibleChange(Sender: TObject);
begin
  lblDemo.Visible:=cbVisible.Checked;
end;

procedure TForm1.cgButtonsClick(Sender: TObject);
begin
  if cgButtons.Checked[0] then
    begin
     btnFonts.Visible := true;
    end else
    begin
     btnFonts.Visible := false;
    end;

  if cgButtons.Checked[1] then
    begin
     btnTexts.Visible := true;
    end else
    begin
     btnTexts.Visible := false;
    end;

  if cgButtons.Checked[2] then
    begin
     btnHints.Visible := true;
    end else
    begin
     btnHints.Visible := false;
    end;
end;

procedure TForm1.cbTransparentChange(Sender: TObject);
begin
 lblDemo.Transparent:=cbTransparent.Checked;
end;

procedure TForm1.lbJustificationClick(Sender: TObject);
  begin
    if lbJustification.Items[lbJustification.ItemIndex] = 'Left' then
    begin
      // Code for Left justification
    end
    else if lbJustification.Items[lbJustification.ItemIndex] = 'Centre' then
    begin
      // Code for Centre justification
    end
    else if lbJustification.Items[lbJustification.ItemIndex] = 'Right' then
    begin
      // Code for Right justification
    end;
  end;
end.

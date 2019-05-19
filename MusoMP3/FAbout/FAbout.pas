unit FAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, StdCtrls, jpeg;

type
  TfrmAbout = class(TForm)
    cmbClose: TRzPanel;
    panAboutMain: TRzPanel;
    RzPanel2: TRzPanel;
    Timer1: TTimer;
    lab3: TLabel;
    lab2: TLabel;
    lab1: TLabel;
    lab4: TLabel;
    panImage: TRzPanel;
    img1: TImage;
    lab6: TLabel;
    lab5: TLabel;
    procedure cmbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure AproButtonRoundCreate(Sender : TRzPanel) ;
    procedure AproRoundPanelCorners(Sender : TRzPanel; varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
    procedure AproSetFormBorder(varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
    procedure AproRoundForm(varX : Integer; varY : Integer) ;
    procedure AproImageRoundCreate(Sender : TRzPanel) ;
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

uses AMain;

{$R *.dfm}

procedure TfrmAbout.cmbCloseClick(Sender: TObject);
begin
    Close ;
end;

procedure TfrmAbout.AproSetFormBorder(varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
begin
    frmAbout.Canvas.Pen.Width := varPenW ;
    frmAbout.Canvas.Pen.Color := varBColour ; //$00CCCC00 ;
    frmAbout.Canvas.Brush.Color := varColour ;
    frmAbout.Canvas.RoundRect(1, 1, frmAbout.Width - 1, frmAbout.Height - 1, varX, varY);
end;


procedure TfrmAbout.AproRoundForm(varX : Integer; varY : Integer) ;
var
  rgn: HRGN;
begin

  rgn := CreateRoundRectRgn(0,// x-coordinate of the region's upper-left corner
    0,            // y-coordinate of the region's upper-left corner
    ClientWidth,  // x-coordinate of the region's lower-right corner
    ClientHeight, // y-coordinate of the region's lower-right corner
    varX,           // height of ellipse for rounded corners
    varY);          // width of ellipse for rounded corners
  SetWindowRgn(Handle, rgn, True);
end ;

procedure TfrmAbout.AproButtonRoundCreate(Sender : TRzPanel) ;
var
    Rgn:HRGN;
    FCanvas : TCanvas;
    varA, varB : Integer ;
begin
    varA := varButtonRoundSizeA ;
    varB := varButtonRoundSizeB ;
// creates round buttons
    Rgn := CreateRoundRectRgn(0 ,0 , Sender.Width, Sender.Height, varA, varB);
    SetWindowRgn(Sender.Handle, Rgn, True);

{draw a border around the Panel}
    FCanvas := TCanvas.Create;
    FCanvas.Handle := frmAbout.Handle;
    FCanvas.Pen.Color := clBtnShadow;
    FCanvas.RoundRect(Sender.Left-1, Sender.Top-1,Sender.Left+Sender.Width, Sender.Top+Sender.Height,varA, varB);
    FCanvas.Free;
end ;

procedure TfrmAbout.AproImageRoundCreate(Sender : TRzPanel) ;
var
    Rgn:HRGN;
    FCanvas : TCanvas;
    varA, varB : Integer ;
begin
    varA := 160 ;
    varB := 150 ;
// creates round buttons
    Rgn := CreateRoundRectRgn(0 ,0 , Sender.Width, Sender.Height, varA, varB);
    SetWindowRgn(Sender.Handle, Rgn, True);

{draw a border around the Panel}
    FCanvas := TCanvas.Create;
    FCanvas.Handle := frmAbout.Handle;
    FCanvas.Pen.Color := clBtnShadow;
    FCanvas.RoundRect(Sender.Left-1, Sender.Top-1, Sender.Left + Sender.Width, Sender.Top + Sender.Height, varA, varB);
    FCanvas.Free;
end ;

procedure TfrmAbout.AproRoundPanelCorners(Sender : TRzPanel; varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
begin
    Sender.Canvas.Pen.Width := varPenW ;
    Sender.Canvas.Pen.Color := varBColour ;
    Sender.Canvas.Brush.Color := varColour ;
    Sender.Canvas.RoundRect(1, 1, Sender.Width - 1, Sender.Height - 1, varX, varY);
end ;

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
    AproRoundForm(varFormRoundSizeA, varFormRoundSizeB) ;
    AproImageRoundCreate(panImage) ;
    panAboutMain.BorderWidth := 0 ;
    AproButtonRoundCreate(cmbClose) ;
    Application.ProcessMessages ;
end;

procedure TfrmAbout.Timer1Timer(Sender: TObject);
var
    x, y, p : integer ;
    c, b : TColor ;
begin
    x := varPanelRoundSizeA ;
    y := varPanelRoundSizeB ;
    p := 3 ;
    c := $00CCCC00 ; // border colour
    b := $00060606 ; // clBlack ;

    AproSetFormBorder(p, $00373737, clBlack, varFormRoundSizeA, varFormRoundSizeB) ;
    AproRoundPanelCorners(panAboutMain, p, c, b, x, y) ;
    img1.Repaint ;
    lab1.Repaint ;
    lab2.Repaint ;
    lab3.Repaint ;
    lab4.Repaint ;
    lab5.Repaint ;
    lab6.Repaint ;

    Application.ProcessMessages ;
    Timer1.Enabled := False ;  
end;

procedure TfrmAbout.FormDestroy(Sender: TObject);
begin
    Form1.varSetBorders := False ;
end;

end.

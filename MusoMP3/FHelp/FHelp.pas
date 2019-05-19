unit FHelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, StdCtrls, RzLabel;

type
  TfrmHelp = class(TForm)
    cmbClose: TRzPanel;
    panTitle: TRzPanel;
    RzPanel2: TRzPanel;
    panSubject: TRzPanel;
    panThings: TRzPanel;
    panText: TRzPanel;
    panSubjectTitle: TRzPanel;
    panTitleBar: TRzPanel;
    Timer1: TTimer;
    panText2: TRzPanel;
    mem1: TLabel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    RzPanel7: TRzPanel;
    RzPanel8: TRzPanel;
    RzPanel9: TRzPanel;
    RzPanel10: TRzPanel;
    RzPanel11: TRzPanel;
    RzPanel12: TRzPanel;
    RzPanel13: TRzPanel;
    labContact: TRzLabel;
    labOSStuff: TRzLabel;
    labThankYouz: TRzLabel;
    labTop: TRzLabel;
    labWinAmp: TRzLabel;
    labHotKeyz: TRzLabel;
    labOpacity: TRzLabel;
    labTransparent: TRzLabel;
    labPractise: TRzLabel;
    labTheControls: TRzLabel;
    labAboutIt: TRzLabel;
    labApplicationTitle: TLabel;
    RzPanel1: TRzPanel;
    labLegal: TRzLabel;
    procedure FormDestroy(Sender: TObject);
    procedure cmbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure labAboutItClick(Sender: TObject);
    procedure panTitleBarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure panTitleBarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AproSetFormBorder(varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
    procedure AproRoundForm(varX : Integer; varY : Integer) ;
    procedure AproRoundPanelCorners(Sender : TRzPanel; varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
    procedure AproButtonRoundCreate(Sender : TRzPanel) ;
    procedure AproSubjectClick(Sender : TObject) ;

  public
    { Public declarations }
  end;

var
  frmHelp: TfrmHelp;

const
    sc_DragMove = $f012;
    sc_Leftsize = $f001;
    sc_Rightsize = $f002;
    sc_Upsize = $f003;
    sc_UpLeftsize = $f004;
    sc_UpRightsize = $f005;
    sc_Dnsize = $f006;
    sc_DnLeftsize = $f007;
    sc_DnRightsize = $f008;

implementation

uses AMain;

{$R *.dfm}

procedure TfrmHelp.AproSubjectClick(Sender : TObject) ;
begin
// enter the text for the subject

    if Sender = labAboutIt then
    begin
        panSubjectTitle.Caption := 'About It' ;
        mem1.Caption := 'High :) '
                    + chr(13) + chr(13) +
                    'This is about the subject of the MusoMP3 v1.0 application.'
                    + chr(13) + chr(13) +
                    'MusoMP3 is a basic Winamp control interface for musicians to practise bits of songs that are tricky.  ' +
                    'Often when trying to learn a complicated bit, you have to stop, hit the rewind and then play.'
                    + chr(13) +
                    'After about a thousand times of doing this you get a tad frustrated.'
                    + chr(13) + chr(13) +
                    'Winamp is cool in that you have all the MP3''s ready with graphic eq but no repeat bits option (there could be but I not look thru help file much...)'
                    + chr(13) + chr(13) +
                    'MusoMP3 has the option of replaying the bits by setting a start and finish time,  the bit will be replayed over and over and over and ......'
                    + chr(13) + chr(13) +  chr(13) +
                    'When the application is closed, it will remember the size, position, transparency and opacity settings and next time you start it the same settings will be loaded...yay for geeky things!'
                    ;
    end ;

    if Sender = labTheControls then
    begin
        panSubjectTitle.Caption := 'The Controls' ;
        mem1.Caption := 'The controls are the basic Wimamp controls.'
                    + chr(13) + chr(13) +
                    'Play' + chr(9) +  chr(9) + '-' + chr(9) + 'F 9' + chr(13) +
                    'Pause' + chr(9) + chr(9) + '-' + chr(9) + 'F 10' + chr(13) +
                    'Stop' + chr(9) + chr(9) + '-' + chr(9) + 'F 11' + chr(13) +
                    'Previous' + chr(9) + '-' + chr(9) + 'Down Arrow' + chr(13) +
                    'Next' + chr(9) + chr(9) + '-' + chr(9) + 'Up Arrow'
                    + chr(13) + chr(13) +
                    'The SEEK bar does just that, move it to any part of the song you want.'
                    + chr(13) + chr(13) +
                    'The VOLUME control sets the volume for Winamp.'
                    + chr(13) + chr(13) +
                    'Increase Volume' + chr(9)+ chr(9) + '-' + chr(9) + 'Page Up' + chr(13) +
                    'Decrease Volume' + chr(9) + '-' + chr(9) + 'Page Down' + chr(13)
                    ;
    end ;

    if Sender = labPractise then
    begin
        panSubjectTitle.Caption := 'Practise Stuff' ;
        mem1.Caption := 'The Practise controls are for helping you to learn bits of a song without needing to stop, rewind and play.'
                    + chr(13) + chr(13) +
                    'Basically, when you get to the part of a song you want to replay. click the Start button < F 4 >.'

                    + chr(13) +
                    'If you need to take the start time back a bit, press the < F 3 > key to take the start time back 1 second.  ' +
                    'You can increase the start time by 1 second by pressing the     < F 5 > key.'
                    + chr(13) + chr(13) +
                    'When you get to the end of the bit you want to practise click the Finish button          < F 7 > .'
                    + chr(13) +
                    'If you need to take the finish time back a bit, press the < F 6 > key to take the finish time back 1 second.  ' +
                    'You can increase the finish time by 1 second by pressing the   < F 8 > key.'
                    + chr(13) + chr(13) +
                    'The bit will replay until you click the Reset button < F 1 >. '
                    + chr(13) + chr(13) +
                    'The Set Repeat button requires you to enter the Start and Finish times (Minutes and Seconds)  ' +
                    'respectivly in the text boxes on the right of the Set Repeat button.  ' +
                    'When you have entered the time in the text boxes, click the Set Repeat button.'
                    + chr(13) + chr(13) +
                    'If you want to replay a bit before getting to the Finish time click the Repeat button   < F 9 >.'
                    + chr(13) + chr(13) +
                    'The repeat time will play to the nearest second so give enough time at the start and finish to ' +
                    ' get all of the stuff you want to practise.'
                    ;
    end ;

    if Sender = labTransparent then
    begin
        panSubjectTitle.Caption := 'Transparent' ;
        mem1.Caption := 'The Transparency button - ''TS'' - turns the Transpancy of the application on and off.'
                        + chr(13) + chr(13) +
                        'This does require a reasonably high spec computer, especially if you are using the Opacity option at the same time.'
                        + chr(13) + chr(13) +
                        'If you have a slow computer then you may need to turn Transparency off.'
                        ;
    end ;

    if Sender = labOpacity then
    begin
        panSubjectTitle.Caption := 'Opacity' ;
        mem1.Caption := 'The Opacity button - ''OP'' - turns the Opacity of the application on and off.'
                        + chr(13) + chr(13) +
                        'The amount of Opacity can be set using the slider that appears below the Opacity button when the option is turned on.'
                        + chr(13) + chr(13) +
                        'This does require a reasonably high spec computer, especially if you are using the Transparency option at the same time.'
                        + chr(13) + chr(13) +
                        'If you have a slow computer then you may need to turn Opacity off.'
                        ;
    end ;

    if Sender = labHotKeyz then
    begin
        panSubjectTitle.Caption := 'Hot-Keyz' ;
        mem1.Caption := 'These are the Hot-Keyz for the application.'
                    + chr(13) + chr(13) +
                    'WINAMP CONTROLS'
                    + chr(13) + chr(13) +

                    'F 9' + chr(9) +  chr(9) + '-' + chr(9) + 'Play' + chr(13) +
                    'F 10' + chr(9) + chr(9) + '-' + chr(9) + 'Pause' + chr(13) +
                    'F 11' + chr(9) + chr(9) + '-' + chr(9) + 'Stop' + chr(13) +

                    'Down Arrow' + chr(9) + '-' + chr(9) + 'Previous' + chr(13) +
                    'Up Arrow' + chr(9) + '-' + chr(9) + 'Next'
                    + chr(13) + chr(13) +

                    'PRACTISE CONTROLS'
                    + chr(13) + chr(13) +
                    'F 3' + chr(9) +  chr(9) + '-' + chr(9) + '+ 1 Second to Start' + chr(13) +
                    'F 4' + chr(9) +  chr(9) + '-' + chr(9) + 'Start' + chr(13) +
                    'F 5' + chr(9) +  chr(9) + '-' + chr(9) + '- 1 Second from Start' + chr(13) + chr(13) +

                    'F 6' + chr(9) +  chr(9) + '-' + chr(9) + '+ 1 Second to Finish' + chr(13) +
                    'F 7' + chr(9) +  chr(9) + '-' + chr(9) + 'Finish' + chr(13) +
                    'F 8' + chr(9) +  chr(9) + '-' + chr(9) + '- 1 Second from Finish' + chr(13) + chr(13) +

                    'F 1' + chr(9) +  chr(9) + '-' + chr(9) + 'Reset Practise Time' + chr(13) +
                    'F 9' + chr(9) +  chr(9) + '-' + chr(9) + 'Replay' + chr(13)
                    + chr(13) + chr(13) +
                    'The Play and Replay buttons are the same.' + chr(13) +
                    'Megan Fox is hot.'
                    ;
    end ;

    if Sender = labTop then
    begin
        panSubjectTitle.Caption := 'Stay On Top' ;
        mem1.Caption := 'By default, MusoMP3 will be set for ''Stay-On-Top'''
                    + chr(13) + chr(13) +
                    'If you would like the application to not be always on top then click the TOP button.'
                    + chr(13) + chr(13) +
                    'The TOP button colour will change to Orange to show that the application will not be on top of everything else.'
                    ;
    end ;

    if Sender = labWinAmp then
    begin
        panSubjectTitle.Caption := 'WinAmp' ;
        mem1.Caption := 'MusoMP3 requires WinAmp to run.  MusoMP3 should load up Winamp when started.'
                    + chr(13) + chr(13) +
                    'If Winamp is not installed! then you will be told that you are a very naughty person and should use a real media player. Like Winamp for instance.'
                    + chr(13) + chr(13) +
                    'If you for some reason close Winamp without closing MusoMP3 then you can start Winamp by clicking the WinAmp button. (Top Left of the application)'
                    ;
    end ;

    if Sender = labThankYouz then
    begin
        panSubjectTitle.Caption := 'Thank Youz' ;
        mem1.Caption := 'There are a couple of programmers that helped contribute to this application.'
                    + chr(13) + chr(13) +
                    'Daniel Gaubmann for his MP3FileUtils 0.5b code.'
                    + chr(13) +
                    'www.gausi.de'
                    + chr(13) +
                    'mail@gausi.de'
                    + chr(13) + chr(13)
                    + chr(13) + chr(13) +
                    'SpECTre for his TWinampControl 0.99 code.'
                    + chr(13) +
                    'spectre_coder@hotmail.com'
                    + chr(13) + chr(13)
                    + chr(13) + chr(13) +
                    'Thank you for posting your work on the Internet and helping us mere mortals learn how to do programming.'
                    ;
    end ;

    if Sender = labOSStuff then
    begin
        panSubjectTitle.Caption := 'Operating System' ;
        mem1.Caption := 'MusoMP3 works on Windows Ex Pee. (Microsoft got it right..wonder what happend there?)'
                    + chr(13) + chr(13) +
                    'It may work on Windows 98, should on Windows NT, possibly on Windows 95.'
                    + chr(13) + chr(13) +
                    'MusoMP3 has not been tested on that god awful virus Windows Vista.' + chr(13) +
                    'Don''t know anything about Windows 7 yet.' + chr(13) +
                    'Don''t even bother with Windows Majorus Excrementus.'
                    ;
    end ;

    if Sender = labContact then
    begin
        panSubjectTitle.Caption := 'Contact' ;
        mem1.Caption := chr(13) +
                    'Email:' + chr(9) + chr(9) + 'kasplex@yahoo.com'
                    // + chr(13) + chr(13) +
                    // 'Web Site :' + chr(9) + 'BlackDot'
                    ;
    end ;

    if Sender = labLegal then
    begin
        panSubjectTitle.Caption := 'Legal Pooz' ;
        mem1.Caption := 'MusoMP3 version 1.0.0.0 '
                    + chr(13) + chr(13) +
                    'MusoMP3 version 1.0.0.0 is free.'
                    + chr(13) + chr(13) +
                    'MusoMP3 version 1.0.0.0 is not for profit.'
                    + chr(13) + chr(13) +
                    'Area51 is real.'
                    ;
    end ;


end ;

procedure TfrmHelp.AproSetFormBorder(varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
begin
    frmHelp.Canvas.Pen.Width := varPenW ;
    frmHelp.Canvas.Pen.Color := varBColour ; //$00CCCC00 ;
    frmHelp.Canvas.Brush.Color := varColour ;
    frmHelp.Canvas.RoundRect(1, 1, frmHelp.Width - 1, frmHelp.Height - 1, varX, varY);
end;

procedure TfrmHelp.AproRoundForm(varX : Integer; varY : Integer) ;
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

procedure TfrmHelp.AproRoundPanelCorners(Sender : TRzPanel; varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
begin
    Sender.Canvas.Pen.Width := varPenW ;
    Sender.Canvas.Pen.Color := varBColour ;
    Sender.Canvas.Brush.Color := varColour ;
    Sender.Canvas.RoundRect(1, 1, Sender.Width - 1, Sender.Height - 1, varX, varY);
end ;

procedure TfrmHelp.AproButtonRoundCreate(Sender : TRzPanel) ;
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
    FCanvas.Handle := frmHelp.Handle;
    FCanvas.Pen.Color := clBtnShadow;
    FCanvas.RoundRect(Sender.Left-1, Sender.Top-1,Sender.Left+Sender.Width, Sender.Top+Sender.Height,varA, varB);
    FCanvas.Free;
end ;


procedure TfrmHelp.FormDestroy(Sender: TObject);
begin
    Form1.varSetBorders := False ;
end;

procedure TfrmHelp.cmbCloseClick(Sender: TObject);
begin
    Close ;
end;

procedure TfrmHelp.FormCreate(Sender: TObject);
begin
//    frmHelp.TransparentColor := Form1.TransparentColor ;

    AproRoundForm(varFormRoundSizeA, varFormRoundSizeB) ;
    AproButtonRoundCreate(panTitleBar) ;
    AproButtonRoundCreate(cmbClose) ;
    AproButtonRoundCreate(panText2) ;

    AproButtonRoundCreate(RzPanel3) ; 
    AproButtonRoundCreate(RzPanel4) ;
    AproButtonRoundCreate(RzPanel5) ;
    AproButtonRoundCreate(RzPanel6) ;
    AproButtonRoundCreate(RzPanel7) ;
    AproButtonRoundCreate(RzPanel8) ;
    AproButtonRoundCreate(RzPanel9) ;
    AproButtonRoundCreate(RzPanel10) ;
    AproButtonRoundCreate(RzPanel11) ;
    AproButtonRoundCreate(RzPanel12) ;
    AproButtonRoundCreate(RzPanel13) ;
    AproButtonRoundCreate(RzPanel1) ;

    panTitle.BorderWidth := 0 ;
    panSubject.BorderWidth := 0 ;
    panText.BorderWidth := 0 ;
end;

procedure TfrmHelp.Timer1Timer(Sender: TObject);
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
    AproRoundPanelCorners(panTitle, p, c, b, x, y) ;
    AproRoundPanelCorners(panSubject, p, c, b, x, y) ;
    AproRoundPanelCorners(panText, p, c, b, x, y) ;

    mem1.Repaint ;
    labAboutIt.Repaint ;
    labTheControls.Repaint ;
    labPractise.Repaint ;
    labTransparent.Repaint ;
    labOpacity.Repaint ;
    labHotKeyz.Repaint ;
    labThankYouz.Repaint ;
    labTop.Repaint ;
    labWinAmp.Repaint ;
    labOSStuff.Repaint ;
    labContact.Repaint ;

    Application.ProcessMessages ;
    Timer1.Enabled := False ;
end;

procedure TfrmHelp.labAboutItClick(Sender: TObject);
begin
    AproSubjectClick(Sender) ;
end;

procedure TfrmHelp.panTitleBarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
// allows the form to be moved
    ReleaseCapture;
    if y<2 then
        begin
            if x<4 then
                Perform(wm_SysCommand, sc_UpLeftsize, 0)
            else if x>(panTitleBar.ClientWidth-4) then
                Perform(wm_SysCommand, sc_UpRightsize, 0)
            else
                Perform(wm_SysCommand, sc_UpSize, 0)
        end
    else
        Perform(wm_SysCommand, sc_DragMove, 0) ;
end;

procedure TfrmHelp.FormActivate(Sender: TObject);
begin
    Timer1.Enabled := True ;
end;

procedure TfrmHelp.panTitleBarMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    Timer1.Enabled := True ;
end;

procedure TfrmHelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//    frmHelp.TransparentColor := False ;
end;

end.

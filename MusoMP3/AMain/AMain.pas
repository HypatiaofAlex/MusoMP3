unit AMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, RzPanel, Grids, DBGrids, DB,
  DBTables, RzTrkBar, RzTreeVw, RzShellCtrls, RzShellDialogs, RzListVw,
  FileCtrl, RzFilSys, RzTabs, RzLabel, MPlayer, RzSplit, Mask, RzEdit,
  ShellApi, WinampControl,Registry, Menus, ID3v2Frames, Mp3FileUtils, U_CharCode ;

type
  TForm1 = class(TForm)
    panSystem: TRzPanel;
    panSystemTitle: TRzPanel;
    panTitleBar: TRzPanel;
    winMin: TPanel;
    winMax: TPanel;
    winClose: TPanel;
    panFileTitle: TRzPanel;
    cmbClose: TRzPanel;
    cmbTS: TRzPanel;
    cmbResizeIt: TRzPanel;
    labFilePath: TLabel;
    p1: TRzPanel;
    t1: TRzPanel;
    timOpenBox: TTimer;
    cmbOpenWA: TRzPanel;
    cmbTransParent: TRzPanel;
    timPlayTime: TTimer;
    panVolume: TRzPanel;
    panVolumeTitle: TRzPanel;
    TBVolume: TRzTrackBar;
    panOpacity: TRzPanel;
    panOpacityTitle: TRzPanel;
    TBOpacity: TRzTrackBar;
    panAll: TRzPanel;
    panFileInfo: TRzPanel;
    labTGenre: TLabel;
    labGenre: TRzLabel;
    labLength: TRzLabel;
    labTLength: TLabel;
    labTYear: TLabel;
    labYear: TRzLabel;
    labTAlbum: TLabel;
    labAlbum: TRzLabel;
    labTArtist: TLabel;
    labArtist: TRzLabel;
    labTTitle: TLabel;
    labTitle: TRzLabel;
    labTFileName: TLabel;
    labFileName: TRzLabel;
    panInfoTitle: TRzPanel;
    panExplore: TRzPanel;
    panFilesTitle: TRzPanel;
    cmbFL1Root: TRzPanel;
    cmbFL1Back: TRzPanel;
    panPlayTime: TRzPanel;
    labA1: TLabel;
    labA2: TLabel;
    labA3: TLabel;
    labA4: TLabel;
    labS1: TLabel;
    labS2: TLabel;
    labS3: TLabel;
    panPlayerControls: TRzPanel;
    cmbPlay: TRzPanel;
    cmbPause: TRzPanel;
    cmbStop: TRzPanel;
    cmbPrev: TRzPanel;
    cmbNext: TRzPanel;
    panPracControls: TRzPanel;
    labFinish: TRzLabel;
    labStart: TRzLabel;
    panPracTitle: TRzPanel;
    cmbReset: TRzPanel;
    cmbFinish: TRzPanel;
    cmbStart: TRzPanel;
    cmbSetRepeat: TRzPanel;
    cmbReplay: TRzPanel;
    mskStart: TRzMaskEdit;
    panSeek: TRzPanel;
    TBPosition: TRzTrackBar;
    panSeekTitle: TRzPanel;
    labVolPer: TLabel;
    labOpPer: TLabel;
    mskFin: TRzMaskEdit;
    panExploreControls: TPanel;
    RzSizePanel1: TRzSizePanel;
    DT1: TRzShellTree;
    FL1: TRzShellList;
    RzPanel2: TRzPanel;
    Panel1: TPanel;
    labApplicationTitle: TLabel;
    cmbOnTop: TRzPanel;
    cmbHelp: TRzPanel;
    cmbStartMinus: TRzPanel;
    cmbFinishPlus: TRzPanel;
    cmbFinishMinus: TRzPanel;
    cmbStartPlus: TRzPanel;
    labTimeRem: TRzLabel;
    procedure winCloseClick(Sender: TObject);
    procedure panTitleBarDblClick(Sender: TObject);
    procedure panTitleBarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbCloseClick(Sender: TObject);
    procedure cmbResizeItMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbResizeItMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbResizeItMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure timOpenBoxTimer(Sender: TObject);
    procedure FL1Click(Sender: TObject);
    procedure cmbFL1RootClick(Sender: TObject);
    procedure cmbFL1BackClick(Sender: TObject);
    procedure cmbPlayClick(Sender: TObject);
    procedure timPlayTimeTimer(Sender: TObject);
    procedure TBVolumeChange(Sender: TObject);
    procedure TBOpacityChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TBPositionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TBPositionMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbOpenWAMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbOpenWAMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);


//  protected



  private
    { Private declarations }

    // Variables
    varMoveTheWindow : boolean ;
    varRepeat : boolean ;
    varMDown : Boolean ;
    varProgramClosing : Boolean ;
    WinAP : TWinampControl ;
    varTSState : Boolean ;
    varOPState : Boolean ;

    varExeLoc : string ;

    // Functions
    function AfuncGetWinampFilename(): String;
    function AfuncRunTime(i : integer):string ;
    function AfuncGetLeadingZeros(varStringValue : String):String ; // leading zeros
    function AfuncSetTime(i : integer):string ;


    // Procedures
    procedure AproMyIdleHandler(Sender: TObject; var Done: Boolean);
    procedure AproSetFileData() ;
    procedure AproSetButtons(EN : Boolean) ;
    procedure AproSetButtonColour(varState : integer) ;
    procedure AproGetID3v2(s : string) ;

    procedure AproSetTime(i : integer; Lab : TLabel) ;
    procedure AproRunTime(i : integer) ;
    procedure AproSetTBPosition() ;
    procedure AproPlayClick(Sender : TObject) ;
    procedure AproButtonRoundCreate(Sender : TRzPanel) ;
    procedure AproButtonRoundSet() ;
    procedure AproRoundPanelCorners(Sender : TRzPanel; varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
    procedure AproButtonRoundPanelCornersSet() ;
    procedure AproRepaintConents() ;
    procedure AproSetBorders() ;
    procedure AproOpenWinAmp() ;
    procedure AproRoundForm(varX : Integer; varY : Integer) ;
    procedure AproSetFormBorder(varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
    procedure AproSaveDatFile() ;
    procedure AproReadDatFile() ; // gets the location of the database


  public
    { Public declarations }
    varSetBorders : Boolean ;
  end;

var
    Form1: TForm1;
    Id3v2Tag: TId3v2Tag;

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

    varFormRoundSizeA = 17 ;
    varFormRoundSizeB = 17 ;

    varButtonRoundSizeA = 17 ;
    varButtonRoundSizeB = 17 ;

    varPanelRoundSizeA = 25 ;
    varPanelRoundSizeB = 25 ;


implementation

uses FHelp, FAbout;


{$R *.dfm}

procedure TForm1.AproGetID3v2(s : string) ;
var
    stream: TFilestream;
begin
// gets the ID3v2 Tag data

    stream := TFileStream.Create(s, fmOpenRead or fmShareDenyWrite);
    try
        Id3v2Tag.ReadFromStream(stream);
    finally
        stream.free;
    end ;

    labTitle.Caption := Id3v2Tag.Title ;
    labArtist.Caption := Id3v2Tag.Artist ;
    labAlbum.Caption := Id3v2Tag.Album ;
    labYear.Caption := Id3v2Tag.Year ;
    labGenre.Caption := Id3v2Tag.Genre ;
end ;

procedure TForm1.AproReadDatFile() ; // gets the location of the database
var
    F : textfile ;
    s : string ;
//    P : PChar ;
begin
 // gets database location from text file
    if FileExists(varExeLoc + 'Data.dat') then
    begin
        try
            try
                AssignFile(F, varExeLoc + 'Data.dat') ;
                Reset(F) ;

                Readln(f,s) ;
                Form1.Top := StrToInt(s) ;

                Readln(f,s) ;
                Form1.Left := StrToInt(s) ;

                Readln(F,s) ;
                Form1.Height := StrToInt(s) ;

                Readln(F,s) ;
                Form1.Width := StrToInt(s) ;


                Readln(F,s) ;

                if s = 'TRUE' then
                begin
                    if not Form1.TransparentColor then Form1.TransparentColor := True ;
                end
                else
                begin
                    if Form1.TransparentColor then Form1.TransparentColor := False ;
                end ;


                Readln(F,s) ;

                if s = 'TRUE' then
                begin
                    if not Form1.AlphaBlend then Form1.AlphaBlend := True ;
                end
                else
                begin
                    if Form1.AlphaBlend then Form1.AlphaBlend := False ;
                end ;

                Readln(F,s) ;

                if Form1.AlphaBlend then
                begin
                    cmbTS.Tag := 1 ;
                    panOpacity.Visible := True ;
                    timOpenBox.Enabled := True ;
                    Form1.AlphaBlendValue := StrToInt(s) ;
                    TBOpacity.Position := Form1.AlphaBlendValue ;
                end ;
            except
                raise ;
            end ;
        finally
            CloseFile(F) ;
            Application.ProcessMessages ;
        end ;
    end
    else
    begin
        AproSaveDatFile() ;
    end ;
end ;

procedure TForm1.AproSaveDatFile() ;
var
        F : TextFile ;
        s : string ;
begin
// saves the database location to the file nnnn.Dat
// File is located in the exe directory
        try
                AssignFile(F, varExeLoc + 'Data.dat');   { File selected in dialog box }
                Rewrite(F);
                writeln(F,IntToStr(Form1.Top)) ;
                writeln(F,IntToStr(Form1.Left)) ;
                writeln(F,IntToStr(Form1.Height)) ;
                writeln(F,IntToStr(Form1.Width)) ;

                if Form1.TransparentColor then
                    s := 'TRUE'
                else
                    s := 'FALSE' ;

                writeln(F,s) ;

                if Form1.AlphaBlend then
                    s := 'TRUE'
                else
                    s := 'FALSE' ;

                writeln(F,s) ;

                writeln(F,IntToStr(Form1.AlphaBlendValue)) ;
        finally
                CloseFile(F) ;
                Application.ProcessMessages ;
        end ;
end ;

procedure TForm1.AproSetFormBorder(varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
begin
    Form1.Canvas.Pen.Width := varPenW ;
    Form1.Canvas.Pen.Color := varBColour ; //$00CCCC00 ;
    Form1.Canvas.Brush.Color := varColour ;
    Form1.Canvas.RoundRect(1, 1, Form1.Width - 1, Form1.Height - 1, varX, varY);
end;

procedure TForm1.AproRoundForm(varX : Integer; varY : Integer) ;
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

procedure TForm1.AproOpenWinAmp() ;
const
   REGKEYAPPS = '\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Winamp';
var
   reg : TRegistry;
begin
   {Load all the subkeys}
    Reg := TRegistry.Create(KEY_READ);
    try
        Reg.RootKey := HKEY_LOCAL_MACHINE;
        Reg.OpenKey(REGKEYAPPS, false) ;
        if not Winap.IsWinampRunning then
        begin
            if FileExists(extractFilePath(Reg.ReadString('DisplayIcon')) + '\winamp.exe') then
            begin
                ShellExecute(Handle, 'open', PChar(extractFilePath(Reg.ReadString('DisplayIcon')) + '\winamp.exe'), nil, nil, SW_SHOW);
                WinAP.SetVolume(TBVolume.Position) ;
            end
            else
                Application.MessageBox('No WinAmp! Why not!?!  It''s Better than sliced tomato paste!!','What !!!',MB_ICONEXCLAMATION + MB_OK) ;
        end
        else
            timPlayTime.Enabled := True ;
    finally
        Reg.CloseKey;
        Reg.Destroy;
    end ;
end ;

procedure TForm1.AproRoundPanelCorners(Sender : TRzPanel; varPenW : Integer; varBColour : TColor; varColour : TColor; varX : Integer; varY : Integer) ;
begin
    Sender.Canvas.Pen.Width := varPenW ;
    Sender.Canvas.Pen.Color := varBColour ;
    Sender.Canvas.Brush.Color := varColour ;
    Sender.Canvas.RoundRect(1, 1, Sender.Width - 1, Sender.Height - 1, varX, varY);
end ;

procedure TForm1.AproButtonRoundPanelCornersSet() ;
var
    x, y, p : integer ;
    c, b : TColor ;
begin
    x := varPanelRoundSizeA ;
    y := varPanelRoundSizeB ;
    p := 3 ;
    c := $00CCCC00 ; // border colour
    b := $00060606 ; // clBlack ;
    
    if not Form1.TransparentColor then
    begin
 //       AproRoundPanelCorners(panAll, p, $00373737, clBlack, x, y) ;
        AproSetFormBorder(p, $00373737, clBlack, varFormRoundSizeA, varFormRoundSizeB) ;
    end
    else
    begin
 //       AproRoundPanelCorners(panAll, p, clBlack, clBlack, x, y) ;
        AproSetFormBorder(p, clBlack, clBlack, varFormRoundSizeA, varFormRoundSizeB) ;
    end ;

    AproRoundPanelCorners(panPlayTime, p, c, b, x, y) ;
    AproRoundPanelCorners(panFileTitle, p, c, b, x, y) ;
    AproRoundPanelCorners(panSeek, p, c, b, x, y) ;
    AproRoundPanelCorners(panPracControls, p, c, b, x, y) ;
    AproRoundPanelCorners(panFileInfo, p, c, b, x, y) ;
    AproRoundPanelCorners(panPlayerControls, p, c, b, x, y) ;
    AproRoundPanelCorners(panExplore, p, c, b, x, y) ;
    AproRoundPanelCorners(panSystem, p, c, clTeal, x, y) ;

    AproButtonRoundCreate(panTitleBar) ;

    AproRepaintConents() ;
    Application.ProcessMessages ;
end ;

procedure TForm1.AproSetBorders() ;
begin
// sets the PanelBorders to 0

    panAll.BorderWidth := 0 ;
    panPlayTime.BorderWidth := 0 ;
    panFileTitle.BorderWidth := 0 ;
    panSeek.BorderWidth := 0 ;
    panPracControls.BorderWidth := 0 ;
    panFileInfo.BorderWidth := 0 ;
    panPlayerControls.BorderWidth := 0 ;
    panExplore.BorderWidth := 0 ;
    panSystem.BorderWidth := 0 ;
    Application.ProcessMessages ;
end ;

procedure TForm1.AproRepaintConents() ;
begin
// Play Time Panel
    labA1.Invalidate ;
    labA2.Invalidate ;
    labA3.Invalidate ;
    labA4.Invalidate ;
    labS1.Invalidate ;
    labS2.Invalidate ;
    labS3.Invalidate ;

// FileTitle Bar
    labFilePath.Invalidate ;

// Practise Controls
    labStart.Invalidate ;
    labFinish.Invalidate ;

// File Info
    labTitle.Invalidate ;
    labArtist.Invalidate ;
    labAlbum.Invalidate ;
    labYear.Invalidate ;
    labGenre.Invalidate ;
    labLength.Invalidate ;
    labFileName.Invalidate ;

    labTTitle.Invalidate ;
    labTArtist.Invalidate ;
    labTAlbum.Invalidate ;
    labTYear.Invalidate ;
    labTGenre.Invalidate ;
    labTLength.Invalidate ;
    labTFileName.Invalidate ;

    varSetBorders := True ;
    Application.ProcessMessages ;
end ;

procedure TForm1.AproButtonRoundCreate(Sender : TRzPanel) ;
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
    FCanvas.Handle := Form1.Handle;
    FCanvas.Pen.Color := clBtnShadow;
    FCanvas.RoundRect(Sender.Left-1, Sender.Top-1,Sender.Left+Sender.Width, Sender.Top+Sender.Height,varA, varB);
    FCanvas.Free;
end ;

procedure TForm1.AproButtonRoundSet() ;
begin
// Sets the buttons to be created with round corners
    AproButtonRoundCreate(cmbTS) ;
    AproButtonRoundCreate(cmbOpenWA) ;
    AproButtonRoundCreate(cmbClose) ;
    AproButtonRoundCreate(cmbPlay) ;
    AproButtonRoundCreate(cmbPause) ;
    AproButtonRoundCreate(cmbStop) ;
    AproButtonRoundCreate(cmbPrev) ;
    AproButtonRoundCreate(cmbNext) ;
    AproButtonRoundCreate(cmbReplay) ;
    AproButtonRoundCreate(cmbSetRepeat) ;
    AproButtonRoundCreate(cmbStart) ;
    AproButtonRoundCreate(cmbFinish) ;
    AproButtonRoundCreate(cmbReset) ;
    AproButtonRoundCreate(cmbTransParent) ;
    AproButtonRoundCreate(cmbOnTop) ;
    AproButtonRoundCreate(cmbHelp) ;   
    AproButtonRoundCreate(cmbStartMinus) ;
    AproButtonRoundCreate(cmbStartPlus) ;
    AproButtonRoundCreate(cmbFinishMinus) ;
    AproButtonRoundCreate(cmbFinishPlus) ;

    {
    AproButtonRoundCreate(panFilesTitle) ;
    AproButtonRoundCreate(panSystemTitle) ;
//    AproButtonRoundCreate(panAppTitle) ;
    AproButtonRoundCreate(panSeekTitle) ;
    AproButtonRoundCreate(panPracTitle) ;
    AproButtonRoundCreate(panInfoTitle) ;  }
end ;

function TForm1.AfuncGetWinampFilename(): String;
var
    tempStr: String;
    hwndWinamp, TempHandle : THandle;
    dat2: array[0..1000] of Char;
    TrackPos: Integer;
    temp, MPointer: Cardinal;
begin
    hwndWinamp:= FindWindow('Winamp v1.x',nil);
    TrackPos:= SendMessage(hwndWinamp,WM_USER,0 , 125);
    MPointer:= SendMessage(hwndWinamp,WM_USER,TrackPos , 211);
    GetWindowThreadProcessId(hwndWinamp,TempHandle);
    hwndWinamp:= OpenProcess(PROCESS_ALL_ACCESS,False,TempHandle);
    ReadProcessMemory(hwndWinamp, Pointer(MPointer), @dat2,1000,temp);
    CloseHandle(hwndWinamp);
    tempStr:= dat2;  // ;-)
    Result:= tempStr;
end;

procedure TForm1.AproSetFileData() ;
var
    varFilePath : string ;
    i : integer ;
begin
// sets the labels with the ID3 Tag
    i := -1 ;
    try
        try
            if labFilePath.Caption <> AfuncGetWinampFilename then
            begin
                AproPlayClick(cmbReset) ;
                varFilePath := AfuncGetWinampFilename ;
                labFilePath.Caption := varFilePath ;

                AproGetID3v2(varFilePath) ;
                labFileName.Caption := ExtractFileName(varFilePath) ;
                FL1.Folder.PathName := ExtractFilePath(varFilePath) ;


                repeat
                    inc(i) ;
                    FL1.ItemIndex  := i ;
                until FL1.SelectedItem.FileName = ExtractFileName(varFilePath) ;

                AproSetTime(WinAP.GetLength, labLength) ;
                AproButtonRoundPanelCornersSet() ;
            end ;
        except
        //    MessageDlg('Error 13', mtError, [mbOk], 0);     // leave out as error if winamp not loaded
        end ;
    finally
    end ;
end ;

procedure TForm1.AproSetButtons(EN : Boolean) ;
begin
// sets the enabled state of the buttons
    if TBVolume.Enabled <> EN then TBVolume.Enabled := EN ;
    if TBPosition.Enabled <> EN then TBPosition.Enabled := EN ;

    if cmbPlay.Enabled <> EN then cmbPlay.Enabled := EN ;
    if cmbPause.Enabled <> EN then cmbPause.Enabled := EN ;
    if cmbStop.Enabled <> EN then cmbStop.Enabled := EN ;
    if cmbPrev.Enabled <> EN then cmbPrev.Enabled := EN ;
    if cmbNext.Enabled <> EN then cmbNext.Enabled := EN ;

    if cmbReplay.Enabled <> EN then cmbReplay.Enabled := EN ;
    if cmbSetRepeat.Enabled <> EN then cmbSetRepeat.Enabled := EN ;
    if cmbStart.Enabled <> EN then cmbStart.Enabled := EN ;
    if cmbFinish.Enabled <> EN then cmbFinish.Enabled := EN ;
    if cmbReset.Enabled <> EN then cmbReset.Enabled := EN ;

    if cmbOpenWA.Enabled = EN then cmbOpenWA.Enabled := not EN ;
end ;

procedure TForm1.AproSetButtonColour(varState : integer) ;
var
    varEnable : Tcolor ;
    varDisAble : Tcolor ;
    varActive : Tcolor ;
begin
    varEnable := $00744301 ; // $00FF2828 ;
    varDisAble := $00333333 ;
    varActive := clMaroon ; // $000A66E2 ;

    if varMDown then exit ;

    if Form1.FormStyle = fsStayOnTop then
        cmbOnTop.Color := varActive
    else
        cmbOnTop.Color := varEnable ;

    cmbHelp.Color := varEnable ;
    panSystemTitle.Color := clTeal ;
    if panOpacity.Visible then cmbTS.Color := varActive else cmbTS.Color := varEnable ;
    if Form1.TransparentColor then cmbTransParent.Color := varActive else cmbTransParent.Color := varEnable ;

    if cmbPrev.Enabled then cmbPrev.Color := varEnable else cmbPrev.Color := varDisAble ;
    if cmbNext.Enabled then cmbNext.Color := varEnable else cmbNext.Color := varDisAble ;
    if cmbReplay.Enabled then cmbReplay.Color := varEnable else cmbReplay.Color := varDisAble ;
    if cmbSetRepeat.Enabled then cmbSetRepeat.Color := varEnable else cmbSetRepeat.Color := varDisAble ;
    if cmbStart.Enabled then cmbStart.Color := varEnable else cmbStart.Color := varDisAble ;
    if cmbFinish.Enabled then cmbFinish.Color := varEnable else cmbFinish.Color := varDisAble ;
    if cmbReset.Enabled then cmbReset.Color := varEnable else cmbReset.Color := varDisAble ;
    if cmbOpenWA.Enabled then cmbOpenWA.Color := varEnable else cmbOpenWA.Color := varDisAble ;

    case varState of
        0 : begin   // stopped
                if cmbPlay.Enabled then cmbPlay.Color := varEnable else cmbPlay.Color := varDisAble ;
                if cmbPause.Enabled then cmbPause.Color := varEnable else cmbPause.Color := varDisAble ;
                if cmbStop.Enabled then cmbStop.Color := varActive else cmbStop.Color := varDisAble ;
            end ;
        1 : begin  // playing
                if cmbPlay.Enabled then cmbPlay.Color := varActive else cmbPlay.Color := varDisAble ;
                if cmbPause.Enabled then cmbPause.Color := varEnable else cmbPause.Color := varDisAble ;
                if cmbStop.Enabled then cmbStop.Color := varEnable else cmbStop.Color := varDisAble ;
            end ;
        2 : begin  // paused
                if cmbPlay.Enabled then cmbPlay.Color := varEnable else cmbPlay.Color := varDisAble ;
                if cmbPause.Enabled then cmbPause.Color := varActive else cmbPause.Color := varDisAble ;
                if cmbStop.Enabled then cmbStop.Color := varEnable else cmbStop.Color := varDisAble ;
            end ;
    end ;
end ;

procedure TForm1.AproMyIdleHandler(Sender: TObject; var Done: Boolean);
var
    varState : integer ;
begin
// on idle event handler
    varState := 0 ;
    if not varSetBorders then AproButtonRoundPanelCornersSet() ;
    if not varProgramClosing then
    begin
        try
            try
            if not Winap.IsWinampRunning then
                AprosetButtons(False)
            else
            begin
                AprosetButtons(True) ;

                if WinAP.IsPlaying then
                    varState := 1
                else
                    varState := 0 ;

                if WinAP.IsPaused then varState := 2 ;
            end ;
            except
                MessageDlg('Error 12', mtError, [mbOk], 0);
            end ;

            AproSetFileData() ;
            AprosetButtonColour(varState) ;

            if Assigned(frmHelp) then
                if not frmHelp.Showing then
                begin
                    frmHelp.Free ;
                    frmHelp := nil ;
                end ;

            if Assigned(frmAbout) then
                if not frmAbout.Showing then
                begin
                    frmAbout.Free ;
                    frmAbout := nil ;
                end ;
        finally
        end ;
        Application.ProcessMessages ;
    end ;
end ;

procedure TForm1.AproSetTBPosition() ;
begin
// controls the WinAmp player buttons

    try
        TBPosition.Max := WinAP.GetLength  ;
    finally
    end ;
end ;


procedure TForm1.winCloseClick(Sender: TObject);
begin
    if Sender = winMin then Application.Minimize ;

    if Sender = winMax then
    begin
        if form1.WindowState = wsNormal	then
        begin
            form1.WindowState := wsMaximized  ;
            with Screen.WorkAreaRect do Form1.SetBounds(Left, Top, Right - Left, Bottom - Top);
        end
        else
            form1.WindowState := wsNormal	;
    end ;

    if Sender = winClose then Close ;
end;

procedure TForm1.panTitleBarDblClick(Sender: TObject);
begin
    winClose.OnClick(winMax) ;
end;

procedure TForm1.panTitleBarMouseDown(Sender: TObject;
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

procedure TForm1.cmbCloseClick(Sender: TObject);
begin
    varProgramClosing := True ;
    timPlayTime.Enabled := False ;
    timOpenBox.Enabled := False ;
    Close ;
end;

procedure TForm1.cmbResizeItMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    varTSState := Form1.TransparentColor ;
    varOPState := form1.AlphaBlend ;

    Form1.TransparentColor := False ;
    form1.AlphaBlend := False ;

    varMoveTheWindow := True ;
end;

procedure TForm1.cmbResizeItMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    varMoveTheWindow := False ;
    Form1.TransparentColor := varTSState ;
    form1.AlphaBlend := varOPState ;

end;

procedure TForm1.cmbResizeItMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
//    Resizes the Window ;
    if Form1.WindowState = wsMaximized then exit ;
    if varMoveTheWindow then
    begin
        Form1.Width := (Mouse.CursorPos.X - Form1.Left) + ((Form1.Width - cmbResizeIt.Left) - cmbResizeIt.Width div 2) ;
        Form1.Height := (Mouse.CursorPos.Y - Form1.Top) + ((Form1.Height - cmbResizeIt.Top) - cmbResizeIt.Height div 2) ;
    end ;
end;

procedure TForm1.timOpenBoxTimer(Sender: TObject);
begin
    //Opacity setting control
    if cmbTS.Tag = 1 then
    begin
        if panOpacity.Width < 96 then
        begin
            panOpacity.Left := panOpacity.Left - 5 ;
            panOpacity.Width := panOpacity.Width + 5 ;
        end ;

        if panOpacity.Height < 151 then panOpacity.Height := panOpacity.Height + 25 ;

        if (panOpacity.Height = 151) AND (panOpacity.Width = 96) then
        begin
            timPlayTime.Enabled := False ;
            panOpacityTitle.Visible := True ;
            TBOpacity.Visible := True ;
            labOpPer.Visible := True ;
            Form1.AlphaBlend := True ;
            timPlayTime.Enabled := True ;
            timOpenBox.Enabled := False ;
            varSetBorders := False ;
        end ;
    end ;
    
end;

procedure TForm1.FL1Click(Sender: TObject);
{ var
    s, varFileExt :string ;
}
begin
  {  Timer1.Enabled := False ;
    labFilePath.Caption := FL1.SelectedItem.PathName ;
    s := ExtractFileExt(FL1.SelectedItem.PathName) ;
    if (s = '.mp3') OR (s = '.MP3') then
    begin
        AproLoadID3V2(varFileExt) ;
        Application.ProcessMessages ;

        if not FileExists(FL1.SelectedItem.PathName) then
        begin
            ShowMessage('MP3 file '+#13#10+ FL1.SelectedItem.PathName +#13#10+'does not exist!');
            exit;
        end;

        varFileExt := ExtractFileExt(FL1.SelectedItem.PathName) ;

        MP1.Close;
        MP1.FileName:= FL1.SelectedItem.PathName ;
        MP1.Open;
    end ;   }
end;

procedure TForm1.cmbFL1RootClick(Sender: TObject);
begin
    FL1.Folder.PathName := 'c:\' ;
end;

procedure TForm1.cmbFL1BackClick(Sender: TObject);
begin
    FL1.Folder.PathName := copy(FL1.Folder.PathName, 0 , LastDelimiter('\',FL1.Folder.PathName) ) ;
end;

function TForm1.AfuncGetLeadingZeros(varStringValue : String):String ; // leading zeros
var
    i : Integer ;
begin
// this function adds leeding zeros to the reference id number (String Type)
    try
        i := StrToInt(varStringValue) ;
        result := varStringValue ;
        if i < 100 then result := '' + IntToStr(i) ;
        if i < 10 then result := '0' + IntToStr(i) ;
    except
        result := '' ;
        raise ;
    end ;
end ;

procedure TForm1.AproSetTime(i : integer; Lab : TLabel) ;
var
    a,b,c : integer ;
    a1,b1,c1 : string ;
begin
// displays the song length in hours mins and secs
    try
        a := 0 ;

        if i < 3600 then a := 0 ;
        b := i div 60 ;
        c := i - (b * 60) ;

        a1 := AfuncGetLeadingZeros(inttostr(a)) ; // leading zeros
        b1 := AfuncGetLeadingZeros(inttostr(b)) ; // leading zeros
        c1 := AfuncGetLeadingZeros(inttostr(c)) ; // leading zeros
    except
        MessageDlg('Error 1', mtError, [mbOk], 0);
    end;
    lab.Caption := a1 + ':' + b1 + ':' + c1 ;
end ;

procedure TForm1.AproRunTime(i : integer) ;
var
    a,b,c,x : integer ;
    a1,b1,c1,d1 : string ;
begin
// displays the song time in hours mins secs and milli secs

    a := 0 ;

    x := (i div 1000000) ;

    if x < 60 then a := 0 ;
    b := x div 60 ;
    c := x - (b * 60) ;

    x := (i - (x * 1000000)) div 1000   ;

    a1 := AfuncGetLeadingZeros(inttostr(a)) ; // leading zeros
    b1 := AfuncGetLeadingZeros(inttostr(b)) ; // leading zeros
    c1 := AfuncGetLeadingZeros(inttostr(c)) ; // leading zeros

    // milliseconds
    if x < 1000 then d1 := IntToStr(x) ;
    if x < 100 then d1 := '0' + IntToStr(x) ;
    if x < 10 then d1 := '00' + IntToStr(x) ;

    labA1.Caption := a1 ;
    labA2.Caption := b1 ;
    labA3.Caption := c1 ;
    labA4.Caption := d1 ;
end ;

function TForm1.AfuncRunTime(i : integer):string ;
var
    a,b,c,x : integer ;
    a1,b1,c1,d1 : string ;
begin
    a := 0 ;

    x := (i div 1000000) ;

    if x < 60 then a := 0 ;
    b := x div 60 ;
    c := x - (b * 60) ;

    x := (i - (x * 1000000)) div 1000   ;

    a1 := AfuncGetLeadingZeros(inttostr(a)) ; // leading zeros
    b1 := AfuncGetLeadingZeros(inttostr(b)) ; // leading zeros
    c1 := AfuncGetLeadingZeros(inttostr(c)) ; // leading zeros

    // milliseconds
    if x < 1000 then d1 := IntToStr(x) ;
    if x < 100 then d1 := '0' + IntToStr(x) ;
    if x < 10 then d1 := '00' + IntToStr(x) ;

    result := a1 + ':' + b1 + ':' + c1 + ':' + d1 ;
end ;


function TForm1.AfuncSetTime(i : integer):string ;
var
    a,b,c : integer ;
    a1,b1,c1 : string ;
begin
    a := 0 ;

    if i < 60 then a := 0 ;
    b := i div 60 ;
    c := i - (b * 60) ;

    a1 := AfuncGetLeadingZeros(inttostr(a)) ; // leading zeros
    b1 := AfuncGetLeadingZeros(inttostr(b)) ; // leading zeros
    c1 := AfuncGetLeadingZeros(inttostr(c)) ; // leading zeros

    result := a1 + ':' + b1 + ':' + c1 ;
end ;

procedure TForm1.AproPlayClick(Sender : TObject) ;
var
//    WinAP : TWinampControl ;
    a1, b1 : string ;
    a, b, c : integer ;   
begin
// controls the WinAmp player buttons

    try
        if Sender = cmbOpenWA then
        begin
            if not Winap.IsWinampRunning then
            begin
                ShellExecute(Handle, 'open', PChar('C:\Program Files\Winamp\winamp.exe'), nil, nil, SW_SHOW);
            end ;
        end ;

        if not Winap.IsWinampRunning then exit ;

        if Sender = cmbPlay then
        begin
            WinAP.StartPlay ;
            timPlayTime.Enabled := True ;
            AproSetTBPosition() ;
            AproSetFileData() ;
        end ;

        if Sender = cmbPause then WinAP.Pause ;

        if Sender = cmbStop then WinAP.Stop ;

        if Sender = cmbPrev then WinAP.PrevTrack ;

        if Sender = cmbNext then WinAP.NextTrack ;

        if Sender = cmbStart then
        begin
            labStart.Tag := WinAP.GetOffset div 1000000 ;
            labStart.Caption := AfuncSetTime(labStart.Tag) ;
//            labStart.Caption := AfuncSetTime(WinAP.GetOffset div 1000000) ;
        end ;

        if Sender = cmbFinish then
        begin
            if varRepeat then
            begin
                varRepeat := False ;
                labFinish.Caption := '00:00:00' ;
            end
            else
            begin
                labFinish.Tag := WinAP.GetOffset div 1000000 ;
                labFinish.Caption := AfuncSetTime(labFinish.Tag) ;

//                labFinish.Caption := AfuncSetTime(WinAP.GetOffset div 1000000) ;

                WinAp.Seek(labStart.Tag) ;
                varRepeat := True ;
            end ;
        end ;

        if Sender = cmbFinishMinus then
        begin
            if varRepeat then
            begin
                labFinish.Tag := labFinish.Tag - 1 ;
                labFinish.Caption := AfuncSetTime(labFinish.Tag) ;
            end ;
        end ;

        if Sender = cmbFinishPlus then
        begin
            if varRepeat then
            begin
                labFinish.Tag := labFinish.Tag + 1 ;
                labFinish.Caption := AfuncSetTime(labFinish.Tag) ;
            end ;
        end ;

        if Sender = cmbStartMinus then
        begin
            if labStart.Tag > 0 then
            begin
                labStart.Tag := labStart.Tag - 1 ;
                labStart.Caption := AfuncSetTime(labStart.Tag) ;
            end ;
        end ;

        if Sender = cmbStartPlus then
        begin
            if labStart.Tag > 0 then
            begin
                labStart.Tag := labStart.Tag + 1 ;
                labStart.Caption := AfuncSetTime(labStart.Tag) ;
            end ;
        end ;

        if Sender = cmbReplay then
        begin
            if varRepeat then
            begin
                WinAp.Seek(labStart.Tag) ;
            end
            else
            begin
                WinAp.StartPlay ;
            end ;
        end ;

        if Sender = cmbReset then
        begin
            varRepeat := False ;
            labStart.Tag := 0 ;
            labStart.Caption := '00:00:00' ;
            labFinish.Caption := '00:00:00' ;
            mskStart.Clear ;
            mskFin.Clear ;

        end ;

        if Sender = cmbSetRepeat then
        begin
              if mskStart.Text = '  :  ' then exit ;
              if mskFin.Text = '  :  ' then mskFin.Text := '00:00' ;

              a1 := copy(mskStart.Text,0,2) ;
              b1 := copy(mskStart.Text,4,2) ;

              a := StrToInt(a1) ;
              b := StrToInt(b1) ;

              c := (a * 60) + b  ;

              labStart.Tag := c ;
              labStart.Caption := AfuncSetTime(c) ;

              a1 := copy(mskFin.Text,0,2) ;
              b1 := copy(mskFin.Text,4,2) ;

              a := StrToInt(a1) ;
              b := StrToInt(b1) ;

              c := (a * 60) + b ;

              labFinish.Tag := c ;
              labFinish.Caption := AfuncSetTime(c) ;

              varRepeat := True ;
              WinAp.Seek(labStart.Tag) ;
              cmbPlay.SetFocus ;
        end ;

        if Sender = cmbTransParent then
        begin
                Form1.TransparentColor := not form1.TransparentColor ;
        end ;

        if Sender = cmbTS then
        begin
            if cmbTS.Tag = 0 then
            begin
                cmbTS.Tag := 1 ;   // alphablen is on
                panOpacity.Visible := True ;
                timOpenBox.Enabled := True ;
            end
            else
            begin
                Form1.AlphaBlend := False ;
                cmbTS.Tag := 0 ;
                timOpenBox.Enabled := False ;
                panOpacityTitle.Visible := False ;
                TBOpacity.Visible := False ;
                panOpacity.Visible := False ;
                labOpPer.Visible := False ;
                panOpacity.Height := 1 ;
                panOpacity.Width := 1 ;
                panOpacity.Left := 96 ;
                varSetBorders := False ;
            end ;
        end ;

        if Sender = cmbOnTop then
        begin
            if Form1.FormStyle = fsNormal then
            begin
                Form1.FormStyle := fsStayOnTop ;
                AproButtonRoundSet() ;
            end
            else
            begin
                Form1.FormStyle := fsNormal ;
                AproButtonRoundSet() ;
            end ;
        end ;

        if Sender = cmbHelp then
        begin
            if not assigned(frmHelp) then
            begin
                // creates and shows form if not exist
                try
                        Application.CreateForm(TfrmHelp, frmHelp);
                        frmHelp.Show ;
                except
                        raise ;
                        if assigned(frmHelp) then
                        begin
                                frmHelp.Free ;
                                frmHelp := nil ;
                        end ;
                end ;
            end ;
        end ;

        if Sender = panSystemTitle then
        begin
            if not assigned(frmAbout) then
            begin
                // creates and shows form if not exist
                try
                        Application.CreateForm(TfrmAbout, frmAbout);
                        frmAbout.ShowModal ;
                except
                        raise ;
                        if assigned(frmAbout) then
                        begin
                                frmAbout.Free ;
                                frmAbout := nil ;
                        end ;
                end ;
            end ;
        end ;

    finally
        Application.ProcessMessages ;
    end ;
end ;

procedure TForm1.cmbPlayClick(Sender: TObject);
begin
// controls the WinAmp player buttons

    try
        if Sender = cmbOpenWA then
        begin
            if not Winap.IsWinampRunning then
            begin
                ShellExecute(Handle, 'open', PChar('C:\Program Files\Winamp\winamp.exe'), nil, nil, SW_SHOW);
            end ;
        end ;

        if not Winap.IsWinampRunning then exit ;

        if Sender = cmbPlay then
        begin
            WinAP.StartPlay ;
            AproSetTBPosition() ;
            AproSetFileData() ;
        end ;

        if Sender = cmbPause then WinAP.Pause ;

        if Sender = cmbStop then WinAP.Stop ;

        if Sender = cmbPrev then WinAP.PrevTrack ;

        if Sender = cmbNext then WinAP.NextTrack ;

        if Sender = cmbStart then
        begin
            labStart.Caption := AfuncRunTime(WinAP.GetOffset) ;
            labStart.Tag := WinAP.GetOffset div 1000000 ;
        end ;

        if Sender = cmbFinish then
        begin
            if varRepeat then
            begin
                varRepeat := False ;
                labFinish.Caption := '00:00:00:000' ;
            end
            else
            begin
                labFinish.Caption := AfuncRunTime(WinAP.GetOffset) ;
                labFinish.Tag := WinAP.GetOffset div 1000000 ;
                WinAp.Seek(labStart.Tag) ;
                varRepeat := True ;
            end ;
        end ;

        if Sender = cmbReplay then
        begin
            if varRepeat then
            begin
                WinAp.Seek(labStart.Tag) ;
            end
            else
            begin
                WinAp.StartPlay ;
            end ;
        end ;

        if Sender = cmbReset then
        begin
            varRepeat := False ;
            labStart.Caption := '00:00:00:000' ;
            labFinish.Caption := '00:00:00:000' ;
        end ;
    finally
    end ;
end;

procedure TForm1.timPlayTimeTimer(Sender: TObject);
begin
  // controls the WinAmp player buttons

    try
        if Winap.IsWinampRunning then
        begin
            try
                if WinAP.GetLength <> TBPosition.Max then AproSetTBPosition() ;
                AproRunTime(WinAP.GetOffset) ;
                if TBPosition.Tag = 0 then TBPosition.Position := WinAP.GetOffset div 1000000 ;
            except
                MessageDlg('Error 10', mtError, [mbOk], 0);
            end;

            if varRepeat then
            begin
                try
                    if WinAP.GetOffset div 1000000 = labFinish.Tag then
                        WinAp.Seek(labStart.Tag) ;
                except
                    MessageDlg('Error 1', mtError, [mbOk], 0);
                end ;
            end ;
        end ;
    finally
    end ;
end;

procedure TForm1.TBVolumeChange(Sender: TObject);
begin
  // controls the WinAmp player volume
    try
        if Sender = TBVolume then
        begin
            WinAP.SetVolume(TBVolume.Position) ;
            labVolPer.Caption := Format('%3.2f', [((TBVolume.Position / TBVolume.Max) * 100)]) + ' % ' ;
        end ;
        if Sender = TBPosition then
        begin
            if TBPosition.Tag = 1 then
                WinAP.Seek(TBPosition.Position) ;

            AproSetTime(TBPosition.Max - TBPosition.Position, labTimeRem) ;
        end ;

        TBPosition.Repaint ;
        TBVolume.Repaint ;
    finally
    end ;
end;

procedure TForm1.TBOpacityChange(Sender: TObject);
begin
    if Form1.AlphaBlend then Form1.AlphaBlendValue :=  TBOpacity.Position ;
    labOpPer.Caption := Format('%3.2f', [((TBOpacity.Position / TBOpacity.Max) * 100)]) + ' % ' ;
    TBOpacity.Repaint ;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    varExeLoc := ExtractFilePath(Application.EXEName) ;

    Id3v2Tag := TId3v2Tag.Create;
    WinAP := TWinampControl.Create(Self);

    {
    // sets the opacity controls
    panOpacityTitle.Visible := False ;
    TBOpacity.Visible := False ;
    panOpacity.Visible := False ;
    labOpPer.Visible := False ;
    panOpacity.Height := 1 ;
    panOpacity.Width := 1 ;
    panOpacity.Left := 96 ;
    }

    AproRoundForm(varFormRoundSizeA, varFormRoundSizeB) ;
    varProgramClosing := False ;
    varSetBorders := False ;
    AproButtonRoundSet() ;
    AproSetBorders() ;
    AproButtonRoundPanelCornersSet() ;
    application.OnIdle := AproMyIdleHandler ;

    

    varSetBorders := False ;
    Application.ProcessMessages ;
    AproOpenWinAmp() ;
end;

procedure TForm1.TBPositionMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    TBPosition.Tag := 1 ;
end;

procedure TForm1.TBPositionMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    TBPosition.Tag := 0 ;
end;

procedure TForm1.cmbOpenWAMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
    varC : TColor ;
begin
// mouse down ;
    varC := clAqua ;

    varMDown := True ;
    if Sender = cmbPlay then cmbPlay.Color := varC ;
    if Sender = cmbPause then cmbPause.Color := varC ;
    if Sender = cmbStop then cmbStop.Color := varC ;
    if Sender = cmbPrev then cmbPrev.Color := varC ;
    if Sender = cmbNext then cmbNext.Color := varC ;
    if Sender = cmbStart then cmbStart.Color := varC ;
    if Sender = cmbFinish then cmbFinish.Color := varC ;
    if Sender = cmbReplay then cmbReplay.Color := varC ;
    if Sender = cmbSetRepeat then cmbSetRepeat.Color := varC ;
    if Sender = cmbReset then cmbReset.Color := varC ;
    if Sender = cmbTS then cmbTS.Color := varC ;
    if Sender = cmbTransParent then cmbTransParent.Color := varC ;
    if Sender = cmbOnTop then cmbOnTop.Color := varC ;
    if Sender = cmbHelp then cmbHelp.Color := varC ;
    if Sender = panSystemTitle then panSystemTitle.Color := varC ;
end;

procedure TForm1.cmbOpenWAMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//mouse up
    varMDown := False ;
    AproPlayClick(Sender) ;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    timPlayTime.Enabled := False ;
    timOpenBox.Enabled := False ;
    varProgramClosing := True ;
    WinAP := nil ;
    WinAP.Free ;
    AproSaveDatFile() ;
end;


procedure TForm1.FormResize(Sender: TObject);
begin
 //   AproButtonRoundSet() ;
    AproRoundForm(varFormRoundSizeA, varFormRoundSizeB) ;
    varSetBorders := False ;
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
    varSetBorders := False ;
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// function Keys F Keys
    Case Key of
        33 : TBVolume.Position := TBVolume.Position + 10 ;
        34 : TBVolume.Position := TBVolume.Position - 10 ;
        40  : AproPlayClick(cmbPrev) ;
        38  : AproPlayClick(cmbNext) ;
         
        112 : AproPlayClick(cmbReset) ; // f1
        113 : ; // f2
        114 : AproPlayClick(cmbStartMinus) ; // f3
        115 : AproPlayClick(cmbStart) ; // f4
        116 : AproPlayClick(cmbStartPlus) ; // f5
        117 : AproPlayClick(cmbFinishMinus) ; // f6
        118 : AproPlayClick(cmbFinish) ; // f7
        119 : AproPlayClick(cmbFinishPlus) ; // f8

        120 : AproPlayClick(cmbReplay) ; // f9
        121 : AproPlayClick(cmbPause) ; // f10
        122 : AproPlayClick(cmbStop) ; // f11
    end ;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
    Id3v2Tag.Free;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
    AproReadDatFile() ;
    cmbPlay.SetFocus ;

end;

procedure TForm1.FormDeactivate(Sender: TObject);
begin
    AproSaveDatFile() ;
end;

end.

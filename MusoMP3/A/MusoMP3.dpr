program MusoMP3;

uses
  Forms,
  AMain in '..\AMain\AMain.pas' {Form1},
  WinampControl in '..\WinampControl\WinampControl.pas',
  Windows,
  ShellApi,
  U_CharCode in '..\U_CharCode\U_CharCode.pas',
  Id3v2Frames in '..\Id3v2Frames\Id3v2Frames.pas',
  Mp3FileUtils in '..\Mp3FileUtils\Mp3FileUtils.pas',
  FHelp in '..\FHelp\FHelp.pas' {frmHelp},
  FAbout in '..\FAbout\FAbout.pas' {frmAbout};

{$R *.res}

begin

  Application.Initialize;   

  Application.Title := 'MusoMP3';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

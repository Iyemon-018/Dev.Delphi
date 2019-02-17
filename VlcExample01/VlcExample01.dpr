program VlcExample01;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  UserInformationInputForm in 'UserInformationInputForm.pas' {UserInfoInputForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TUserInfoInputForm, UserInfoInputForm);
  Application.Run;
end.

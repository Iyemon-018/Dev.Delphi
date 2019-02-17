unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, StrUtils,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls
  , UserInformationInputForm
  , UserInformation;

type
  TForm1 = class(TForm)
    btnCreate: TButton;
    stgUsers: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
  private
    { Private 宣言 }
    procedure AddUser(UserInfo: TUserInformation);
  public
    { Public 宣言 }
  end;

const
  USER_INFORMATION_COUNT = 4;
  USER_NAME = '名前';
  USER_AGE = '年齢';
  USER_GENDER = '性別';
  USER_ROLL = '役割';

var
  Form1: TForm1;
  //
  // 配列は array[インデックスの先頭番号..末尾番号] という形式で宣言する。
  // of 型 とすることで要素の型を定義できる。
  // 宣言と同時に初期化する場合は、つづけて = (値, ...) とする。
  //
  HeaderList:array[0..USER_INFORMATION_COUNT-1] of string
   = (USER_NAME, USER_AGE, USER_GENDER, USER_ROLL);

implementation

{$R *.dfm}

/// <summary>
/// 新規作成ボタンをクリックした際のイベントハンドラです。
/// </summary>
procedure TForm1.btnCreateClick(Sender: TObject);
var
  UserInfoForm: TUserInfoInputForm;
  NewUser: TUserInformation;
begin
  // TODO
  UserInfoForm := TUserInfoInputForm.Create(Form1);
  UserInfoForm.ShowModal;
  NewUser := UserInfoForm.NewUser;
  AddUser(NewUser);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ii: Integer;
  Header: String;
begin
  stgUsers.ColCount := USER_INFORMATION_COUNT;

  for ii := 0 to stgUsers.ColCount - 1 do
  begin
    Header := HeaderList[ii];
    stgUsers.Cells[ii, 0] := Header;
  end;

end;

procedure TForm1.AddUser(UserInfo: TUserInformation);
var
  Row: Integer;
begin
  Row := stgUsers.RowCount;
  stgUsers.RowCount := stgusers.RowCount + 1;
  stgUsers.Cells[0, Row] := IntToStr(Row);
  stgUsers.Cells[1, Row] := UserInfo.Name;
  stgUsers.Cells[2, Row] := IntToStr(UserInfo.Age);
  stgUsers.Cells[3, Row] := IfThen(UserInfo.Gender = TGender.Male, '男性', '女性');
  stgUsers.Cells[4, Row] := UserInfo.Roll;
end;

end.


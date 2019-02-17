unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnCreate: TButton;
    stgUsers: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private 宣言 }
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

end.


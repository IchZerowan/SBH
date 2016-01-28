unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, math, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    edtCalc: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnMinus: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btnPlus: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnMult: TButton;
    btnDev: TButton;
    btnIs: TButton;
    btn0: TButton;
    btnComa: TButton;
    btnClear: TButton;
    TabSheet2: TTabSheet;
    edtA: TEdit;
    edtB: TEdit;
    edtC: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnSQR: TButton;
    MemoSq: TMemo;
    Label5: TLabel;
    TabSheet3: TTabSheet;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label11: TLabel;
    Edit7: TEdit;
    Label12: TLabel;
    TabSheet4: TTabSheet;
    Edit8: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Edit9: TEdit;
    Label15: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Label18: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnIsClick(Sender: TObject);
    procedure btnComaClick(Sender: TObject);
    procedure btnMinusClick(Sender: TObject);
    procedure btnPlusClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnDevClick(Sender: TObject);
    procedure edtCalcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSQRClick(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit6KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit8KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit9KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit11KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit12KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit13KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
  private
    procedure add(num: byte);
    procedure FullBuffer(ch: Char);
    procedure equally;
    procedure clearCalc;
    function NOD(a, b: integer): integer;
    procedure fillrnd(r, n: double);
    procedure fillpol(n: integer);
    function fact(n: integer): integer;

  var
    Buffer: double;
    Sign: Char;
    Mem: double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Calculator block
function TForm1.fact(n: integer): integer;
var
  i: integer;
  res: int64;
begin
  res := 1;
  for i := 1 to n do
    res := res * i;
  result := res;
end;

procedure TForm1.clearCalc;
begin
  edtCalc.Text := '0';
  Buffer := 0;
  Sign := ' ';
end;

procedure TForm1.equally;
var
  a: double;
begin
  try
    a := strtofloat(edtCalc.Text);
    case Sign of
      ' ':
        exit;
      '+':
        edtCalc.Text := floattostr(a + Buffer);
      '-':
        edtCalc.Text := floattostr(Buffer - a);
      '*':
        edtCalc.Text := floattostr(a * Buffer);
      '/':
        edtCalc.Text := floattostr(Buffer / a);
      '^':
        edtCalc.Text := floattostr(Power(Buffer, a));
      '√':
        edtCalc.Text := floattostr(Power(Buffer, (1 / a)));
      'L':
        edtCalc.Text := floattostr(LogN(a, Buffer));
    end;
  except
    MessageDlg('Ошибка ввода!', mtError, [mbOk], 0);
    clearCalc;
  end;
end;

procedure TForm1.add(num: byte);
begin
  if edtCalc.Text = '0' then
    edtCalc.Text := '';
  edtCalc.Text := edtCalc.Text + inttostr(num);
end;

procedure TForm1.FullBuffer(ch: Char);
begin
  try
    Buffer := strtofloat(edtCalc.Text);
    edtCalc.Text := '0';
    Sign := ch;
  except
    MessageDlg('Ошибка ввода!', mtError, [mbOk], 0);
    clearCalc;
  end;
end;

procedure TForm1.edtCalcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    97:
      add(1);
    98:
      add(2);
    99:
      add(3);
    100:
      add(4);
    101:
      add(5);
    102:
      add(6);
    103:
      add(7);
    104:
      add(8);
    105:
      add(9);
    96:
      if edtCalc.Text <> '0' then
        edtCalc.Text := edtCalc.Text + '0';
    110:
      edtCalc.Text := edtCalc.Text + ',';
    107:
      FullBuffer('+');
    109:
      FullBuffer('-');
    106:
      FullBuffer('*');
    111:
      FullBuffer('/');
    13:
      equally;
    8:
      clearCalc;
  end;
end;

procedure TForm1.btnIsClick(Sender: TObject);
begin
  equally;
end;

procedure TForm1.btnPlusClick(Sender: TObject);
begin
  FullBuffer('+');
end;

procedure TForm1.btnMinusClick(Sender: TObject);
begin
  FullBuffer('-');
end;

procedure TForm1.btnMultClick(Sender: TObject);
begin
  FullBuffer('*');
end;

procedure TForm1.btnDevClick(Sender: TObject);
begin
  FullBuffer('/');
end;

procedure TForm1.btnComaClick(Sender: TObject);
begin
  edtCalc.Text := edtCalc.Text + ',';
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  clearCalc;
end;

procedure TForm1.btn0Click(Sender: TObject);
begin
  if edtCalc.Text <> '0' then
    edtCalc.Text := edtCalc.Text + '0';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  add(1);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  add(2);
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  add(3);
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  add(4);
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  add(5);
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  add(6);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  add(7);
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  add(8);
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  add(9)
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(sin(2 * pi * strtofloat(edtCalc.Text) / 360));
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  edtCalc.Text:= floattostr(pi);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(cos(2 * pi * strtofloat(edtCalc.Text) / 360));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(tan(2 * pi * strtofloat(edtCalc.Text) / 360));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(1 / tan(2 * pi * strtofloat(edtCalc.Text) / 360));
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(RadToDeg(arcsin(strtofloat(edtCalc.Text))));
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(RadToDeg(arcCos(strtofloat(edtCalc.Text))));
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(RadToDeg(arctan(strtofloat(edtCalc.Text))));
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(RadToDeg(arctan(1 / strtofloat(edtCalc.Text))));
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(sqr(strtofloat(edtCalc.Text)));
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  if edtCalc.Text[1] <> '-' then
    edtCalc.Text := floattostr(sqrt(strtofloat(edtCalc.Text)));
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(-strtofloat(edtCalc.Text));
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  FullBuffer('^');
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  FullBuffer('√');
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Mem := strtofloat(edtCalc.Text);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  edtCalc.Text := floattostr(Mem);
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  Mem := 0;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  FullBuffer('L');
end;

procedure TForm1.Button18Click(Sender: TObject);
var
  n: double;
begin
  n := strtofloat(edtCalc.Text);
  if (n - round(n) = 0) and (n >= 0) then
    edtCalc.Text := inttostr(fact(round(n)));
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  edtCalc.Text := inttostr(round(strtofloat(edtCalc.Text)));
end;

// Calculator block

// Equation block
function TForm1.NOD(a, b: integer): integer;
begin
  If a <> 0 then
    NOD := NOD(b mod a, a)
  else
    NOD := b;
End;

procedure TForm1.btnSQRClick(Sender: TObject);
var
  a, b, c, d: integer;
  x1, x2: double;
begin
  MemoSq.Clear;
  if edtA.Text = '' then
    edtA.Text := '0';
  if edtB.Text = '' then
    edtB.Text := '0';
  if edtC.Text = '' then
    edtC.Text := '0';
  try
    a := strtoint(edtA.Text);
    b := strtoint(edtB.Text);
    c := strtoint(edtC.Text);
  except
    MessageDlg('Ошибка ввода', mtWarning, [mbOk], 0);
    exit;
  end;

  // check if a < 0
  if a < 0 then
  begin
    a := -a;
    b := -b;
    c := -c;
  end;

  // ax2+bx+c=0
  if (a > 0) and (b <> 0) and (c <> 0) then
  begin
    // f(1)
    if a + b + c = 0 then
    begin
      MemoSq.lines.add('f(1)=0');
      MemoSq.lines.add('x1 = 1');
      if c mod a = 0 then
        MemoSq.lines.add('x2 = ' + inttostr(c div a))
      else
      begin
        d := NOD(c, a);
        c := c div d;
        a := a div d;
        if c * a > 0 then
          MemoSq.lines.add('x2 = ' + inttostr(abs(c)) + ' / ' +
            inttostr(abs(a)))
        else
          MemoSq.lines.add('x2 = -' + inttostr(abs(c)) + ' / ' +
            inttostr(abs(a)))
      end;

    end
    // f(-1)
    else if a - b + c = 0 then
    begin
      MemoSq.lines.add('f(-1)=0');
      MemoSq.lines.add('x1 = -1');
      if c mod a = 0 then
        MemoSq.lines.add('x2 = ' + inttostr(-c div a))
      else
      begin
        d := NOD(c, a);
        c := c div d;
        a := a div d;
        if c * a > 0 then
          MemoSq.lines.add('x2 = -' + inttostr(abs(c)) + ' / ' +
            inttostr(abs(a)))
        else
          MemoSq.lines.add('x2 = ' + inttostr(abs(c)) + ' / ' +
            inttostr(abs(a)));
      end;
    end
    // others
    else
    begin
      d := sqr(b) - 4 * a * c;
      if d < 0 then
        MemoSq.lines.add('D<0, x є Ø')
      else if d > 0 then
      begin
        x1 := (-b + sqrt(d)) / (2 * a);
        x2 := (-b - sqrt(d)) / (2 * a);
        // viet
        if (a = 1) and ((x1 - round(x1)) = 0) and ((x1 - round(x1)) = 0) then
        begin
          MemoSq.lines.add('По теореме Виета:');
          MemoSq.lines.add('x1 = ' + floattostr(x1));
          MemoSq.lines.add('x2 = ' + floattostr(x2));
        end
        // discriminant
        else
        begin
          MemoSq.lines.add('D = b2-4ac = ' + inttostr(d));
          MemoSq.lines.add('x1 = (-b+√d) / 2a ≈ ' + floattostr(x1));
          MemoSq.lines.add('x2 = (-b-√d) / 2a ≈ ' + floattostr(x2));
        end;
      end;
    end;
  end
  // ax2+bx=0
  else if (a > 0) and (b <> 0) and (c = 0) then
  begin
    MemoSq.lines.add('x1 = 0');
    if b mod a = 0 then
      MemoSq.lines.add('x2 = ' + inttostr(-b div a))
    else
    begin
      d := NOD(b, a);
      b := b div d;
      a := a div d;
      if b * a > 0 then
        MemoSq.lines.add('x2 = -' + inttostr(abs(b)) + ' / ' + inttostr(abs(a)))
      else
        MemoSq.lines.add('x2 = ' + inttostr(abs(b)) + ' / ' + inttostr(abs(a)));
    end;
  end
  // ax2=0
  else if (a > 0) and (b = 0) and (c = 0) then
  begin
    MemoSq.lines.add('х є R');
  end
  // ax2+c=0
  else if (a > 0) and (b = 0) and (c <> 0) then
  begin
    if c mod a = 0 then
      MemoSq.lines.add('x2 = ' + inttostr(-c div a))
    else
    begin
      d := NOD(c, a);
      c := c div d;
      a := a div d;
      if c * a > 0 then
        MemoSq.lines.add('x2 = -' + inttostr(abs(c)) + ' / ' + inttostr(abs(a)))
      else
        MemoSq.lines.add('x2 = ' + inttostr(abs(c)) + ' / ' + inttostr(abs(a)));
    end;
    if -c / a < 0 then
      MemoSq.lines.add('x є Ø')
    else
      MemoSq.lines.add('x ≈ ' + floattostr(sqrt(-c / a)));
  end
  // a=0
  else if (a = 0) and (b = 0) then
    MemoSq.lines.add('х є R')
  else if (a = 0) and (c = 0) then
    MemoSq.lines.add('х = 0')
  else
  begin
    if c mod b = 0 then
      MemoSq.lines.add('x = ' + inttostr(-c div b))
    else
    begin
      d := NOD(c, b);
      c := c div d;
      b := b div d;
      if c * b > 0 then
        MemoSq.lines.add('x = -' + inttostr(abs(c)) + ' / ' + inttostr(abs(b)))
      else
        MemoSq.lines.add('x = ' + inttostr(abs(c)) + ' / ' + inttostr(abs(b)));
    end;
  end;

end;
// Equation block

// Rounder block
Procedure TForm1.fillrnd(r: double; n: double);
begin
  Edit1.Text := floattostr(r);
  Edit2.Text := floattostr(r * 2);
  Edit3.Text := floattostr(2 * pi * r);
  Edit4.Text := floattostr(pi * r * r);
  Edit5.Text := floattostr(n);
  Edit6.Text := floattostr(n / 2);
  Edit7.Text := floattostr(2 * pi * r * n / 360);
end;

procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  r, n: double;
begin
  if Edit1.Text = '' then
    exit;
  if Edit5.Text = '' then
    Edit5.Text := '0';
  if (Key <> 188) and (Key <> 191) then
    Try
      r := strtofloat(Edit1.Text);
      n := strtofloat(Edit5.Text);
      fillrnd(r, n);
    except
      MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
    End;
end;

procedure TForm1.Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  r, n: double;
begin
  if Edit2.Text = '' then
    exit;
  if Edit5.Text = '' then
    Edit5.Text := '0';
  if (Key <> 188) and (Key <> 191) then
    Try
      r := strtofloat(Edit2.Text) / 2;
      n := strtofloat(Edit5.Text);
      fillrnd(r, n);
    except
      MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
    End;
end;

procedure TForm1.Edit3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  r, n: double;
begin
  if Edit3.Text = '' then
    exit;
  if Edit5.Text = '' then
    Edit5.Text := '0';
  if (Key <> 188) and (Key <> 191) then
    Try
      r := strtofloat(Edit3.Text) / (2 * pi);
      n := strtofloat(Edit5.Text);
      fillrnd(r, n);
    except
      MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
    End;
end;

procedure TForm1.Edit4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  r, n: double;
begin
  if Edit4.Text = '' then
    exit;
  if Edit5.Text = '' then
    Edit5.Text := '0';
  if (Key <> 188) and (Key <> 191) then
    Try
      r := sqrt(strtofloat(Edit4.Text) / pi);
      n := strtofloat(Edit5.Text);
      fillrnd(r, n);
    except
      MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
    End;
end;

procedure TForm1.Edit5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  r, n: double;
begin
  if Edit5.Text = '' then
    exit;
  if Edit1.Text = '' then
    Edit1.Text := '0';
  if (Key <> 188) and (Key <> 191) then
    Try
      r := strtofloat(Edit1.Text);
      n := strtofloat(Edit5.Text);
      fillrnd(r, n);
    except
      MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
    End;
end;

procedure TForm1.Edit6KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  r, n: double;
begin
  if Edit6.Text = '' then
    exit;
  if Edit1.Text = '' then
    Edit1.Text := '0';
  if (Key <> 188) and (Key <> 191) then
    Try
      r := strtofloat(Edit1.Text);
      n := strtofloat(Edit6.Text) * 2;
      fillrnd(r, n);
    except
      MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
    End;
end;

procedure TForm1.Edit7KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  r, n: double;
begin
  if Edit7.Text = '' then
    exit;
  if Edit1.Text = '' then
    Edit1.Text := '0';
  if (Key <> 188) and (Key <> 191) then
    Try
      r := strtofloat(Edit1.Text);
      n := 180 * strtofloat(Edit7.Text) / (pi * r);
      fillrnd(r, n);
    except
      MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
    End;
end;
// Rounder block

// polygon block
procedure TForm1.fillpol(n: integer);
begin
  if n < 3 then
  begin
    MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
    exit;
  end;
  Edit8.Text := inttostr(n);
  Edit9.Text := inttostr(180 * (n - 2));
  Edit11.Text := floattostr(180 * (n - 2) / n);
  Edit12.Text := floattostr(360 / n);
  Edit13.Text := floattostr(n * (n - 3) / 2);
end;

procedure TForm1.Edit8KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Edit8.Text = '' then
    exit;
  try
    if strtoint(Edit8.Text) < 3 then
      exit;
    fillpol(strtoint(Edit8.Text));
  except
    MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
  end;
end;

procedure TForm1.Edit9KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Edit9.Text = '' then
    exit;
  try
    if strtoint(Edit9.Text) < 180 then
      exit;
    fillpol(round((strtoint(Edit9.Text) + 360) / 180));
  except
    MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
  end;
end;

procedure TForm1.Edit11KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Edit11.Text = '' then
    exit;
  try
    if strtoint(Edit11.Text) < 60 then
      exit;
    fillpol(round(360 / (180 - strtoint(Edit11.Text))));
  except
    MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
  end;
end;

procedure TForm1.Edit12KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Edit12.Text = '' then
    exit;
  try
    if (strtoint(Edit12.Text) > 180) then
      exit;
    fillpol(round(360 / strtoint(Edit12.Text)));
  except
    MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
  end;
end;

procedure TForm1.Edit13KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  d, n: integer;
begin
  if Edit13.Text = '' then
    exit;
  try
    d := 9 + 8 * strtoint(Edit13.Text);
    n := round(((3 + sqrt(d)) / 2));
    fillpol(n);
  except
    MessageDlg('Ошибка ввода!', mtWarning, [mbOk], 0);
  end;
end;

// polygon block
end.

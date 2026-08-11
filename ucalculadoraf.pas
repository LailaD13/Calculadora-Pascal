unit uCalculadoraF;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnLimpar: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    botn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn0: TButton;
    btnDividir: TButton;
    btnMultiplicar: TButton;
    btnMenos: TButton;
    btnMais: TButton;
    btnIgual: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    edtTela: TEdit;
    procedure botn1Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Numero1: Double;
  Numero2: Double;
  Operacao: Char;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.botn1Click(Sender: TObject);
begin
  edtTela.Text := edtTela.Text + '1';
end;

procedure TForm1.btn0Click(Sender: TObject);
begin
  edtTela.Text := edtTela.Text + '0';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  edtTela.Text := edtTela.Text + '2';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  edtTela.Text := edtTela.Text + '3';
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  edtTela.Text := edtTela.Text + '4';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  edtTela.Text := edtTela.Text + '5';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  edtTela.Text := edtTela.Text + '6';
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  edtTela.Text := edtTela.Text + '7';
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  edtTela.Text := edtTela.Text + '8';
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  edtTela.Text := edtTela.Text + '9';
end;

procedure TForm1.btnDividirClick(Sender: TObject);
begin
  Numero1 := StrToFloat(edtTela.Text);
  Operacao := '/';
  edtTela.Clear;
end;

procedure TForm1.btnIgualClick(Sender: TObject);
var
  Resultado: Double;
begin
  Numero2 := StrToFloat(edtTela.Text);
  case Operacao of
   '+': Resultado:= Numero1 + Numero2;
   '-': Resultado:= Numero1 - Numero2;
   '*': Resultado:= Numero1 * Numero2;
   '/':
   begin
     if Numero2 <> 0 then
        Resultado:= Numero1 / Numero2
     else
     begin
       ShowMessage('Não é possivel dividir por zero');
       Exit;
   end;

  end;

end;
  edtTela.Text := FloatToStr(Resultado);
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  edtTela.Clear;
end;

procedure TForm1.btnMaisClick(Sender: TObject);
begin
  Numero1:= StrToFloat(edtTela.Text);
  Operacao := '+';
  edtTela.Clear;
end;

procedure TForm1.btnMenosClick(Sender: TObject);
begin
  Numero1 := StrToFloat(edtTela.Text);
  Operacao := '-';
  edtTela.Clear;

end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin
  Numero1 := StrToFloat(edtTela.Text);
  Operacao := '*';
  edtTela.Clear;
end;

end.


unit KOMUS_ZP_CHUNOSOV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Buttons, pngimage, ExtCtrls, qform, tabs, Grids;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Editkop1: TEdit;
    Editkop2: TEdit;
    Editknp1: TEdit;
    Editknp2: TEdit;
    Editup1: TEdit;
    Editup2: TEdit;
    Editkak1: TEdit;
    Editkak2: TEdit;
    Editura11: TEdit;
    Editura12: TEdit;
    Editura21: TEdit;
    Editura22: TEdit;
    Editura31: TEdit;
    Editura32: TEdit;
    rezult: TLabel;
    rezultat: TButton;
    shtrafff: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    shtraf: TEdit;
    Label10: TLabel;
    Image1: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    SpeedButton4: TSpeedButton;
    podpis1: TLabel;
    podpis2: TLabel;
    podpis3: TLabel;
    podpis4: TLabel;
    podpis5: TLabel;
    podpis6: TLabel;
    podpis7: TLabel;
    koef_kop: TLabel;
    koef_knp: TLabel;
    koef_up: TLabel;
    koef_kach: TLabel;
    koef_ura1: TLabel;
    koef_ura2: TLabel;
    koef_ura3: TLabel;
    ButtonToTabs: TButton;
    Label11: TLabel;
    Editvdt1: TEdit;
    Editvdt2: TEdit;
    Label12: TLabel;
    koef_vdt: TLabel;
    gsm: TEdit;
    Label13: TLabel;
    TAX: TCheckBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure rezultatClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ButtonToTabsClick(Sender: TObject);
    procedure TAXClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x1,rez,z,y:real;
  str,str2: string;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
x1:=18000;
Shape1.Brush.Color:=clLime;
Shape2.Brush.Color:=ClRed;
Shape3.Brush.Color:=ClRed;
Form3.SG.Cells[2,1]:='Специалист';
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
x1:=20700;
Shape1.Brush.Color:=ClRed;
Shape2.Brush.Color:=clLime;
Shape3.Brush.Color:=ClRed;
Form3.SG.Cells[2,1]:='Профессионал';
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
x1:=23100;
Shape1.Brush.Color:=ClRed;
Shape2.Brush.Color:=ClRed;
Shape3.Brush.Color:=clLime;
Form3.SG.Cells[2,1]:='Эксперт';
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
qform.Form2.Show;
end;

procedure TForm1.ButtonToTabsClick(Sender: TObject);     /// заполнение таблицы введёнными данными
begin
tabs.Form3.show;

//1
Form3.SG.Cells[1,2]:=Form1.Editkop1.Text;
Form3.SG.Cells[2,2]:=Form1.Editkop2.Text;
str:=Copy(Form1.koef_kop.Caption, 1, Pos(' ',Form1.koef_kop.Caption)-1);
Form3.SG.Cells[3,2]:=str;
str:=Copy(Form1.koef_kop.Caption, Pos(' ',Form1.koef_kop.Caption)+2, Length(Form1.koef_kop.Caption));
Form3.SG.Cells[4,2]:=str;
//1

//2
Form3.SG.Cells[1,3]:=Form1.Editknp1.Text;
Form3.SG.Cells[2,3]:=Form1.Editknp2.Text;
str:=Copy(Form1.koef_knp.Caption, 1, Pos(' ',Form1.koef_knp.Caption)-1);
Form3.SG.Cells[3,3]:=str;
str:=Copy(Form1.koef_knp.Caption, Pos(' ',Form1.koef_knp.Caption)+2, Length(Form1.koef_knp.Caption));
Form3.SG.Cells[4,3]:=str;
//2

//3
Form3.SG.Cells[1,4]:=Form1.Editup1.Text;
Form3.SG.Cells[2,4]:=Form1.Editup2.Text;
str:=Copy(Form1.koef_up.Caption, 1, Pos(' ',Form1.koef_up.Caption)-1);
Form3.SG.Cells[3,4]:=str;
str:=Copy(Form1.koef_up.Caption, Pos(' ',Form1.koef_up.Caption)+2, Length(Form1.koef_up.Caption));
Form3.SG.Cells[4,4]:=str;
//3

//4
Form3.SG.Cells[1,5]:=Form1.Editkak1.Text;
Form3.SG.Cells[2,5]:=Form1.Editkak2.Text;
str:=Copy(Form1.koef_kach.Caption, 1, Pos(' ',Form1.koef_kach.Caption)-1);
Form3.SG.Cells[3,5]:=str;
str:=Copy(Form1.koef_kach.Caption, Pos(' ',Form1.koef_kach.Caption)+2, Length(Form1.koef_kach.Caption));
Form3.SG.Cells[4,5]:=str;
//4

//5
Form3.SG.Cells[1,6]:=Form1.Editura11.Text;
Form3.SG.Cells[2,6]:=Form1.Editura12.Text;
str:=Copy(Form1.koef_ura1.Caption, 1, Pos(' ',Form1.koef_ura1.Caption)-1);
Form3.SG.Cells[3,6]:=str;
str:=Copy(Form1.koef_ura1.Caption, Pos(' ',Form1.koef_ura1.Caption)+2, Length(Form1.koef_ura1.Caption));
Form3.SG.Cells[4,6]:=str;
//5

//6
Form3.SG.Cells[1,7]:=Form1.Editura21.Text;
Form3.SG.Cells[2,7]:=Form1.Editura22.Text;
str:=Copy(Form1.koef_ura2.Caption, 1, Pos(' ',Form1.koef_ura2.Caption)-1);
Form3.SG.Cells[3,7]:=str;
str:=Copy(Form1.koef_ura2.Caption, Pos(' ',Form1.koef_ura2.Caption)+2, Length(Form1.koef_ura2.Caption));
Form3.SG.Cells[4,7]:=str;
//6

//7
Form3.SG.Cells[1,8]:=Form1.Editura31.Text;
Form3.SG.Cells[2,8]:=Form1.Editura32.Text;
str:=Copy(Form1.koef_ura3.Caption, 1, Pos(' ',Form1.koef_ura3.Caption)-1);
Form3.SG.Cells[3,8]:=str;
str:=Copy(Form1.koef_ura3.Caption, Pos(' ',Form1.koef_ura3.Caption)+2, Length(Form1.koef_ura3.Caption));
Form3.SG.Cells[4,8]:=str;
//7

//8
Form3.SG.Cells[1,9]:=Form1.Editvdt1.Text;
Form3.SG.Cells[2,9]:=Form1.Editvdt2.Text;
str:=Copy(Form1.koef_vdt.Caption, 1, Pos(' ',Form1.koef_vdt.Caption)-1);
Form3.SG.Cells[3,9]:=str;
str:=Copy(Form1.koef_vdt.Caption, Pos(' ',Form1.koef_vdt.Caption)+2, Length(Form1.koef_vdt.Caption));
Form3.SG.Cells[4,9]:=str;
//8

Form3.SG.Cells[3,1]:=Form1.rezult.Caption;
end;

procedure TForm1.TAXClick(Sender: TObject);     // При нажатии на чек бокс вкл и откл налог
begin
if TAX.Checked=true then
begin
TAX.Caption:='Не вычитать налог';
rezult.Caption:=str2;
end
else
begin
TAX.Caption:='Вычесть налог';
rezult.Caption:=str;
end;

end;

procedure TForm1.rezultatClick(Sender: TObject);
begin
// KOP<
z:=StrToFloat(Editkop1.Text);
y:=StrToFloat(Editkop2.Text);
z:=(y*100)/z;
if z<100 then koef_kop.Font.Color:=clRed else koef_kop.Font.Color:=clBlack;
if z<80 then  str:=FloatToStr(0); ///Memo1.Lines[0]:=FloatToStr(0);
if (80<=z) and (z<=95) then str:=FloatToStr(1+((z/100)-1)*2.5);
if (95<z) and (z<=105) then str:=FloatToStr(z/100);
if (105<z) and (z<=120) then str:=FloatToStr(1+((z/100)-1)*3.5);
if 120<z then str:=FloatToStr(1+((z/100)-1)*5);

If 0<Pos(',',str) then Delete(str,Pos(',',str)+3,Length(str));  // проверка количества знаков после запятой
koef_kop.Caption:=str;
// >KOP

// <KNP
z:=StrToFloat(Editknp2.Text)-StrToFloat(Editknp1.Text);
if z<0 then koef_knp.Font.Color:=clRed else koef_knp.Font.Color:=clBlack;
if z<=-3 then koef_knp.Caption:=FloatToStr(0);
if z=-2 then koef_knp.Caption:=FloatToStr(0.5);
if z=-1 then koef_knp.Caption:=FloatToStr(0.8);
if z=0 then koef_knp.Caption:=FloatToStr(1);
if z=1 then koef_knp.Caption:=FloatToStr(1.05);
if z=2 then koef_knp.Caption:=FloatToStr(1.15);
if z=3 then koef_knp.Caption:=FloatToStr(1.3);
if z=4 then koef_knp.Caption:=FloatToStr(1.45);
if z=5 then koef_knp.Caption:=FloatToStr(1.6);
if z=6 then koef_knp.Caption:=FloatToStr(1.75);
if z=7 then koef_knp.Caption:=FloatToStr(1.9);
if 8<=z then koef_knp.Caption:=FloatToStr(2.1);

//>KNP

// <UP
z:=(100-(StrToFloat(Editup2.Text)*100)/StrToFloat(Editup1.Text));
if 2<z then
begin
 koef_up.Caption:=FloatToStr(0.1);
 koef_up.Font.Color:=clRed;
end
  else
  begin
  koef_up.Caption:=FloatToStr(0);
  koef_up.Font.Color:=clBlack;
  end;
// >UP

// <KAKCHESTVO
z:=(StrToFloat(Editkak2.Text)-StrToFloat(Editkak1.Text));
y:=StrToFloat(koef_knp.Caption);
if (0<z)and(1<=y) then
begin
koef_kach.Caption:=FloatToStr(1);
koef_kach.Font.Color:=clBlack;
end
 else
 begin
  koef_kach.Caption:=FloatToStr(0);
  koef_kach.Font.Color:=clRed;
 end;
// >KAKCHESTVO



// <URA123
///1111
z:=(StrToFloat(Editura12.Text)*100)/StrToFloat(Editura11.Text);
if z<100 then koef_ura1.Font.Color:=clRed else koef_ura1.Font.Color:=clBlack;

if z<80 then
str:=FloatToStr(0);

if (80<=z)and(z<100) then
str:=FloatToStr(1+((((StrToFloat(Editura12.Text)*100)/StrToFloat(Editura11.Text))/100)-1)*5);

if 100<=z then
str:=FloatToStr(((StrToFloat(Editura12.Text)*100)/StrToFloat(Editura11.Text))/100);

If 0<Pos(',',str) then Delete(str,Pos(',',str)+3,Length(str));  // проверка количества знаков после запятой
koef_ura1.Caption:=str;

///1111
///
///2222
z:=(StrToFloat(Editura22.Text)*100)/StrToFloat(Editura21.Text);
if z<100 then koef_ura2.Font.Color:=clRed else koef_ura2.Font.Color:=clBlack;
if z<80 then
str:=FloatToStr(0);

if (80<=z)and(z<100) then
str:=FloatToStr(1+((((StrToFloat(Editura22.Text)*100)/StrToFloat(Editura21.Text))/100)-1)*5);

if 100<=z then
str:=FloatToStr(((StrToFloat(Editura22.Text)*100)/StrToFloat(Editura21.Text))/100);

If 0<Pos(',',str) then Delete(str,Pos(',',str)+3,Length(str));  // проверка количества знаков после запятой
koef_ura2.Caption:=str;
///2222
///
///3333
z:=(StrToFloat(Editura32.Text)*100)/StrToFloat(Editura31.Text);
if z<100 then koef_ura3.Font.Color:=clRed else koef_ura3.Font.Color:=clBlack;
if z<80 then
str:=FloatToStr(0);

if (80<=z)and(z<100) then
str:=FloatToStr(1+((((StrToFloat(Editura32.Text)*100)/StrToFloat(Editura31.Text))/100)-1)*5);

if 100<=z then
str:=FloatToStr(((StrToFloat(Editura32.Text)*100)/StrToFloat(Editura31.Text))/100);

If 0<Pos(',',str) then Delete(str,Pos(',',str)+3,Length(str));  // проверка количества знаков после запятой
koef_ura3.Caption:=str;
///3333
// >URA123
///
/// vdt


if StrToFloat(Editvdt2.Text)<StrToFloat(Editvdt1.Text) then z:=0.0045 else z:=0.045;
koef_vdt.Caption:=FloatToStr(z);

/// /vdt


rez:=x1+ // оклад согласно категории
(x1*(0.6*StrToFloat(koef_kop.Caption)// считается часть соотв обороту
+0.4*StrToFloat(koef_knp.Caption)) //считаетсячасть соотв новым партнерам
*(1-StrToFloat(koef_up.Caption)) //считаем вошёл или нет в ПДЗ
- StrTofloat(shtraf.Text) //вычитаем штрафы
+(((x1*0.4)*0.15)*(StrToFloat(Editkak2.Text)-StrToFloat(Editkak1.Text))*StrToFloat(koef_kach.Caption)) //считаем качественных
+(((2*x1)*0.05*StrToFloat(koef_ura1.Caption)) //считаем РА-1
+((2*x1)*0.05*StrToFloat(koef_ura2.Caption)) //считаем РА-2
+((2*x1)*0.05*StrToFloat(koef_ura3.Caption))) ////считаем РА-3
+StrToFloat(Editvdt2.Text)*StrToFloat(koef_vdt.Caption)) //добавил вдт
+StrToFloat(gsm.Text);// добавляем топливо
y:=(x1*(0.6*StrToFloat(koef_kop.Caption)+0.4*StrToFloat(koef_knp.Caption))*(0-StrToFloat(koef_up.Caption)))*(-1);///3 //считаем что вычитаем из ПДЗ
///
koef_kop.Caption:=koef_kop.Caption+'  '+FloatToStr(x1*(0.6*StrToFloat(koef_kop.Caption)));///1
koef_knp.Caption:=koef_knp.Caption+'  '+FloatToStr(x1*(0.4*StrToFloat(koef_knp.Caption))); ///2
koef_up.Caption:=koef_up.Caption+'  '+FloatToStr(y);///3
koef_kach.Caption:=koef_kach.Caption+'  '+FloatToStr( (((x1*0.4)*0.15)*(StrToFloat(Editkak2.Text)-StrToFloat(Editkak1.Text))*StrToFloat(koef_kach.Caption)) );//4
koef_ura1.Caption:=koef_ura1.Caption+'  '+FloatToStr((2*x1)*0.05*StrToFloat(koef_ura1.Caption));
koef_ura2.Caption:=koef_ura2.Caption+'  '+FloatToStr((2*x1)*0.05*StrToFloat(koef_ura2.Caption));
koef_ura3.Caption:=koef_ura3.Caption+'  '+FloatToStr((2*x1)*0.05*StrToFloat(koef_ura3.Caption));
koef_vdt.Caption:=koef_vdt.Caption+'  '+FloatToStr(StrToFloat(Editvdt2.Text)*StrToFloat(koef_vdt.Caption));

str:=FloatToStr(rez);
str2:=FloatToStr(rez*0.87);  //каунтим налог
If 0<Pos(',',str2) then Delete(str2,Pos(',',str2)+3,Length(str2));  // проверка количества знаков после запятой
If 0<Pos(',',str) then Delete(str,Pos(',',str)+3,Length(str));  // проверка количества знаков после запятой
rezult.Caption:=str;

end;

end.

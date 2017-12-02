unit UnitForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMainForm = class(TForm)
    buttonTownsFileChoose: TButton;
    buttonCountriesFileChoose: TButton;
    labelTownsFileChoose: TLabel;
    labelCountriesFileChoose: TLabel;
    labelRequestInfo: TLabel;
    textboxRequestField: TEdit;
    buttonGeneralInfoFileChoose: TButton;
    labelGeneralInfoFileChoose: TLabel;
    buttonGeneralInfoWrite: TButton;
    buttonRequestInfoFind: TButton;
    memoRequestInfo: TMemo;
    procedure buttonRequestInfoFindClick(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure buttonGeneralInfoFileChooseClick(Sender: TObject);
    procedure buttonTownsFileChooseClick(Sender: TObject);
    procedure buttonCountriesFileChooseClick(Sender: TObject);

  private
    procedure ChangeEnable(enable: Boolean);
    procedure ShowAll(secondFile: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  townsFileName, countriesFileName, generalInfoFileName: string;
  openFileDialog: TOpenDialog;

implementation

{$R *.dfm}



// ���������/������������ ��������� ������ � ������
procedure TMainForm.ChangeEnable(enable: Boolean);
begin
  // �������� ������ ���������� �� �������
  MainForm.labelRequestInfo.Enabled := enable;
  MainForm.textboxRequestField.Enabled := enable;
  MainForm.buttonRequestInfoFind.Enabled := enable;
  MainForm.memoRequestInfo.Enabled := enable;
  // �������� ������ ����� ���������� � ����
  MainForm.buttonGeneralInfoFileChoose.Enabled := enable;
  MainForm.labelGeneralInfoFileChoose.Enabled := enable;
  MainForm.buttonGeneralInfoWrite.Enabled := enable;
end;

// ����������� ��������� ������ � ������, ���� ����� ������� � ����� �������
procedure TMainForm.ShowAll(secondFile: string);
begin
  if (secondFile <> '') then
  begin
    ChangeEnable(true);
    MainForm.buttonGeneralInfoWrite.Enabled := false;
  end;
end;

// ����� ����� �������
procedure TMainForm.buttonTownsFileChooseClick(Sender: TObject);
begin
  // �������� ������ ����������� ����
  openFileDialog.Title := '����� ����� �������';
  if openFileDialog.Execute then
    if (openFileDialog.FileName = countriesFileName) then
      ShowMessage('���� ' + openFileDialog.FileName + ' ��� ������ ��� ���� �����')
    else if (openFileDialog.FileName = generalInfoFileName) then
      ShowMessage('���� ' + openFileDialog.FileName + ' ��� ������ ��� ���� ��� ����� ����������')
    else
    begin // ���� ��� ����� �� ������������
      townsFileName := openFileDialog.FileName;
      MainForm.labelTownsFileChoose.Caption := townsFileName;
      ShowAll(countriesFileName);
    end;
end;

// ����� ����� �����
procedure TMainForm.buttonCountriesFileChooseClick(Sender: TObject);
begin
  // �������� ������ ����������� ����
  openFileDialog.Title := '����� ����� �����';
  if openFileDialog.Execute then
    if (openFileDialog.FileName = townsFileName) then
      ShowMessage('���� ' + openFileDialog.FileName + ' ��� ������ ��� ���� �������')
    else if (openFileDialog.FileName = generalInfoFileName) then
      ShowMessage('���� ' + openFileDialog.FileName + ' ��� ������ ��� ���� ��� ����� ����������')
    else
    begin // ���� ��� ����� �� ������������
      countriesFileName := openFileDialog.FileName;
      MainForm.labelCountriesFileChoose.Caption := countriesFileName;
      ShowAll(townsFileName);
    end;
end;

// ����� ����� ��� ����� ����������
procedure TMainForm.buttonGeneralInfoFileChooseClick(Sender: TObject);
begin
  // �������� ������ ����������� ����
  openFileDialog.Title := '����� ����� ��� ����� ����������';
  if openFileDialog.Execute then
    if (openFileDialog.FileName = townsFileName) then
      ShowMessage('���� ' + openFileDialog.FileName + ' ��� ������ ��� ���� �������')
    else if (openFileDialog.FileName = countriesFileName) then
      ShowMessage('���� ' + openFileDialog.FileName + ' ��� ������ ��� ���� �����')
    else
    begin // ���� ��� ����� �� ������������
      generalInfoFileName := openFileDialog.FileName;
      MainForm.labelGeneralInfoFileChoose.Caption := generalInfoFileName; 
      MainForm.buttonGeneralInfoWrite.Enabled := true;
    end;
end;

procedure TMainForm.buttonRequestInfoFindClick(Sender: TObject);
begin

end;

// ����� �������
procedure TMainForm.FormCreate(Sender: TObject);
begin
  // ������������ ��������� �� ����� � ������ ������
  ChangeEnable(false);
  townsFileName := '';
  countriesFileName := '';
  generalInfoFileName := '';
  // �������� ����������� ���� ������ ������
  openFileDialog := TOpenDialog.Create(self);
  openFileDialog.InitialDir := GetCurrentDir + '\iofiles';
  openFileDialog.Options := [ofReadOnly, ofFileMustExist];
  openFileDialog.Filter := 'txt, csv files|*.txt; *.csv';
end;

end.
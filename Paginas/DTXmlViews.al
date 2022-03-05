page 50145 "DTXMLDataView"
{

    ApplicationArea = All;
    CaptionML = ENU = 'XML Data View', ESP = 'Datos XML';
    PageType = List;
    SourceTable = "DTXmlData";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(AreaCode; Rec.AreaCode)
                {
                    CaptionML = ENU = 'Area code', ESP = 'Código de área';
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    CaptionML = ENU = 'City', ESP = 'Ciudad';
                    ApplicationArea = All;
                }
                field(Company; Rec.Company)
                {
                    CaptionML = ENU = 'Company', ESP = 'Compañia';
                    ApplicationArea = All;
                }
                field(FirstName; Rec.FirstName)
                {
                    CaptionML = ENU = 'First name', ESP = 'Primer nombre';
                    ApplicationArea = All;
                }
                field(LastName; Rec.LastName)
                {
                    CaptionML = ENU = 'Last name', ESP = 'Apellido';
                    ApplicationArea = All;
                }
                field(Phone; Rec.Phone)
                {
                    CaptionML = ENU = 'Phone', ESP = 'Telefono';
                    ApplicationArea = All;
                }
                field(RowID; Rec.RowID)
                {
                    ApplicationArea = All;
                }
                field(State; Rec.State)
                {
                    CaptionML = ENU = 'State', ESP = 'Estado/Municipio';
                    ApplicationArea = All;
                }
                field(StreetName; Rec.StreetName)
                {
                    CaptionML = ENU = 'Street name', ESP = 'Nombre de calle';
                    ApplicationArea = All;
                }
                field(StreetNumber; Rec.StreetNumber)
                {
                    CaptionML = ENU = 'Street number', ESP = 'Número de calle';
                    ApplicationArea = All;
                }
                field(Suffix; Rec.Suffix)
                {
                    CaptionML = ENU = 'Suffix', ESP = 'Sufijo';
                    ApplicationArea = All;
                }
                field(Zip; Rec.Zip)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Clear)
            {
                CaptionML = ENU = 'Clear Data', ESP = 'Borrar Datos';
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    DeleteAll();
                end;
            }
            action(Import)
            {
                CaptionML = ENU = 'Import', ESP = 'Importar Datos';
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                trigger OnAction()
                var
                    Import: Codeunit "XML Data";
                begin
                    Import.Import();

                end;
            }
        }
    }
}
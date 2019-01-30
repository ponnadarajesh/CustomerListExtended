pageextension 50124 MycustomerList extends "Customer List"
{
    trigger OnOpenPage();
    begin
        report.Run(Report::Customers_WordReport);
    end;
}

report 50124 Customers_WordReport
{
    DefaultLayout = Word;
    WordLayout = 'Customers_WordReport.Docx';
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {
            }
        }
    }

}
pageextension 50124 MycustomerList extends "Customer List"
{
    trigger OnOpenPage();
    begin
        //This is report
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
            //This is layout
            column(Name; Name)
            {
            }
        }
    }

}
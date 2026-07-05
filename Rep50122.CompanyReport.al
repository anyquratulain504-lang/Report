report 50122 "Company Report"
{
    ApplicationArea = All;
    Caption = 'Company Report';
    UsageCategory = ReportsAndAnalysis;
    ExcelLayout = 'CompanyReport.xlsx';
    DefaultLayout = Excel;
    dataset
    {
        dataitem(CompanyInformation; "Company Information")
        {
            column(Name; Name)
            {
            }
            column(BankName; "Bank Name")
            {
            }
            column(City; City)
            {
            }
            column(County; County)
            {
            }
            column(BankAccountNo; "Bank Account No.")
            {
            }
            column(Address; Address)
            {
            }
            column(PhoneNo; "Phone No.")
            {
            }
            column(RegistrationNo; "Registration No.")
            {
            }
            column(TaxAreaCode; "Tax Area Code")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}

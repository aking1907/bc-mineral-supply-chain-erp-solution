codeunit 50100 "M3 Update Currency Exch. Rate"
{
    trigger OnRun()
    var
        UpdateCurrencyExchangeRates: Codeunit "Update Currency Exchange Rates";
    begin
        if UpdateCurrencyExchangeRates.Run()then;
    end;
}

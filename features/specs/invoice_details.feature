#language: en

Feature: Open an invoice and check it's details

  Background:
    Given the user is logged into the system
    And is on the Invoice List Page

  @invoice_details
  Scenario: TC003 - Validate invoice details
    When he clicks on the first Invoice Details link on the list
    Then the correct information is presented
    | HotelName       | Rendezvous Hotel                           |
    | InvoiceDate     | 14/01/2018                                 |
    | DueDate         | 15/01/2018                                 |
    | InvoiceNumber   | 110                                        |
    | BookingCode     | 0875                                       |
    | CustomerDetails | JOHNY SMITH\nR2, AVENUE DU MAROC\n123456   |
    | Room            | Superior Double                            |
    | CheckIn         | 14/01/2018                                 |
    | CheckOut        | 15/01/2018                                 |
    | TotalStayCount  | 1                                          |
    | TotalStayAmount | $150                                       |
    | DepositNow      | USD $20.90                                 |
    | Tax&Vat         | USD $19.00                                 | #will fail because the text is USD $19
    | TotalAmount     | USD $209.00                                | #will fail because the text is USD $209.00

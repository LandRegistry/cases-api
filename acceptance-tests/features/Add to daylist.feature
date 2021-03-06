Feature: Add new case to daylist
#US22 - As a customer I need Land Registry to be able to accept my application So that I can protect my interests

#US33 - As a lender I need to be certain that the title number I have quoted in my application is an existing
#live title number So that I am able to send my application to LR and LR is able to receive the application and register my interest

@run_on_DITI_only
Scenario: Add a new case to the daylist for a valid title number

Given I have case information
When we have received a digital mortgage application
Then an ABR is returned
And a Title validation code of 1 is returned

@run_on_DITI_only
Scenario: Do not add a new case to the daylist due to invalid title number

Given I have case information
And the title number is invalid
When we have received a digital mortgage application
Then a Title validation code of 3 is returned

@run_on_DITI_only
Scenario: Do not add a new case to the daylist due to a non existent title number

Given I have case information
And the title number does not exist
When we have received a digital mortgage application
Then a Title validation code of 2 is returned


@WIP
Scenario: Try to add a case with a closed title number
Given I have case information
And the title number is closed and not continued
When we have received a digital mortgage application
Then a title closed message is returned
# don't forget DL is updated or not

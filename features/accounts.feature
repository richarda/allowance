Feature: Basic Account Info
  Accounts belong to people and have balances

  Scenario: Show balance
    Given an account exists
    When show the status
    Then I should see the balance
Given("an account exists") do
  @account = FactoryBot.create(:account, account_holder: "E3", description: "test account 2", balance: 2.25)
end

When("show the status") do
  visit "/accounts/#{@account.id}"
end

Then("I should see the balance") do
  expect(page).to have_text("Balance")
  expect(page).to have_text("$2.25")
end

Given "a logged-in user" do
  sign_in
end

When "the user visits the home page" do
  visit("/")
end

Then "the current bagel owner should be displayed" do
  within("#bagel-owner") do
    expect(page).to have_content("Brian")
  end
end


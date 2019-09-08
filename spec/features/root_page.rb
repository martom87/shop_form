require 'rails_helper'

RSpec.describe 'Root', type: :feature do
  scenario 'root page' do
    visit root_path
    expect(page).to have_content('Poroducts')
  end
end
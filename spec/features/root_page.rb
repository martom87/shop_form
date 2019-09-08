require 'rails_helper'
require 'webdrivers/chromedriver'

RSpec.describe 'Root', type: :feature do

  scenario 'root page' do
    visit root_path
    sleep(5)
    expect(page).to have_content('Products')
  end

end
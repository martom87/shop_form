# frozen_string_literal: true

Product.delete_all
30.times do
FactoryBot.create(:product)
end
Setting.create! id: 1,  picture_dimensions: '120x140'


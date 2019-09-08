require 'rails_helper'

RSpec.describe OrderItemsController do

  let(:order_item) {FactoryBot.create(:order_item)}
  let(:changed_quantity) {2}
  let(:incorrect_quantity) {"2"}


  describe 'POST #create' do

    context 'while order_item is created' do
      it 'should increment the OrderItem' do
        #  subject {post :create, :order_item}
        expect {order_item}.to change(OrderItem, :count).by(1)
        allow(controller.request).to receive(:referer)
      end
    end
  end


  describe 'PUT #update' do

    context 'while attributes are correct order_item is updated' do
      it 'should update order_item quantity' do
        order_item.update(quantity: changed_quantity)
        expect(order_item.quantity).to eq (2)
      end
    end

    context 'while attributes are incorrect order_item is not updated' do
      it 'order_item quantity should remain not changed' do
        order_item.update(quantity: incorrect_quantity)
        expect(order_item.quantity).not_to eql("2")
      end
    end

  end

  describe 'DESTROY #destroy' do
    context 'while order_item is destroyed' do
      it 'removes order_item from database' do
        order_item.destroy
        expect(OrderItem.all).not_to include order_item
      end
    end
  end

end

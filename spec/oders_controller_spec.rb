require 'rails_helper'
require "spec_helper"

describe OrdersController, :type => :controller do
    describe "GET #show" do
        before :each do
          Order.create(user_id: '1')
          sign_in
        end
        it "should post new test order" do
            get :show, user_id: '1'
            expect(response).to be_truthy
        end
    end
end

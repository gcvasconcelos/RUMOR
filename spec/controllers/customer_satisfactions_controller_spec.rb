require 'rails_helper'


RSpec.describe CustomerSatisfactionsController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }


  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      CustomerSatisfaction.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      customer_satisfaction = CustomerSatisfaction.create! valid_attributes
      get :show, params: {id: customer_satisfaction.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      customer_satisfaction = CustomerSatisfaction.create! valid_attributes
      get :edit, params: {id: customer_satisfaction.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new CustomerSatisfaction" do
        expect {
          post :create, params: {customer_satisfaction: valid_attributes}, session: valid_session
        }.to change(CustomerSatisfaction, :count).by(1)
      end

      it "redirects to the created customer_satisfaction" do
        post :create, params: {customer_satisfaction: valid_attributes}, session: valid_session
        expect(response).to redirect_to(CustomerSatisfaction.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {customer_satisfaction: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested customer_satisfaction" do
        customer_satisfaction = CustomerSatisfaction.create! valid_attributes
        put :update, params: {id: customer_satisfaction.to_param, customer_satisfaction: new_attributes}, session: valid_session
        customer_satisfaction.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the customer_satisfaction" do
        customer_satisfaction = CustomerSatisfaction.create! valid_attributes
        put :update, params: {id: customer_satisfaction.to_param, customer_satisfaction: valid_attributes}, session: valid_session
        expect(response).to redirect_to(customer_satisfaction)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        customer_satisfaction = CustomerSatisfaction.create! valid_attributes
        put :update, params: {id: customer_satisfaction.to_param, customer_satisfaction: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested customer_satisfaction" do
      customer_satisfaction = CustomerSatisfaction.create! valid_attributes
      expect {
        delete :destroy, params: {id: customer_satisfaction.to_param}, session: valid_session
      }.to change(CustomerSatisfaction, :count).by(-1)
    end

    it "redirects to the customer_satisfactions list" do
      customer_satisfaction = CustomerSatisfaction.create! valid_attributes
      delete :destroy, params: {id: customer_satisfaction.to_param}, session: valid_session
      expect(response).to redirect_to(customer_satisfactions_url)
    end
  end

end

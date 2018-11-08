require 'rails_helper'

RSpec.describe MovieController, type: :controller do
  render_views
	context "when get #index" do
		it 'return success ' do 
			get :index
			expect(response).to be_successful
      expect(response.body).to include "Salut, tu veux trouver le nom d'un film?"
    end
  end

  context "when get #show" do
		it 'return success if good params' do 
			get :show,params: { anything: { name: "TRON" }}
			expect(response).to be_successful
      expect(response.body).to include "As Kevin Flynn searches for proof that he invented a hit video game, he is "
    end
    it 'redirect if no match' do 
			get :show,params: { anything: { name: "aaaaaaaaaaaaaaaaaa" }}
      expect(flash[:error]).to be_present
			expect(response).to redirect_to '/'
    end
  end
end

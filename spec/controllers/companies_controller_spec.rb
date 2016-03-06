require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do
  let!(:company) { create(:company) }

  describe '#index' do
    let!(:companies) { create_list(:company, 6) }
    before { get :index }

    it { expect(assigns(:companies).count).to eq 7 }
  end
end

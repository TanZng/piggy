require 'rails_helper'

RSpec.describe FinancialObjects::ExpensesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/expenses').to route_to('financial_objects/expenses#index')
    end

    it 'routes to #new' do
      expect(get: '/expenses/new').to route_to('financial_objects/expenses#new')
    end

    it 'routes to #show' do
      expect(get: '/expenses/1').to route_to('financial_objects/expenses#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/expenses/1/edit').to route_to('financial_objects/expenses#edit', id: '1')
    end


    it 'routes to #create' do
      expect(post: '/expenses').to route_to('financial_objects/expenses#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/expenses/1').to route_to('financial_objects/expenses#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/expenses/1').to route_to('financial_objects/expenses#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/expenses/1').to route_to('financial_objects/expenses#destroy', id: '1')
    end
  end
end

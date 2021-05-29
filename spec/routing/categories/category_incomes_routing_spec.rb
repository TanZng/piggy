require 'rails_helper'

RSpec.describe Categories::CategoryIncomesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/categories/incomes').to route_to('categories/category_incomes#index')
    end

    it 'routes to #new' do
      expect(get: '/categories/incomes/new').to route_to('categories/category_incomes#new')
    end

    it 'routes to #show' do
      expect(get: '/categories/incomes/1').to route_to('categories/category_incomes#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/categories/incomes/1/edit').to route_to('categories/category_incomes#edit', id: '1')
    end


    it 'routes to #create' do
      expect(post: '/categories/incomes').to route_to('categories/category_incomes#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/categories/incomes/1').to route_to('categories/category_incomes#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/categories/incomes/1').to route_to('categories/category_incomes#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/categories/incomes/1').to route_to('categories/category_incomes#destroy', id: '1')
    end
  end
end

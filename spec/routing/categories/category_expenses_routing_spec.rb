require 'rails_helper'

RSpec.describe Categories::CategoryExpensesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/categories/expenses').to route_to('categories/category_expenses#index')
    end

    it 'routes to #new' do
      expect(get: '/categories/expenses/new').to route_to('categories/category_expenses#new')
    end

    it 'routes to #show' do
      expect(get: '/categories/expenses/1').to route_to('categories/category_expenses#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/categories/expenses/1/edit').to route_to('categories/category_expenses#edit', id: '1')
    end


    it 'routes to #create' do
      expect(post: '/categories/expenses').to route_to('categories/category_expenses#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/categories/expenses/1').to route_to('categories/category_expenses#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/categories/expenses/1').to route_to('categories/category_expenses#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/categories/expenses/1').to route_to('categories/category_expenses#destroy', id: '1')
    end
  end
end

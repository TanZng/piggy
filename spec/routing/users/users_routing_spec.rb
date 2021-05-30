require 'rails_helper'

RSpec.describe Users::WalletsController, type: :routing do
  describe 'routing' do
    it 'routes to #sign_in' do
      expect(get: '/login').to route_to('users/sessions#new')
    end

    it 'routes to #sign_in' do
      expect(post: '/login').to route_to('users/sessions#create')
    end

    it 'routes to #destroy' do
      expect(delete: '/logout').to route_to('users/sessions#destroy')
    end

    it 'routes to #sign_up' do
      expect(get: '/register').to route_to('users/registrations#new')
    end

    it 'routes to #edit user' do
      expect(get: '/edit').to route_to('users/registrations#edit')
    end
  end
end

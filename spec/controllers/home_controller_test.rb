require 'rails_helper'

describe HomeController do
  context 'rate limit not reached' do
    describe '#index' do
      it 'should return the 200 response' do
        expected_response = { "message" => 'ok' }
        get :index
        expect(JSON.parse(response.body)).to eq(expected_response)
        expect(response.code).to eq('200')
      end
    end
  end

  context 'rate limit reached' do
    describe '#index' do
      it 'should return the 429 response' do
        expected_response = { "message" => 'Rate limit exceeded. Try again in 3600 seconds' }
        101.times do
          get :index
        end
        expect(JSON.parse(response.body)).to eq(expected_response)
        expect(response.code).to eq('429')
      end
    end
  end
end

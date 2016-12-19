require 'rails_helper'

RSpec.describe 'Races', type: :request do

  def parsed_response
    JSON.parse(response.body)
  end

  it 'returns 200 response' do
    get '/v1/races'

    expect(response.status).to eq(200)
    expect(parsed_response).to eq([])
  end

  it 'returns an array of races' do
    FactoryGirl.create :human
    FactoryGirl.create :elf

    get '/v1/races'

    expect(response.status).to eq(200)
    expect(parsed_response.first["name"]).to eq("Human")
    expect(parsed_response.length).to eq(2)
  end

end

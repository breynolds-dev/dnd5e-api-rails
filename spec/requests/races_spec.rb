require 'rails_helper'

RSpec.describe 'Races', type: :request do
  let(:load_races) do
    FactoryGirl.create :dragonborn
    FactoryGirl.create :human
    FactoryGirl.create :high_elf
    FactoryGirl.create :dark_elf
  end

  let(:dragonborn) { FactoryGirl.create :dragonborn }
  let(:draconic_ancestry) { FactoryGirl.create :draconic_ancestry }
  let(:draconic) { FactoryGirl.create :draconic }
  let(:athletics) { FactoryGirl.create :athletics }
  let(:deception) { FactoryGirl.create :deception }
  let(:history) { FactoryGirl.create :history }
  let(:dragonborn_data) do
    dragonborn.traits << draconic_ancestry
    dragonborn.languages << draconic
    dragonborn.skills << athletics
    dragonborn.skills << deception
    dragonborn.skills << history
    FactoryGirl.create(:dragonborn_strength, race_id: dragonborn.id)
    FactoryGirl.create(:dragonborn_charisma, race_id: dragonborn.id)
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/races' do
    it 'returns 200 response' do
      get '/v1/races'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of race names and links' do
      load_races
      get '/v1/races'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['name']}).to eq(['Dragonborn', 'Human', 'High Elf', 'Dark Elf'])
      expect(parsed_response.first['url']).to include('/v1/races/dragonborn')
      expect(parsed_response.length).to eq(4)
    end
  end

  describe 'GET /v1/races/:race' do
    it 'returns a 404 with an invalid request' do
      load_races
      get '/v1/races/dark-elf'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to include('/v1/races/dark-elf')
    end

    it 'returns the correct object with a 200 response' do
      load_races
      get '/v1/races/dragonborn'

      expect(response.status).to eq(200)
      expect(parsed_response.first['name']).to eq('Dragonborn')
    end

    it 'returns a collection of racial ability bonuses' do
      dragonborn_data
      get '/v1/races/dragonborn'

      expect(response.status).to eq(200)
      racial_bonuses = parsed_response.first['racial_bonus']
      expect(racial_bonuses.length).to eq(2)
      expect(racial_bonuses.map{|abil| abil['name']}).to eq(['Strength', 'Charisma'])
    end

    it 'returns a collection of traits' do
      dragonborn_data
      get '/v1/races/dragonborn'

      expect(response.status).to eq(200)
      traits = parsed_response.first['traits']
      expect(traits.length).to eq(1)
      expect(traits.map{|trait| trait['name']}).to eq(['Draconic Ancestry'])
    end

    it 'returns a collection of languages' do
      dragonborn_data
      get '/v1/races/dragonborn'

      expect(response.status).to eq(200)
      languages = parsed_response.first['languages']
      expect(languages.length).to eq(1)
      expect(languages.map{|language| language['name']}).to eq(['Draconic'])
    end

    it 'returns a collection of skills' do
      dragonborn_data
      get '/v1/races/dragonborn'

      expect(response.status).to eq(200)
      skills = parsed_response.first['skills']
      expect(skills.length).to eq(3)
      expect(skills.map{|skill| skill['name']}).to eq(['Athletics', 'Deception', 'History'])
    end

    it 'returns an array of subraces if they exist' do
      load_races
      get '/v1/races/elf'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subrace']}).to eq(['High Elf', 'Dark Elf'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/races/:race/:subrace' do
    it 'returns the correct object when using friendly urls' do
      load_races
      get '/v1/races/elf/high-elf'
      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Elf')
      expect(parsed_response['subrace']).to eq('High Elf')
    end

    it 'returns a 404 with an invalid request' do
      load_races
      get '/v1/races/elf/wood-elf'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to include('/v1/races/elf/wood-elf')
    end
  end
end

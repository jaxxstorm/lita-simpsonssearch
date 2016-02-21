require "spec_helper"

describe Lita::Handlers::Simpsonssearch, lita_handler: true do
 
  it { is_expected.to route_command('simpsons search testing').to(:simpsons_search) }
  it { is_expected.to route_command('simpsons me testing').to(:simpsons_search) }
  
  attr_accessor :img_url

  before do
    @img_url = 'https://frinkiac.com/meme/'
  end

  it 'will return a random meme' do
    send_command 'simpsons search testing'
    expect(replies.last).to include(@img_url)
  end

end

require File.expand_path '../spec_helper.rb', __FILE__

describe "anynines sinatra example" do
  it "should allow accessing the home page" do
    get '/'
    expect(last_response.status).to eq 200
  end

  it "recognize one true king" do
    get '/devops'
    expect(last_response.body).to match("rule the world")
  end

  it "should display hello world" do
    get '/'
    expect(last_response.body).to match("Hello world")
  end
end

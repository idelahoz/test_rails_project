require "rails_helper"

RSpec.describe PostsController do
  describe "GET index" do
    it "assigns @post" do
      post = Post.create(title: 'test', body: 'test')
      get :index
      expect(assigns(:posts)).to eq([post])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
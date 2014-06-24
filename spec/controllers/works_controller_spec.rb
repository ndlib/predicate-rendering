require "spec_helper"
require 'hydramata/work/linters/implement_entity_interface_matcher'

describe WorksController do

  context "GET #show" do
    render_views

    it "should assign a work object" do
      get(:show)
      expect(assigns(:work)).to implement_entity_interface
    end
    it "renders the show template" do
      get(:show)
      expect(response).to render_template("show")
    end
    
  end
  
end

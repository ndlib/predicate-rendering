require "spec_helper"
require 'hydramata/work/linters/implement_entity_interface_matcher'

describe WorksController do

  context "GET #show" do

    it "should assign a work object" do
      get(:show)
      expect(assigns(:work)).to implement_entity_interface
    end
    
  end
  
end
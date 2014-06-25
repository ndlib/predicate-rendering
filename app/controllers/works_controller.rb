require 'hydramata/work/conversions/presenter'
require 'hydramata/work/conversions/property'

class WorksController < ApplicationController
  include Hydramata::Work::Conversions
  def show
    work = Hydramata::Work::Entity.new(work_type: 'article') do |w|
      w.properties << Property("http://purl.org/dc/terms/title", "Adventures in Dublin Core", "Metadata Rox!")
    end
    binding.pry
    @work = Presenter(work)
  end
end

require 'hydramata/works/conversions/presenter'
require 'hydramata/works/conversions/property'

class WorksController < ApplicationController
  include Hydramata::Works::Conversions
  def show
    work = Hydramata::Works::Work.new(work_type: 'article') do |w|
      w.properties << Property("http://purl.org/dc/terms/title", "Adventures in Dublin Core", "Metadata Rox!")
    end
    @work = Presenter(work)
  end

  def new
    work = Hydramata::Works::Work.new(work_type: 'article')
    presenter = Hydramata::Works::WorkPresenter.new(work: work, presentation_context: :new)
    @work = Hydramata::Works::WorkForm.new(presenter)
  end
end

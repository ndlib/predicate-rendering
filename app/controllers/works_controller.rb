class WorksController < ApplicationController
  def show
    @work = Hydramata::Work::Entity.new(work_type: 'article')
  end

  def new
  end
end

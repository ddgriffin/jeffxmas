class StaticPagesController < ApplicationController
  # GET /reasons
  # GET /reasons.json
  def survivalkit

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reasons }
    end
  end
end

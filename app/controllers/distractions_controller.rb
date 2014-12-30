class DistractionsController < ApplicationController
  # GET /distractions
  # GET /distractions.json
  def index
    @distractions = Distraction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @distractions }
    end
  end

  def distractme
    @distractions = Distraction.limit(1).order("RANDOM()")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reasons }
    end
  end

  # GET /distractions/1
  # GET /distractions/1.json
  def show
    @distraction = Distraction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @distraction }
    end
  end

  # GET /distractions/new
  # GET /distractions/new.json
  def new
    @distraction = Distraction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @distraction }
    end
  end

  # GET /distractions/1/edit
  def edit
    @distraction = Distraction.find(params[:id])
  end

  # POST /distractions
  # POST /distractions.json
  def create
    @distraction = Distraction.new(params[:distraction])

    respond_to do |format|
      if @distraction.save
        format.html { redirect_to @distraction, notice: 'Distraction was successfully created.' }
        format.json { render json: @distraction, status: :created, location: @distraction }
      else
        format.html { render action: "new" }
        format.json { render json: @distraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /distractions/1
  # PUT /distractions/1.json
  def update
    @distraction = Distraction.find(params[:id])

    respond_to do |format|
      if @distraction.update_attributes(params[:distraction])
        format.html { redirect_to @distraction, notice: 'Distraction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @distraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distractions/1
  # DELETE /distractions/1.json
  def destroy
    @distraction = Distraction.find(params[:id])
    @distraction.destroy

    respond_to do |format|
      format.html { redirect_to distractions_url }
      format.json { head :no_content }
    end
  end
end

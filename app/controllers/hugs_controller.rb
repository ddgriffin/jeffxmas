class HugsController < ApplicationController
  # GET /hugs
  # GET /hugs.json
  def index
    @hugs = Hug.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hugs }
    end
  end

  # GET /hugs/1
  # GET /hugs/1.json
  def show
    @hug = Hug.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hug }
    end
  end

  # GET /hugs/new
  # GET /hugs/new.json
  def new
    @hug = Hug.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hug }
    end
  end

  # GET /hugs/1/edit
  def edit
    @hug = Hug.find(params[:id])
  end

  # POST /hugs
  # POST /hugs.json
  def create
    @hug = Hug.new(params[:hug])

    if @hug.save && @hug.deliver
      redirect_to reasons_path, :notice => "Hugs incoming, as soon as I can! Till then, hang tight and remember: you're the coolest!"
    else
      raise
    end

  rescue
    error_msg = " "
    @hug.errors.each do |field, msg|
      error_msg << "<br/>"
      error_msg << msg
    end
    redirect_to :back, :notice => "Oh snaggles, that didn't work. Check it out and try again: #{error_msg}" and return
  end

  # PUT /hugs/1
  # PUT /hugs/1.json
  def update
    @hug = Hug.find(params[:id])

    respond_to do |format|
      if @hug.update_attributes(params[:hug])
        format.html { redirect_to @hug, notice: 'Hug was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hugs/1
  # DELETE /hugs/1.json
  def destroy
    @hug = Hug.find(params[:id])
    @hug.destroy

    respond_to do |format|
      format.html { redirect_to hugs_url }
      format.json { head :no_content }
    end
  end
end

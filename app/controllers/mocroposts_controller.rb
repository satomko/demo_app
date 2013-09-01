class MocropostsController < ApplicationController
  # GET /mocroposts
  # GET /mocroposts.json
  def index
    @mocroposts = Mocropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mocroposts }
    end
  end

  # GET /mocroposts/1
  # GET /mocroposts/1.json
  def show
    @mocropost = Mocropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mocropost }
    end
  end

  # GET /mocroposts/new
  # GET /mocroposts/new.json
  def new
    @mocropost = Mocropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mocropost }
    end
  end

  # GET /mocroposts/1/edit
  def edit
    @mocropost = Mocropost.find(params[:id])
  end

  # POST /mocroposts
  # POST /mocroposts.json
  def create
    @mocropost = Mocropost.new(params[:mocropost])

    respond_to do |format|
      if @mocropost.save
        format.html { redirect_to @mocropost, notice: 'Mocropost was successfully created.' }
        format.json { render json: @mocropost, status: :created, location: @mocropost }
      else
        format.html { render action: "new" }
        format.json { render json: @mocropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mocroposts/1
  # PUT /mocroposts/1.json
  def update
    @mocropost = Mocropost.find(params[:id])

    respond_to do |format|
      if @mocropost.update_attributes(params[:mocropost])
        format.html { redirect_to @mocropost, notice: 'Mocropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mocropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mocroposts/1
  # DELETE /mocroposts/1.json
  def destroy
    @mocropost = Mocropost.find(params[:id])
    @mocropost.destroy

    respond_to do |format|
      format.html { redirect_to mocroposts_url }
      format.json { head :no_content }
    end
  end
end

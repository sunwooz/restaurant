class BetasignupsController < ApplicationController
  # GET /betasignups
  # GET /betasignups.json
  def index
    @betasignups = Betasignup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @betasignups }
    end
  end

  # GET /betasignups/1
  # GET /betasignups/1.json
  def show
    @betasignup = Betasignup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @betasignup }
    end
  end

  # GET /betasignups/new
  # GET /betasignups/new.json
  def new
    @betasignup = Betasignup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @betasignup }
    end
  end

  # GET /betasignups/1/edit
  def edit
    @betasignup = Betasignup.find(params[:id])
  end

  # POST /betasignups
  # POST /betasignups.json
  def create
    @betasignup = Betasignup.new(params[:betasignup])

    respond_to do |format|
      if @betasignup.save
        BetaMailer.beta_signup(@betasignup).deliver
        format.html { redirect_to @betasignup, notice: 'Betasignup was successfully created.' }
        format.json { render json: @betasignup, status: :created, location: @betasignup }
      else
        format.html { render action: "new" }
        format.json { render json: @betasignup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /betasignups/1
  # PUT /betasignups/1.json
  def update
    @betasignup = Betasignup.find(params[:id])

    respond_to do |format|
      if @betasignup.update_attributes(params[:betasignup])
        format.html { redirect_to @betasignup, notice: 'Betasignup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @betasignup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /betasignups/1
  # DELETE /betasignups/1.json
  def destroy
    @betasignup = Betasignup.find(params[:id])
    @betasignup.destroy

    respond_to do |format|
      format.html { redirect_to betasignups_url }
      format.json { head :no_content }
    end
  end
end

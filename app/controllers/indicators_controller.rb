require 'active_support/inflector'
class IndicatorsController < ApplicationController
  # GET /indicators
  # GET /indicators.json
  def index
    @indicators = Indicator.all(:order => "created_at DESC")
    @pagename = "List and enter indicators"

    respond_to do |format|
      format.html # index.html.erb
      format.rss  #index.rss.builder
      format.json { render json: @indicators }
    end
  end

  def malware
      @indicators = MalwareIndicator.all(:order => "created_at DESC")
      @pagename = "List of malware"

      respond_to do |format|
          format.rss #malware.rss.builder
      end
  end

  def other 
      @indicators = Indicator.where(:type => nil).all(:order => "created_at DESC")
      @pagename = "List of malware"

      respond_to do |format|
          format.rss #other.rss.builder
      end
  end

  # GET /indicators/1
  # GET /indicators/1.json
  def show
    @indicator = Indicator.find(params[:id])
    @pagename = "Indicator details"

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @indicator }
    end
  end

  # GET /indicators/new
  # GET /indicators/new.json
  def new
    @indicator = Indicator.new
    @pagename = "New Indicator(s)"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @indicator }
    end
  end

 # GET /indicators/1/edit
  def edit
    @indicator = Indicator.find(params[:id])
  end

  # POST /indicators
  # POST /indicators.json
  def create
    @anyfailures = false  
    @indicator = Indicator.new(params[:indicator])
    @indicator.content.split("\n").each do |i|
        @tempindicator = Indicator.new()
        @tempindicator.content = i
        @tempindicator.description = @indicator.description
        @tempindicator.analyst = @indicator.analyst
        @tempindicator.case = @indicator.case
        begin
            @tempindicator.save
        rescue 
            flash[:error] = "At least one indicator failed to save."
        end
    end
    flash[:notice] = "Indicators saved successfully." 

    respond_to do |format|
      format.html { redirect_to indicators_path }
    end

  end

  # PUT /indicators/1
  # PUT /indicators/1.json
  def update
    @indicator = Indicator.find(params[:id])

    respond_to do |format|
      if @indicator.update_attributes(params[:indicator])
        format.html { redirect_to @indicator, notice: 'Indicator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @indicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicators/1
  # DELETE /indicators/1.json
  def destroy
    @indicator = Indicator.find(params[:id])
    @indicator.destroy

    respond_to do |format|
      format.html { redirect_to indicators_url }
      format.json { head :no_content }
    end
  end
end

require 'active_support/inflector'
class IndicatorsController < ApplicationController
  # GET /indicators
  # GET /indicators.json
  def index
    @params = {"q" => params[:q] }
    @search = Indicator.search(params[:q])
    @indicators = @search.result.paginate(:page => params[:page], :per_page => params[:results] ||= 50)
    @pagename = "Indicators of Compromise"

    respond_to do |format|
      format.html # index.html.erb
      format.rss  #index.rss.builder
      format.json { render json: IndicatorsDatatable.new(view_context) }
      format.csv #index.csv.erb
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
    if params[:type].nil?
        @indicator = Indicator.new(:privacy_tag_id => Settings::DEFAULT_PRIVACY)
    else
        @indicator = params[:type].constantize.new(:privacy_tag_id => Settings::DEFAULT_PRIVACY)
    end
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
    if params[:type] == "MalwareIndicator"
        @mal = MalwareIndicator.new(params[:indicator])
        @mal.md5sum.split("\n").each do |m|
            @tempmal = MalwareIndicator.new(:content => m.strip,
                                        :md5sum => m.strip,
                                        :ipaddress => @mal.ipaddress,
                                        :analyst => @mal.analyst,
                                        :case => @mal.case,
                                        :alternateid => @mal.alternateid,
                                        :description => @mal.description) 
            if @tempmal.save == false
                @anyfailures = true
                flash[:error] = @tempmal.errors.full_messages.to_sentence
            end
        end
    end

    if params[:type].nil?
        @ind = Indicator.new(params[:indicator])
        @ind.content.split("\n").each do |c|
            @tempind = Indicator.new(:content => c.strip,
                                     :analyst => @ind.analyst,
                                     :case => @ind.case,
                                     :alternateid => @ind.alternateid,
                                     :description => @ind.description,
                                     :privacy_tag_id => @ind.privacy_tag_id,
                                     :type => "Indicator")
                
            if MalwareIndicator.isHash(@tempind.content)
                @tempind.type = "MalwareIndicator"
                @tempind.md5sum = c.strip
            end

            if @tempind.save == false
                @anyfailures = true
                flash[:error] = @tempind.errors.full_messages.to_sentence
            end
        end
    end


    if @anyfailures
    else
        flash[:notice] = "Indicators saved successfully."
    end

    respond_to do |format|
      format.html { redirect_to indicators_path }
    end

  end

  # PUT /indicators/1
  # PUT /indicators/1.json

  def update
    @indicator = Indicator.find(params[:id])
    puts @indicator.type


    respond_to do |format|
      if @indicator.update_attributes(params[:indicator])
        format.html { redirect_to indicators_path, notice: 'Indicator was successfully updated.' }
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

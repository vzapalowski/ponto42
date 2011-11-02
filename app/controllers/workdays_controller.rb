class WorkdaysController < ApplicationController
  # GET /workdays
  # GET /workdays.xml
  def index
    @workdays = Workday.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workdays }
    end
  end

  # GET /workdays/1
  # GET /workdays/1.xml
  def show
    @workday = Workday.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /workdays/new
  # GET /workdays/new.xml
  def new
    @workday = Workday.new
    2.times{ @workday.periods.build }
  end

  # GET /workdays/1/edit
  def edit
    @workday = Workday.find(params[:id])
  end

  # POST /workdays
  # POST /workdays.xml
  def create
    @workday = Workday.new(params[:workday])
    respond_to do |format|
      if @workday.save
        format.html { redirect_to(@workday, :notice => 'Workday was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /workdays/1
  # PUT /workdays/1.xml
  def update
    @workday = Workday.find(params[:id])

    respond_to do |format|
      if @workday.update_attributes(params[:workday])
        format.html { redirect_to(@workday, :notice => 'Workday was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workday.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workdays/1
  # DELETE /workdays/1.xml
  def destroy
    @workday = Workday.find(params[:id])
    @workday.destroy

    respond_to do |format|
      format.html { redirect_to(workdays_url) }
      format.xml  { head :ok }
    end
  end
end

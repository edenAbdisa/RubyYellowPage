class ContactOrgsController < ApplicationController
  before_action :set_contact_org, only: [:show, :edit, :update, :destroy]

  # GET /contact_orgs
  # GET /contact_orgs.json
  def index
    @contact_orgs = ContactOrg.all

  end

  def all
    @contact_orgs = ContactOrg.all

  end

  # GET /contact_orgs/1
  # GET /contact_orgs/1.json
  def show  

     respond_to do |format|
      format.html # show.html.erb 
     end
  end

  # GET /contact_orgs/new
  def new
    @contact_org = ContactOrg.new
  end

  # GET /contact_orgs/1/edit
  def edit  
     
  end

  # POST /contact_orgs
  # POST /contact_orgs.json
  def create
    @contact_org = ContactOrg.new(contact_org_params)

    respond_to do |format|
      if @contact_org.save
        format.html { redirect_to action: "show",:id=>@contact_org.id, notice: 'Contact org was successfully created.' }
        format.json { render :show, status: :created, location: @contact_org }
      else
        format.html { render :new }
        format.json { render json: @contact_org.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_orgs/1
  # PATCH/PUT /contact_orgs/1.json
  def update
    respond_to do |format|
      if @contact_org.update(contact_org_params)
        format.html { redirect_to action: "show",:id=>@contact_org.id, notice: 'Contact org was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_org }
      else
        format.html { render :edit }
        format.json { render json: @contact_org.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_orgs/1
  # DELETE /contact_orgs/1.json
  def destroy
    @contact_org.destroy
    respond_to do |format|
      format.html { redirect_to action: "all", notice: 'Contact org was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_org
      @contact_org = ContactOrg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_org_params
      params.require(:contact_org).permit( :organization_name, :email, :p_number, :brief_description)
    end
end

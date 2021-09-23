class PropertyListsController < ApplicationController
  before_action :set_property_list, only: %i[ show edit update destroy ]

  # GET /property_lists or /property_lists.json
  def index
    @property_lists = PropertyList.all
  end

  # GET /property_lists/1 or /property_lists/1.json
  def show
  end

  # GET /property_lists/new
  def new
    @property_list = PropertyList.new
  end

  # GET /property_lists/1/edit
  def edit
  end

  # POST /property_lists or /property_lists.json
  def create
    @property_list = PropertyList.new(property_list_params)

    respond_to do |format|
      if @property_list.save
        format.html { redirect_to @property_list, notice: "Property list was successfully created." }
        format.json { render :show, status: :created, location: @property_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_lists/1 or /property_lists/1.json
  def update
    respond_to do |format|
      if @property_list.update(property_list_params)
        format.html { redirect_to @property_list, notice: "Property list was successfully updated." }
        format.json { render :show, status: :ok, location: @property_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_lists/1 or /property_lists/1.json
  def destroy
    @property_list.destroy
    respond_to do |format|
      format.html { redirect_to property_lists_url, notice: "Property list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_list
      @property_list = PropertyList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_list_params
      params.require(:property_list).permit(:property, :rent, :age, :address, :remark)
    end
end

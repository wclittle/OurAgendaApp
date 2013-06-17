class ActionItemsController < ApplicationController
  before_action :set_action_item, only: [:show, :edit, :update, :destroy]

  # GET /action_items
  # GET /action_items.json
  def index
    @action_items = ActionItem.all
  end

  # GET /action_items/1
  # GET /action_items/1.json
  def show
  end

  # GET /action_items/new
  def new
    @action_item = ActionItem.new
  end

  # GET /action_items/1/edit
  def edit
  end

  # POST /action_items
  # POST /action_items.json
  def create
    @action_item = ActionItem.new(action_item_params)

    respond_to do |format|
      if @action_item.save
        format.html { redirect_to @action_item, notice: 'Action item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @action_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @action_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_items/1
  # PATCH/PUT /action_items/1.json
  def update
    respond_to do |format|
      if @action_item.update(action_item_params)
        format.html { redirect_to @action_item, notice: 'Action item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @action_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_items/1
  # DELETE /action_items/1.json
  def destroy
    @action_item.destroy
    respond_to do |format|
      format.html { redirect_to action_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_item
      @action_item = ActionItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_item_params
      params.require(:action_item).permit(:title)
    end
end

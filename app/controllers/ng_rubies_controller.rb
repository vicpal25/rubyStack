class NgRubiesController < ApplicationController
  before_action :set_ng_ruby, only: [:show, :edit, :update, :destroy]

  # GET /ng_rubies
  # GET /ng_rubies.json
  def index
    @ng_rubies = NgRuby.all
    respond_to do |format|
      format.html
      format.json{
        render :json => @ng_rubies.to_json
      }
    end
  end

  # GET /ng_rubies/1
  # GET /ng_rubies/1.json
  def show
  end

  # GET /ng_rubies/new
  def new
    @ng_ruby = NgRuby.new
  end

  # GET /ng_rubies/1/edit
  def edit
  end

  # POST /ng_rubies
  # POST /ng_rubies.json
  def create
    @ng_ruby = NgRuby.new(ng_ruby_params)

    respond_to do |format|
      if @ng_ruby.save
        format.html { redirect_to @ng_ruby, notice: 'Ng ruby was successfully created.' }
        format.json { render :show, status: :created, location: @ng_ruby }
      else
        format.html { render :new }
        format.json { render json: @ng_ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ng_rubies/1
  # PATCH/PUT /ng_rubies/1.json
  def update
    respond_to do |format|
      if @ng_ruby.update(ng_ruby_params)
        format.html { redirect_to @ng_ruby, notice: 'Ng ruby was successfully updated.' }
        format.json { render :show, status: :ok, location: @ng_ruby }
      else
        format.html { render :edit }
        format.json { render json: @ng_ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ng_rubies/1
  # DELETE /ng_rubies/1.json
  def destroy
    @ng_ruby.destroy
    respond_to do |format|
      format.html { redirect_to ng_rubies_url, notice: 'Ng ruby was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ng_ruby
      @ng_ruby = NgRuby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ng_ruby_params
      params.require(:ng_ruby).permit(:name)
    end
end

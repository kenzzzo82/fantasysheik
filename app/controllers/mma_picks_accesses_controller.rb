class MmaPicksAccessesController < ApplicationController
  before_action :set_mma_picks_access, only: [:show, :edit, :update, :destroy]
  before_action :set_mma_picks_pool
  before_action :authenticate_user!


  # GET /mma_picks_accesses
  # GET /mma_picks_accesses.json

  # GET /mma_picks_accesses/1
  # GET /mma_picks_accesses/1.json
  def show
  end

  # GET /mma_picks_accesses/new
  def new
    @mma_picks_access = MmaPicksAccess.new
  end

  # GET /mma_picks_accesses/1/edit
  def edit
  end

  # POST /mma_picks_accesses
  # POST /mma_picks_accesses.json
  def create
    @mma_picks_access = MmaPicksAccess.new(mma_picks_access_params)
    @mma_picks_access.pool_id = @mma_picks_pool.id
    @mma_picks_access.user_id = current_user.id


      respond_to do |format|
      if @mma_picks_access.save
        format.html { redirect_to mma_picks_pool_mma_picks_access_url(@mma_picks_pool,@mma_picks_access), notice: 'Mma picks access was successfully created.' }
        format.json { render :show, status: :created, location: @mma_picks_access }
      else
        format.html { render :new }
        format.json { render json: @mma_picks_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mma_picks_accesses/1
  # PATCH/PUT /mma_picks_accesses/1.json
  def update
    respond_to do |format|
      if @mma_picks_access.update(mma_picks_access_params)
        format.html { redirect_to @mma_picks_access, notice: 'Mma picks access was successfully updated.' }
        format.json { render :show, status: :ok, location: @mma_picks_access }
      else
        format.html { render :edit }
        format.json { render json: @mma_picks_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mma_picks_accesses/1
  # DELETE /mma_picks_accesses/1.json
  def destroy
    @mma_picks_access.destroy
    respond_to do |format|
      format.html { redirect_to mma_picks_accesses_url, notice: 'Mma picks access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mma_picks_access
      @mma_picks_access = MmaPicksAccess.find(params[:id])
    end

    def set_mma_picks_pool
      @mma_picks_pool = MmaPicksPool.find(params[:mma_picks_pool_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mma_picks_access_params
      params.fetch(:mma_picks_access, {})
    end
end

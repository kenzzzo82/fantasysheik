class MmaPicksPoolsController < ApplicationController
  before_action :set_mma_picks_pool, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /mma_picks_pools
  # GET /mma_picks_pools.json
  def index
    @mma_picks_pools = MmaPicksPool.all
  end

  # GET /mma_picks_pools/1
  # GET /mma_picks_pools/1.json
  def show
  end

  # GET /mma_picks_pools/new
  def new
    @mma_picks_pool = MmaPicksPool.new
  end

  # GET /mma_picks_pools/1/edit
  def edit
  end

  # POST /mma_picks_pools
  # POST /mma_picks_pools.json
  def create
    @mma_picks_pool = MmaPicksPool.new(mma_picks_pool_params)
    @mma_picks_pool.poolowner = current_user.id

    respond_to do |format|
      if @mma_picks_pool.save
        format.html { redirect_to @mma_picks_pool, notice: 'Mma picks pool was successfully created.' }
        format.json { render :show, status: :created, location: @mma_picks_pool }
      else
        format.html { render :new }
        format.json { render json: @mma_picks_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mma_picks_pools/1
  # PATCH/PUT /mma_picks_pools/1.json
  def update
    respond_to do |format|
      if @mma_picks_pool.update(mma_picks_pool_params)
        format.html { redirect_to @mma_picks_pool, notice: 'Mma picks pool was successfully updated.' }
        format.json { render :show, status: :ok, location: @mma_picks_pool }
      else
        format.html { render :edit }
        format.json { render json: @mma_picks_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mma_picks_pools/1
  # DELETE /mma_picks_pools/1.json
  def destroy
    @mma_picks_pool.destroy
    respond_to do |format|
      format.html { redirect_to mma_picks_pools_url, notice: 'Mma picks pool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mma_picks_pool
      @mma_picks_pool = MmaPicksPool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mma_picks_pool_params
      params.require(:mma_picks_pool).permit(:name, :expires, :poolowner, :userid)
    end
end

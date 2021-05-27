class Users::WalletsController < ApplicationController
  before_action :set_users_wallet, only: %i[ show edit update destroy ]

  # GET /users/wallets or /users/wallets.json
  def index
    @users_wallets = Users::Wallet.all
  end

  # GET /users/wallets/1 or /users/wallets/1.json
  def show
  end

  # GET /users/wallets/new
  def new
    @users_wallet = Users::Wallet.new
  end

  # GET /users/wallets/1/edit
  def edit
  end

  # POST /users/wallets or /users/wallets.json
  def create
    @users_wallet = Users::Wallet.new(users_wallet_params)

    respond_to do |format|
      if @users_wallet.save
        format.html { redirect_to @users_wallet, notice: "Wallet was successfully created." }
        format.json { render :show, status: :created, location: @users_wallet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users_wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/wallets/1 or /users/wallets/1.json
  def update
    respond_to do |format|
      if @users_wallet.update(users_wallet_params)
        format.html { redirect_to @users_wallet, notice: "Wallet was successfully updated." }
        format.json { render :show, status: :ok, location: @users_wallet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @users_wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/wallets/1 or /users/wallets/1.json
  def destroy
    @users_wallet.destroy
    respond_to do |format|
      format.html { redirect_to users_wallets_url, notice: "Wallet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_wallet
      @users_wallet = Users::Wallet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_wallet_params
      params.require(:users_wallet).permit(:name)
    end
end

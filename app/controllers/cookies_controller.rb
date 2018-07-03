class CookiesController < OpenReadController
  before_action :set_cookie, only: %i[show update destroy]

  # GET /cookies
  def index
    @cookies = Cookie.all

    render json: @cookies
  end

  # GET /cookies/1
  def show
    render json: @cookie
  end

  # POST /cookies
  def create
    @cookie = current_user.cookies.build(cookie_params)

    if @cookie.save
      render json: @cookie, status: :created
    else
      render json: @cookie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cookies/1
  def update
    if @cookie.update(cookie_params)
      render json: @cookie
    else
      render json: @cookie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cookies/1
  def destroy
    @cookie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cookie
      @cookie = current_user.cookies.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cookie_params
      params.require(:cookie).permit(:cookieName, :amount, :distributableUnits)
    end
end

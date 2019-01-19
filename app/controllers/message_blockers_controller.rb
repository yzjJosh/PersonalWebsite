class MessageBlockersController < ApplicationController
  before_action :set_message_blocker, only: [:show, :edit, :update, :destroy]
  before_action :store_return_to
  before_action :require_login

  # GET /message_blockers
  # GET /message_blockers.json
  def index
    @message_blockers = MessageBlocker.all
  end

  # GET /message_blockers/1
  # GET /message_blockers/1.json
  def show
  end

  # GET /message_blockers/new
  def new
    @message_blocker = MessageBlocker.new
  end

  # GET /message_blockers/1/edit
  def edit
  end

  # POST /message_blockers
  # POST /message_blockers.json
  def create
    @message_blocker = MessageBlocker.new(message_blocker_params)

    respond_to do |format|
      if @message_blocker.save
        format.html { redirect_to @message_blocker, notice: 'Message blocker was successfully created.' }
        format.json { render :show, status: :created, location: @message_blocker }
      else
        format.html { render :new }
        format.json { render json: @message_blocker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message_blockers/1
  # PATCH/PUT /message_blockers/1.json
  def update
    respond_to do |format|
      if @message_blocker.update(message_blocker_params)
        format.html { redirect_to @message_blocker, notice: 'Message blocker was successfully updated.' }
        format.json { render :show, status: :ok, location: @message_blocker }
      else
        format.html { render :edit }
        format.json { render json: @message_blocker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_blockers/1
  # DELETE /message_blockers/1.json
  def destroy
    @message_blocker.destroy
    respond_to do |format|
      format.html { redirect_to message_blockers_url, notice: 'Message blocker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_blocker
      @message_blocker = MessageBlocker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_blocker_params
      params.require(:message_blocker).permit(:rule_name, :description, :name_matcher, :email_matcher, :ip_matcher, :message_matcher)
    end
end

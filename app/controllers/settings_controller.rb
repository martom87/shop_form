class SettingsController < ApplicationController

  before_action :set_setting, only: [:edit, :update, :show, :destroy]

  def new
    @setting = Setting.new
  end

  def index
    @settings = Setting.all
  end

  def show

  end

  def edit
    @setting = Setting.find(params[:id])
  end

  def update
    if @setting.update(setting_params)
      flash[:success] = "Setting was changed"
      render 'edit'
    else
      render 'edit'
    end
  end

  private

  def set_setting
    @setting = Setting.find(params[:id])
  end

  def setting_params
    params.require(:setting).permit(:picture_dimensions)
  end
end
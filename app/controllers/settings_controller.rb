class SettingsController < ApplicationController

  before_action :set_setting, only: [:edit, :update, :show]


  def show
  end

  def edit
  end

  def update
    if @setting.update(setting_params)
      flash[:notice] = "Setting was changed"
      redirect_to root_path
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
class ImagesController < ApplicationController
  # before_action :set_image, only: [:show, :edit, :update, :destroy]
expose(:image)
expose(:images) { Image.all}

  def create

  if image.save
    redirect_to image, notice: 'Image was successfully created.'
  else
    render :new


    end
  end

  def update
    respond_to do |format|
      if image.update(image_params)
        format.html { redirect_to image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: image }
      else
        format.html { render :edit }
        format.json { render json: image.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    image.destroy
    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def image_params
      params.require(:image).permit(:user, :references, :title, :description, :picture)
    end
end

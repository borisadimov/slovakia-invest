class UploadController < ApplicationController
  def upload_image
    response = FroalaEditorSDK::Image.upload(params)
    link = JSON.parse(response)['link'].split('/').insert(2, 'images').join('/')
    render json: { link: link }
  end
end

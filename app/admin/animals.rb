ActiveAdmin.register Animal do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, :animal_type, :birth_date, :gender, :is_sterilized, :is_vaccined, :description, :is_adopted, :cover_url, :size, :file, media_attributes: [:id, :type, :is_cover, :_destroy]

  form partial: 'form'

  controller do
    def update
      upload_image if params[:animal][:file]
      super do |success, failure|
        success.html { redirect_to collection_path, request.query_parameters }
        failure.html { redirect_to action: :update }
      end
    end

    private

    def upload_image
      animal = Animal.find(params[:id])
      bucket = 'dogadopt' # 要上传的空间
      qiniu_domain = 'http://p4wgbyuaw.bkt.clouddn.com/' # 外链默认域名
      params[:animal][:file].each_with_index do |f, index|
        key = f.original_filename # 上传到七牛后保存的文件名

        put_policy = Qiniu::Auth::PutPolicy.new(
          bucket, # 存储空间
          key,    # 指定上传的资源名，如果传入 nil，就表示不指定资源名，将使用默认的资源名
          3600    # token 过期时间，默认为 3600 秒，即 1 小时
        )
        uptoken = Qiniu::Auth.generate_uptoken(put_policy) # 生成上传 Token

        filePath = File.absolute_path(f.tempfile) # 要上传文件的本地路径

        code, result, response_headers = Qiniu::Storage.upload_with_token_2(
          uptoken,
          filePath,
          key,
          nil, # 可以接受一个 Hash 作为自定义变量，请参照 http://developer.qiniu.com/article/kodo/kodo-developer/up/ vars.html#xvar
          bucket: bucket
        )
        url = qiniu_domain + key
        is_cover = params[:animal][:media_attributes][index.to_s][:is_cover]
        params[:animal][:cover_url] = url if is_cover
        animal.media.create(url: url, is_cover: is_cover, medium_type: params[:animal][:media_attributes][index.to_s][:medium_type]) # 新建一条type为photo，url为七牛云的图片外链的数据
      end
      params[:animal][:media_attributes] = nil
    end
  end

end

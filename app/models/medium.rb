class Medium < ApplicationRecord
  belongs_to :animal

  after_destroy :destory_upload_image
  after_save :update_cover

  def update_cover
    return unless is_cover
    animal.update!(cover_url: url)
  end

  def destory_upload_image
    bucket = 'dogadopt' # 要上传的空间
    photo_name = self.url.split('/').last
    put_policy = Qiniu::Auth::PutPolicy.new(
      bucket, # 存储空间
      photo_name,    # 指定上传的资源名，如果传入 nil，就表示不指定资源名，将使用默认的资源名
      3600    # token 过期时间，默认为 3600 秒，即 1 小时
    )
    uptoken = Qiniu::Auth.generate_uptoken(put_policy) # 生成上传 Token
    #删除资源
    code, result, response_headers = Qiniu::Storage.delete(
      bucket,     # 存储空间
      photo_name  # 资源名
    )
  end
end

module ApplicationHelper
  def embedded_svg(path)
    File.open("app/assets/images/#{path}","rb"){|file| raw(file.read)} # rb é permissão e raw e a forma que vai ler
  end

  def user_avatar(user)
    if user.avatar.attached?
      avatar = user.avatar #variant(combine_options: {resize: '100x100^', extent:'100x100'})
    else
      avatar = "default-avatar.jpg"
    end
    image_tag avatar, size: '50x50', class: "photo"
  end
end


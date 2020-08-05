module ApplicationHelper
  def embedded_svg(path)
    File.open("app/assets/images/#{path}","rb"){|file| raw(file.read)} # rb é permissão e raw e a forma que vai ler
  end
end

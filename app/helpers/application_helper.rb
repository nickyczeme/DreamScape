module ApplicationHelper
  def cloudinary_picture(dream)
    if dream.photo.attached?
      cl_image_tag dream.photo.key, crop: :fill
    else
      image_tag 'https://www.coordonne.es/wp-content/uploads/2019/06/6800703-420x280cm.jpg', height: 300, width: 400, crop: :fill
    end
  end

  def cloudinary_picture_path(dream)
    if dream.photo.attached?
      cl_image_path dream.photo.key, height: 300, width: 400, crop: :fill
    else
      image_tag 'https://www.coordonne.es/wp-content/uploads/2019/06/6800703-420x280cm.jpg', height: 300, width: 400, crop: :fill
    end
  end
end

module MenusHelper
  def should_follow?(user)
    render 'shared/to_follow', user: user if user != @current_user && !@current_user.followings.include?(user)
  end

  def check_for_photo(user)
    if user.photo.attached?
      image_tag user.photo, class: 'who-to-follow-img'
    else
      image_tag('navigation/home.jpeg', class: 'who-to-follow-img')
    end
  end

  def check_for_cover_image(user)
    if user.coverimage.attached?
      image_tag @user.coverimage, class: 'cover-img'
    else
      image_tag('navigation/cover.jpg', class: 'cover-img')
    end
  end
end

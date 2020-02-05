class Tvshow < ApplicationRecord
  belongs_to :channel
  acts_as_favoritable

  def self.get_subscribed_users
    Favorite.all.each do |favorite|
      show_timing = favorite.favoritable.show_timing.strftime("%I:%M %p").to_time
      current_time = Time.now.strftime("%I:%M %p").to_time
      time_diff = (show_timing - current_time)/60
      if time_diff == 30
        UserMailer.send_email(favorite.favoritor, favorite.favoritable).deliver_now
      end
    end
  end
end

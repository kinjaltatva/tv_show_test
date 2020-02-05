namespace :email_reminder do
  task :favorite_show_reminder => :environment do
    Tvshow.get_subscribed_users
  end
end
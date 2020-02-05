# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tv_channel1 = Channel.create(name: "ColorsTv")
tv_channel2 = Channel.create(name: "Sony Sub")
tv_channel3 = Channel.create(name: "Star Plus")
tv_channel4 = Channel.create(name: "Pogo")


tv_channel1.tvshows.create(name: "Nagin", show_timing: "08:00 PM")
tv_channel1.tvshows.create(name: "Kum kum Bhagya", show_timing: "08:30 PM")
tv_channel1.tvshows.create(name: "Jodha Akbar", show_timing: "09:00 PM")
tv_channel1.tvshows.create(name: "Big boss", show_timing: "10:00 PM")

tv_channel2.tvshows.create(name: "Bal veer", show_timing: "08:00 PM")
tv_channel2.tvshows.create(name: "Tarak mehta ka ulta chashma", show_timing: "08:30 PM")
tv_channel2.tvshows.create(name: "Bhakharvadi", show_timing: "09:00 PM")
tv_channel2.tvshows.create(name: "Tenali rama", show_timing: "09:30 PM")

tv_channel3.tvshows.create(name: "Kasuti zindgi ki", show_timing: "08:00 PM")
tv_channel3.tvshows.create(name: "Kaha hum kha tum", show_timing: "09:00 PM")
tv_channel3.tvshows.create(name: "Yeh rishta kya kehlata hey", show_timing: "09:30 PM")
tv_channel3.tvshows.create(name: "Yeh rishte he pyar ke", show_timing: "10:00 PM")

tv_channel4.tvshows.create(name: "Chotta bheem", show_timing: "08:00 PM")
tv_channel4.tvshows.create(name: "Owswald", show_timing: "09:00 PM")
tv_channel4.tvshows.create(name: "Nodday", show_timing: "09:30 PM")
tv_channel4.tvshows.create(name: "Tom and jerry", show_timing: "10:00 PM")
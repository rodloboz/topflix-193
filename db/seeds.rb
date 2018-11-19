require 'open-uri'

Movie.destroy_all
User.find_by_email("quentin.tarantino@gmail.com").destroy

user = User.create!(email: "quentin.tarantino@gmail.com", password: "123456")

url = "https://raw.githubusercontent.com/rodloboz/lw-fullstack/master/topflix/data/movies.json"

movies = JSON.parse(open(url).read)

movies.take(20).each do |movie|
  Movie.create!(
    user: user,
    title: movie["title"],
    rank: movie["rank"]
  )
end

puts "Created #{Movie.count} movies!"

require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

# get("/dice/2/6") do
#   @rolls = []

#   2.times do
#     die = rand(1..6)

#     @rolls.push(die)
#   end

#   erb(:two_six)
# end

# get("/dice/2/10") do
#   @rolls = []

#   2.times do
#     die = rand(1..10)

#     @rolls.push(die)
#   end

#   erb(:two_ten)
# end

# get("/dice/1/20") do
#   @rolls = []

#   1.times do
#     die = rand(1..20)

#     @rolls.push(die)
#   end

#   erb(:one_twenty)
# end

# get("/dice/5/4") do
#   @rolls = []

#   5.times do
#     die = rand(1..4)

#     @rolls.push(die)
#   end

#   erb(:five_four)
# end


# get("/dynamic/:number_of_dice/6") do
#   @num_dice = params.fetch("number_of_dice").to_i

#   @rolls = []

#   @num_dice.times do
#     die = rand(1..6)

#     @rolls.push(die)
#   end

#   erb(:flexible)
# end

get("/dice/:number_of_dice/:number_of_side") do
  @num_dice = params.fetch("number_of_dice").to_i
  @num_side = params.fetch("number_of_side").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..6)

    @rolls.push(die)
  end

  erb(:flexible)
end

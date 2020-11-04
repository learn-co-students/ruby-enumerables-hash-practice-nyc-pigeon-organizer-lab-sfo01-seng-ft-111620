require "pry"

def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |k1, v1|
    v1.each do |k2, v2|
      v2.each do |ele|
        if !hash[ele]
          hash[ele] = {
            color: [],
            gender: [],
            lives: []
          }
        end
        if v2.include?(ele)
          hash[ele][k1] << k2.to_s
        end
      end
    end
  end
  binding.pry
  hash
end




# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }
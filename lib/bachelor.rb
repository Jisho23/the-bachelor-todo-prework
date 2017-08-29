require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |key, value|
      if key["status"] == "Winner"
        winner = key["name"]
      end
  end

  return winner.split(" ").first
end


def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |contestant_data, data|
      if contestant_data["occupation"] == occupation
        return contestant_data["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, contestant|
    contestant.each do |contestant_data, data|
      if contestant_data["hometown"] == hometown
        hometown_count += 1
      end
    end
  end

  return hometown_count
end


def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant, data|
      if contestant["hometown"] == hometown
          return contestant["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  ages = 0
  number_of_contestants = 0

  data[season].each do |contestant, data|
    ages += contestant["age"].to_f
    number_of_contestants += 1
  end

  average = (ages / number_of_contestants)
  average.round

end
 

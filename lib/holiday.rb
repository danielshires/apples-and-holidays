require 'pry'

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash.each do |key, value|
    if key.to_s == "summer"
     value.each do |key, value|
      if key.to_s == "fourth_of_july"
        return value[1]
      end
     end
    end
  end
end

# puts second_supply_for_fourth_of_july(holiday_supplies)

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |key, value|
    if key.to_s == "winter"
      value.each do |key, value|
        value.push(supply)        
      end
    end
  end
end

# puts add_supply_to_winter_holidays(holiday_supplies, "New Supply")

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |key, value|
    if key.to_s == "spring"
      value.each do |key, value|
        value.push(supply)        
      end
    end
  end
end

# p add_supply_to_memorial_day(holiday_supplies, "New Supply")

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |key, value|
    if key == season
    holiday_hash[key][holiday_name] = supply_array
    end 
  end
  holiday_hash
end

# puts add_new_holiday_with_supplies(holiday_supplies, :fall, :valentines_day, ["Cupid Cut-Out", "Candy Hearts"])

# Write a method that adds a new holiday and its associated supplies to any season.

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |key, value|
    if key.to_s == "winter"
      winter_supplies = []
        holiday_hash[key].each do |key, value|
          winter_supplies.push value
        end
      return winter_supplies.flatten(1)
    end 
  end
end

# p all_winter_holiday_supplies(holiday_supplies)

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_text = []
  holiday_hash.each do |key, value|
    puts "#{key.capitalize()}:"
    value.each do |key, val|
      key_words = key.to_s.split("_")
      key_words = key_words.collect do |val|
        val.capitalize()
      end
      new_key = key_words.join(" ")
      puts "  #{new_key}: #{val.join(", ")}"
      end
  end
  # holiday_text.flatten
end

# all_supplies_in_holidays(holiday_supplies)


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_keys = []
  holiday_hash.each do |key, value|
    value.each do |key, value|
      if value.include? "BBQ"
        bbq_keys << key
      end
    end
  end
  p bbq_keys
end

all_holidays_with_bbq(holiday_supplies)





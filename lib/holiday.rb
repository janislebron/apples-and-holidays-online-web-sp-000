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

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

second_supply_for_fourth_of_july(holiday_supplies)


def add_supply_to_winter_holidays(holiday_hash, item)
 holiday_hash[:winter].each do |holiday, decorations|
   decorations << item
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
     holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.each do |x|
    puts "#{x}"
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |k, v|
    puts "#{k.capitalize}"
      v.each do |x, y|
        title = x.to_s.tr("_", " ").split
        puts "  #{title.collect {|x| x.capitalize}.join("")}: #{y.join(", ")}"
      end
  end

end

def all_holidays_with_bbq(holiday_hash)
  hello = []

  holiday_hash.each do |z, w|
    w.each do |x,y|
      if y.include?("BBQ")
        hello << x
      end
    end
end

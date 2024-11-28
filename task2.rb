class Dictionary
  attr_reader :data

  def initialize(entries = {})
    @data = entries
  end

  def +(other)
    merged_data = @data.merge(other.data)
    Dictionary.new(merged_data)
  end

  def to_s
    @data.to_s
  end
end

dict1 = Dictionary.new({
  "1984" => "Джордж Орвелл",
  "Убити пересмішника" => "Гарпер Лі"
})

dict2 = Dictionary.new({
  "Великий Гетсбі" => "Френсіс Скотт Фіцджеральд",
  "1984" => "Джордж Орвелл (Оновлене видання)"
})

merged_dict = dict1 + dict2

puts "\nСловник 1: #{dict1}"
puts "Словник 2: #{dict2}"
puts "\nОб'єднаний словник: #{merged_dict}"

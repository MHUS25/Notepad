class Notepad
  include Enumerable

  def initialize
    @entries = []
  end

  def add(title, body)
    @entries << {title: title, body: body}
  end

  def show_notes
    @entries.map do |note|
      "#{note[:title]}: #{note[:body]}"
    end.join("\n")
  end

  def show_titles
    @entries.map do |note|
      "#{note[:title]}"
    end.join("\n")
end

  def show_specific_note(title)
    @entries.map do |note|
      "#{note[:title]}: #{note[:body]}"
    end.select {|note| note[title] == title }.join(",")
  end
end

class Diary
  attr_reader :entries
  def initialize(entry_class = Entry)
    @entries = []
    @entry_class = entry_class
  end

  def add(title, body)
    @entries << @entry_class.new(title, body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    return titles.join("\n")
  end
end

class Entry
  attr_reader :title, :body
  def initialize(title, body)
    @title = title
    @body = body
  end
end
class Note
  attr_reader :title, :body
  def initialize(title, body, noteformatter = NoteFormatter.new)
    @title = title
    @body = body
    @noteformatter = noteformatter
  end
  def display
    @noteformatter.format(self)
  end

end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
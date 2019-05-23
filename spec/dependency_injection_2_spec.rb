require 'dependency_injection_2'

describe Diary do
    it 'Displays formatted note, with title and body' do
      entry_double = double :entry
      entry_class_double = double :entry_class, new: entry_double
      diary = Diary.new(entry_class_double)
      diary.add("Dresden's Magic Lamp","Wizard School Stage")
      expect(diary.entries).to include(entry_double)
    end
    it 'Displays formatted note, with title and body' do
      entry_double = double( :entry, title: "Dresden's Magic Lamp" )
      entry_class_double = double :entry_class, new: entry_double
      diary = Diary.new(entry_class_double)
      diary.add("Dresden's Magic Lamp","Wizard School Stage")
      expect(diary.index).to eq("Dresden's Magic Lamp")
    end
end
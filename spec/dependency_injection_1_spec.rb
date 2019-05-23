require 'dependency_injection_1'

describe Note do
  describe '#display' do
    let(:noteformatter_double) { double(:noteformatter, format: "Title: Dresden\nWizardSchoolLand") }
    it 'Displays formatted note, with title and body' do
      note = Note.new("Dresden", "WizardSchoolLand", noteformatter_double)
      expect(note.display).to eq("Title: Dresden\nWizardSchoolLand")
    end
  end
end
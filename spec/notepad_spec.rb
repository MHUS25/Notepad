require 'notepad'

describe Notepad do

   it "notepad is empty when first asked to view notes" do
     notepad = Notepad.new
     expect(notepad.show_notes).to be_empty
   end


  it "adds a note title and body and lists it out" do
    notepad = Notepad.new
    notepad.add("cat notes", "cats are great")
    expect(notepad.show_notes).to eq "cat notes: cats are great"
  end

  it "adds two notes and lists the out" do
    notepad = Notepad.new
    notepad.add("cat notes", "cats are great")
    notepad.add("horse notes", "horses are great")
    expect(notepad.show_notes).to eq "cat notes: cats are great\nhorse notes: horses are great"
  end

 it 'can show a list of titles of added notes' do
   notepad = Notepad.new
   notepad.add("cat notes", "cats are great")
   notepad.add("horse notes", "horses are great")
   expect(notepad.show_titles).to eq "cat notes\nhorse notes"
 end

 it 'can show a specific note (title & body) based on title' do
   notepad = Notepad.new
   notepad.add("cat notes", "cats are great")
   notepad.add("horse notes", "horses are great")
   expect(notepad.show_specific_note("cat notes")).to eq "cat notes: cats are great"
 end

 it 'can show a specific note (title & body) based on title' do
   notepad = Notepad.new
   notepad.add("cat notes", "cats are great")
   notepad.add("horse notes", "horses are great")
   expect(notepad.show_specific_note("horse notes")).to eq "horse notes: horses are great"
 end
end

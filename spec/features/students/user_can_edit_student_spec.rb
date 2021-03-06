require 'rails_helper'

describe 'User creates edit student through /studens/id/edit' do
  scenario 'sees new student info on show page when editing' do
    name = 'Jeffrey Lebowski'
    new_name = 'The Dude'
    student = Student.create!(name: name)

    visit edit_student_path(student)

    fill_in 'student[name]', with: new_name
    click_button 'Submit'

    expect(page).to have_content(new_name)
    expect(current_path).to eq student_path(student)
  end
end

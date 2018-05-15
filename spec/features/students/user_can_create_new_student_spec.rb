require 'rails_helper'

describe 'User creates new student through /students/new' do
  scenario 'sees student page when creating new student' do
    name = 'Jeffrey Lebowski'

    visit new_student_path

    fill_in 'student[name]', with: name
    click_button 'Submit'

    expect(page).to have_content(name)
  end
end

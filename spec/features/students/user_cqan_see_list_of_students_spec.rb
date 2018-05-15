require 'rails_helper'

describe 'User sees list of students on /students' do
  scenario 'sees list of student names' do
    name = 'Jeffrey Lebowski'
    name_2 = 'Maude Lebowski'
    name_3 = 'Jerry Seinfeld'
    student = Student.create!(name: name)
    student = Student.create!(name: name_2)
    student = Student.create!(name: name_3)

    visit students_path

    expect(page).to have_content(name)
    expect(page).to have_content(name_2)
    expect(page).to have_content(name_3)
  end
end

# As a user
# When I visit `/students`
# I see a list of student names

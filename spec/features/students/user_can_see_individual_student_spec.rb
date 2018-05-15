require 'rails_helper'

describe 'User sees name of student on /student/:id' do
  scenario 'sees student name' do
    student = Student.create!(name: 'Jeffrey Lebowski')
    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
# As a user
# When I visit `/students/:id`
# I see the name of a student

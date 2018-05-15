require 'rails_helper'

describe 'User sees name of student on /student/:id' do
  scenario 'sees student name' do
    name = 'Jeffrey Lebowski'
    student = Student.create!(name: name)

    visit student_path(student)

    expect(page).to have_content(name)
  end
end

require 'rails_helper'

describe 'User sees navigation links on all pages' do
  scenario 'sees all and create students links on index page' do
    name = 'Jeffrey Lebowski'
    link_name = 'All Students'
    link_name_2 = 'Create New Student'
    Student.create!(name: name)

    visit students_path
    expect(page).to have_link(link_name)
    expect(page).to have_link(link_name_2)

    click_link(link_name)

    expect(current_path).to eq students_path

    click_link(link_name_2)

    expect(current_path).to eq new_student_path
  end

  scenario 'sees all and create students links on student show page' do
    name = 'Jeffrey Lebowski'
    link_name = 'All Students'
    link_name_2 = 'Create New Student'
    student = Student.create!(name: name)

    visit student_path(student)
    expect(page).to have_link(link_name)
    expect(page).to have_link(link_name_2)
    
    click_link(link_name)

    expect(current_path).to eq students_path

    click_link(link_name_2)

    expect(current_path).to eq new_student_path
  end
end

# As a user
# When I visit any page
# I see links to see a list of all students,
# or create a new student

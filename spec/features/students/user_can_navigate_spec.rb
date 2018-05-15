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

  scenario 'sees all and create students links on edit page' do
    name = 'Jeffrey Lebowski'
    link_name = 'All Students'
    link_name_2 = 'Create New Student'
    student = Student.create!(name: name)

    visit edit_student_path(student)
    expect(page).to have_link(link_name)
    expect(page).to have_link(link_name_2)

    click_link(link_name)

    expect(current_path).to eq students_path

    click_link(link_name_2)

    expect(current_path).to eq new_student_path
  end

  scenario 'sees all and create students links on new page' do
    name = 'Jeffrey Lebowski'
    link_name = 'All Students'
    link_name_2 = 'Create New Student'
    Student.create!(name: name)

    visit new_student_path
    expect(page).to have_link(link_name)
    expect(page).to have_link(link_name_2)

    click_link(link_name)

    expect(current_path).to eq students_path

    click_link(link_name_2)

    expect(current_path).to eq new_student_path
  end

  scenario 'see students page when clicking on student name from index' do
    name = 'Jeffrey Lebowski'
    student = Student.create!(name: name)

    visit students_path
    expect(page).to have_link(name)

    click_link(name)

    expect(current_path).to eq student_path(student)
    expect(page).to have_content(name)
  end

end

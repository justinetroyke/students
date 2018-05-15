require 'rails_helper'

describe 'User creates delete student through /students' do
  scenario 'sees index without deleted student' do
    name = 'Jeffrey Lebowski'
    Student.create!(name: name)

    visit students_path
    expect(page).to have_content(name)

    click_link('Delete')

    expect(page).to_not have_content(name)
    expect(current_path).to eq students_path
  end
end

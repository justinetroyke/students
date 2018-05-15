require 'rails_helper'

describe 'User creates delete student through /stduents' do
  scenario 'sees index without deleted student' do
    name = 'Jeffrey Lebowski'
    student = Student.create!(name: name)

    visit students_path
    expect(page).to have_content(name)

    click_link('Delete')

    expect(page).to_not have_content(name)
    expect(current_path).to eq students_path
  end
end

# As a user
# When I visit `/students`
# And I click "Delete" next to a student's name
# I see the students index
# And that student's name is no longer on the page

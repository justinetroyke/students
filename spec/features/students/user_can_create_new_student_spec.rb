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


# As a user
# When I visit `/students/new`
# And I fill in name
# And I click submit
# I am on the student show page
# And I see that student's name

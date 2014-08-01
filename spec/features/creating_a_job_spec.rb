require "rails_helper"

feature "Creating a job" do
  given(:job_description) { "Plant apple seeds.\nWater seeds.\nWait.\nPick apples." }
  given(:job_title)      { "Apple Farmer" }

  scenario "displays a success message w/ valid input" do
    visit jobs_path
    click_link("New job")
    fill_in :job_title, with: job_title
    fill_in :job_description, with: job_description
    click_button("Submit")
    expect(page).to have_content("Job created successfully")
    expect(page).to have_content(job_title)
    expect(page).to have_content(job_description)
  end
end

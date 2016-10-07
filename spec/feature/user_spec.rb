require 'rails_helper'

RSpec.feature 'user', type: :feature do
  given(:user) { build(:user) }
  given(:prototype) { build(:prototype) }

  def sign_in
    visit root_path
    click_link 'Get Started'
    click_link 'Sign up now'
    fill_in 'user_name', with: user.name
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    fill_in 'user_member', with: user.member
    fill_in 'user_profile', with: user.profile
    fill_in 'user_works', with: user.works
    click_button 'Save'

  end

  def sign_up
    visit root_path
    click_on 'Get Started'
    fill_in 'Email address', with: login_user.email
    fill_in 'Password', with: login_user.password
    click_button 'Sign in'
  end

  scenario 'user sign_up' do
    sign_up
  end

  scenario 'user sign_in' do
    sign_in
  end

  scenario 'posting a new prototype', js: true do
    sign_up
    click_link 'New Proto'
    fill_in 'prototype_title', with: prototype.title
    attach_file 'prototype[prototype_images_attributes][0][content]', "spec/fixtures/sample.jpg", visible: false
    fill_in 'prototype_catch_copy', with: prototype.catchcopy
    fill_in 'prototype_concept', with: prototype.concept
    click_button 'Publish'
    expect(page).to have_content 'Created successfully!'
  end
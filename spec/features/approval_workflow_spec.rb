require 'rails_helper'

describe 'navigate' do 
  before do
    @admin_user = FactoryBot.create(:admin_user)
    login_as(@admin_user, :scope => :user)
  end

  describe 'edit' do
    before do
      @post = FactoryBot.create(:post)
    end

    #testcase that visits the edit page of the post. 
    it 'has a status that can be edited on the form' do
      visit edit_post_path(@post)

      #check the radio button
      choose('post_status_approved')
      #click save button
      click_on "Save"

      #create am expectation to see if the status is equal to approved
      expect(@post.reload.status).to eq('approved') 
    end
  end

end
require 'rails_helper'

describe 'Static pages' do
  subject { page }

  describe 'Home page' do
    before { visit root_path }

    it { should have_content('Start a Hack Club') }
    it { should have_title(full_title('')) }
  end

  describe 'Contact page' do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

  describe 'Attributions page' do
    before { visit attributions_path }

    it { should have_content('Attributions') }
    it { should have_title(full_title('Attributions')) }
  end
end

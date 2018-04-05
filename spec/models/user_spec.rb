require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  let(:user) { build(:user) }

  # Utilizando shoulda-matchers
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_confirmation_of(:password) }
  it { is_expected.to allow_value("jose.franciscoj@outlook.com").for(:email) }
  
  # context 'when name is blank' do
  #   # before (:each) { user.name = " " }
  #   # before (:all) { user.name = " " }
  #   before { user.name = " " }

  #   it { expect(user).not_to be_valid }
  # end

  # context 'when name is nil' do
  #   before { user.name = nil }

  #   it { expect(user).not_to be_valid }
  # end

  # subject { FactoryGirl.build(:user) }
  # subject { build(:user) }
  # before { @user = FactoryGirl.build(:user) }

  # it { expect(@user).to respond_to(:email) }
  # it { expect(@user).to respond_to(:name) }
  # it { expect(@user).to respond_to(:password) }
  # it { expect(@user).to respond_to(:password_confirmation) }
  # it { expect(@user).to be_valid }

  # subject = User.new

  # it { expect(subject).to respond_to(:email) }
  # it { expect(subject).to be_valid }
  

  # it { expect(@user).to respond_to(:email) }
  # it { expect(subject).to respond_to(:email) }
  # it { is_expected.to respond_to(:email) }
  
end

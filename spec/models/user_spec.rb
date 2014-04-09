require 'spec_helper'
require 'pry'

describe User do
  context 'when conference owner' do
    let (:user) { FactoryGirl.create :user }
    let (:conference) { FactoryGirl.create :conference }
    subject (:ability) { Ability.new user }

    context 'given rights to conference' do
      before do
        user.add_role :owner, conference
      end

      it 'can manage' do
        expect(ability).to be_able_to :manage, conference
      end
    end
  end
end

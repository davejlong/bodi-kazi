class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :manage, Conference, :id => Conference.with_role(:owner, user).pluck(:id)
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :conference do
    name "Awesome Conference"
    add_attribute(:when) { 1.month.from_now.strftime '%b %d, %Y' }
    where "Somewhere awesome"
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :survey_response do
    survey_question
    survey_option_id 1
    study_id 1
    voter_session 'a6beb860ad431821cda687fc8dc6e583'
  end
end

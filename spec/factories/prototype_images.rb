include ActionDispatch::TestProcess
FactoryGirl.define do
  factory :prototype_image do
    prototype
    content { fixture_file_upload("spec/fixtures/img/sample.png", 'image/png')}

    trait :main_image do
       type  :main_image
     end

     trait :sub_images do
       type  :sub_images
    end
  end
end


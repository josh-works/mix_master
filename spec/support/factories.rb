FactoryGirl.define do
  factory :artist do
    name
    image_path "http://www.nycaribnews.com/sites/default/files/articles/bob-marley5.jpg"
  end

  sequence :name, ["Aa", "Cc", "Bb"].cycle do |n|
    "Mr. #{n}"
  end

  sequence :title, ["A", "C", "B"].cycle do |n|
    "#{n} Title"
  end

  factory :song do
    title
    artist
  end
end

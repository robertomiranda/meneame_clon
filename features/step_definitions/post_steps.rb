Given /^I have posts titled (.+)$/ do |titles|
  for title in titles.split(', ')
    post = Factory.create(:post, :title => title)
  end
end



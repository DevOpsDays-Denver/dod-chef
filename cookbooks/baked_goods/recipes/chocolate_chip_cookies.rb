cron 'preheat' do
  command 'preheat_oven_to_350_F.sh'
  day '*'
  hour '18'
  minute '0'
  month '*'
  user 'root'
end

cookbook_file '/opt/ingredients.sh' do
source 'ingredients.sh'
  owner 'root'
  group 'root'
  mode '0744'
end

cron 'mix the ingredients' do
  command 'bash ingredients.sh >> /tmp/taste.log 2>&1'
  day '*'
  hour '18'
  minute '5'
  month '*'
  user 'root'
end

cron 'bake the cookies' do
  command 'bake_cookies.sh'
  day '*'
  hour '18'
  minute '30'
  month '*'
  user 'root'
end

cron 'Bake for 10m then cool' do
  command 'remove_cookies_to_cool.sh'
  day '*'
  hour '18'
  minute '40'
  month '*'
  user 'root'
end

cron 'eat all the cookies' do
  command 'chompy.sh'
  day '*'
  hour '*'
  minute '*'
  month '*'
  user 'chompy'
end

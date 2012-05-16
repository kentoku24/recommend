%w(alpha beta gamma).each do |name|  
  user = User.new(  
    :email => "#{name}@ex.com",  
    :password => "#{name}...",  
    :password_confirmation => "#{name}..."  
  )  
  user.save
end  
%w(alpha beta).each do |name|  
  user = User.create(  
    :email => "#{name}@ex.com",  
    :password => "#{name}...",  
    :password_confirmation => "#{name}..."  
  )  
  user.save
end  

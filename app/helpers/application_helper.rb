module ApplicationHelper
  def intellinav
    links = ''
    if @current_user
      
      links += "#{link_to(@current_user.name  + "'s custom page"  ,  user_path(@current_user.id)) } #{link_to('Log out ' , login_path, :method => :delete, :confirm => 'Really log out?') } 
      "
    else
      links += "#{ link_to('Register', new_user_path) } #{ link_to('Login', login_path) }"
    end

   
    links
  end
end

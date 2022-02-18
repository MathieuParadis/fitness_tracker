class ApplicationController < ActionController::Base

  def after_inactive_sign_up_path_for(user)
      flash[:notice] = 'You successfully signed up'

    # if user_signed_in?
    #   flash[:notice] = 'You successfully signed up'
    #   activities_path
    # else
    #   super
    # end
  end

  def after_sign_in_path_for(user)
    if user_signed_in?
      flash[:notice] = 'You successfully logged in'
      activities_path
    else
      super
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      new_user_session_path
    else
      root_path
    end
  end

end

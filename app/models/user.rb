class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :authentication_keys => [:name]
  validates :name, uniqueness: true, length: { minimum: 3, maximun: 25 }

  def email_required?
    false
  end

  def email_changed?
    false
  end
  
  # use this instead of email_changed? for Rails = 5.1.x
  def will_save_change_to_email?
    false
  end

  protected

  def password_required?
    false
  end

  def after_confirmation_path_for(resource_name, resource)
    token = resource.send(:set_reset_password_token)
    edit_password_path(resource, reset_password_token: token)
  end

  def valid_password?
      false
  end
end

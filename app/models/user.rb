class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  ADMIN_ROLE = 'admin'
  CLIENT_ROLE = 'client'

  def is_admin?
    role.eql? ADMIN_ROLE
  end

  def is_client?
    role.eql? CLIENT_ROLE
  end

  def self.broadcaster_method(id, email)
    ActionCable.server.broadcast "notifications:#{id}", {html:
    "<div class='alert alert-success alert-block text-center'>
    <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>x</button>
        This is the notification only for #{email}
     </div>"
    }
  end
end

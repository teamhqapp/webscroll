class Author < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :lockable, :timeoutable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, :last_name


  def alias
    if pen_name.blank?
      "#{first_name} #{last_name}"
    else
      pen_name
    end
  end

  def name
    "#{first_name} #{last_name}"
  end

end

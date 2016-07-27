class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Relaciones
  has_many :vehicles
  # Validaciones
  validates :email, uniqueness: true ,on: :create, presence: true
  validates_format_of :email, with: Devise.email_regexp
  before_save :primera_mayuscula

  def primera_mayuscula
    if @first_name.capitalize!.nil? && @last_name.capitalize!.nil?
      @errors.messages[:first_name] = 'La primera letra debe ser mayuscula'
      @errors.messages[:last_name] = 'La primera letra debe ser mayuscula'
      return false
    else
      return true
    end
  end
end

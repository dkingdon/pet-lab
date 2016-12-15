class Owner < ActiveRecord::Base
  # TODO: add validations

  has_many :pets

  before_save :normalize_phone_number
  validates :first_name, presence: true, length: { maximum: 255 }
  validates :last_name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, :format => /@/, uniqueness: true, length: { maximum: 255 }

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    if phone.present?
      phone.gsub!(/^1/, "")
      phone.gsub!(/[()-.]/,"")
    end
  end



end

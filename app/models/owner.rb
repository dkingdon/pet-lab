class Owner < ActiveRecord::Base
  # TODO: add validations

  before_save :normalize_phone_number

  # removes leading 1 and the characters (, ), -, .
  def normalize_phone_number
    # if str.length = 11
    #   str.shift
    # end
  end

  validates :first_name, presence: true, length: { maximum: 255 }
  validates :last_name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, :format => /@/, uniqueness: true, length: { maximum: 255 }


end

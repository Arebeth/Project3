class User < ActiveRecord::Base
  has_many :pets
  has_secure_password

  validates :first_name, presence: true, length: { minimum: 3 }
  validates :last_name, presence: true, length: { minimum: 2 }

  validates :email, presence: true, uniqueness: true
  validates :password, length: { in: 6..20, too_long: "20 characters is 
  the maximum allowed", too_short: "6 characters is the minimum allowed" }

#   validates :vet_name, presence: true
#   validates :vet_number, presence: true, format: { with: /(?:(?:\+?1\s*
#     (?:[.-]\s*)?)?(?:(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]‌​)\s*)
#     |([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)
#     ([2-9]1[02-9]‌​|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})/,
#     message: "only allows numbers" }

#   validates :vet_address, presence: true



end

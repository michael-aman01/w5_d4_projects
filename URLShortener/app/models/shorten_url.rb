# == Schema Information
#
# Table name: shorten_urls
#
#  id         :bigint           not null, primary key
#  long_url   :string           not null
#  short_url  :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ShortenUrl < ApplicationRecord
    validates :short_url, presence: true
    validates :long_url, presence: true
    validates :user_id, presence: true
end

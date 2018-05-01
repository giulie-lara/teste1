class Zombie < ActiveRecord::Base
zombie_many :tweets, dependent: :destroy
has_one :brain, dependent: :destroy
has_many :assiments
has_many :roles, though: :assiments
end


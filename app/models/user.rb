class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
         # :recoverable, :rememberable, :trackable, :validatable
  after_commit :trigger_subscription

  def trigger_subscription
    ActionCable.server.broadcast 'GraphqlChannel', result: {
      data: {
        user: self,
        __typename: "User"
      }
    }
  end

  validates :nickname,
            presence: true,
            uniqueness: true
end

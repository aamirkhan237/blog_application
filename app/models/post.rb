class Post < ApplicationRecord
    validates :title , presence: true ,length:{minimum:5, maximum:50}
    validates :body , presence: true ,length:{minimum:10, maximum:100}
    belongs_to :user
    has_many :comments, dependent: :destroy

    has_rich_text :body


    has_noticed_notifications model_name: 'Notification'
    has_many :notifications, through: :user
        # Other model code...
      
        def self.ransackable_attributes(auth_object = nil)
          %w[title body user_email user_first_name user_last_name category_name]
        end
      
      
    
end

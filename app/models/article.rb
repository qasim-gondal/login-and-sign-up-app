class Article < ApplicationRecord
    mount_uploader :image , ImageUploader
    has_many :comments , dependent: :destroy
    after_destroy :log_destroy_action
    def log_destroy_action
        puts 'Article destroyed'
    end

   




    validates :name ,format: { with: /\A[a-zA-Z]+\z/, message: 'only letters are acceptable'}
    validates :password, numericality: true
    validates :email, uniqueness: true ,format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i , message: "is not valid"}
    validates :username ,uniqueness:{message: ->(data) do " #{data[:value]} is already taken" 
    end}
end

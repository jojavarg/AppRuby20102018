class User < ApplicationRecord
    has_many :posts
    validates :name, presence:true
    before_create -> {self.token = generate_token}


    private
    def generate_token
        loop do
            pretoken=SecureRandom.hex
            return pretoken unless User.exists?({token:pretoken})
        end
        
    end 
end

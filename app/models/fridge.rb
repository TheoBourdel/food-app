class Fridge < ApplicationRecord
    
    validates :content, 
        :presence => {:message => "Food can't be blank." },
        :uniqueness => {:message => "This food already exists."},
        :length => { :minimum => 2, :message => "Must be more than 2 characters"}

end

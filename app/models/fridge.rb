class Fridge < ApplicationRecord
  
    validates :content, 
        :presence => {:message => "can't be blank." },
        :uniqueness => {:message => "this food already exists."},
        :length => { :minimum => 2, :message => "must be more than 2 characters"}



    include ActiveModel::Validations
    validates_with MyValidator

        

end


class MyValidator < ActiveModel::Validator
    def validate(record)
      if record.content.ends_with? "s"
        record.errors[:content] << "must be singular"
      end
    end
  end

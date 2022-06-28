class MyValidator < ActiveModel::Validator
    def validate(record)
      if record.content.ends_with? "s"
        record.errors[:content] << "must be singular"
      end
    end
  end
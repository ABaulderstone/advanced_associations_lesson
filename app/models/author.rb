class Author < ApplicationRecord
    has_one :address, dependent: :destroy
    validate :validates_dob_format

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def age
        ((Time.now - self.date_of_birth.to_time) / 1.year.seconds).floor
    end 

    private 

    def validates_dob_format
        begin
            self.date_of_birth.to_date
        rescue 
            errors.add(:date_of_birth, "Invalid birthdate")
        end 
    end
end

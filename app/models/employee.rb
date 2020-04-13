class Employee < ApplicationRecord
    validates :first_name, length: { minimum: 6 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

    validates :last_name, length: { minimum: 2 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

    validates :emp_code, length: { minimum: 3 }, numericality: { only_integer: true }, uniqueness: true

   
    validates :email, uniqueness: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
    #validates :age, length: { is: 2 }, :greater_than=> 0,message: "only allows digits" }

end

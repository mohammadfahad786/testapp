class Student < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :roll_no, length: {is: 10}
  validate :check_name
  around_save :some_action

  attr_accessor :batch

  def check_name
    if name == "Mohammad Fahad"
        errors.add(:name, "should not be Mohammad Fahad")
    end
  end
  def some_action
    new_rec = new_record?
    yield
    return if !new_rec
    puts"this is a new record"
  end
end

class Question < ApplicationRecord
  has_many :choices,dependent: :destroy
  accepts_nested_attributes_for :choices

  validates :quiz, length: { maximum: 300 } ,presence: true
  validates :correct, length: { maximum: 100 } ,presence: true
  validates :explain_sentence, length: { maximum: 1000 } ,presence: true

end

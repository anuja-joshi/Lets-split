class Expense < Volt::Model
  field :description, String
  field :amount, Numeric

  # validate :description, presence: true
end

# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    before_action :require_login
    model :store
    def index
      # Add code for when the index view is loaded
    end

    def about
      # Add code for when the about view is loaded
    end

    def add_expense
      expenses.create({description: page._new_bill_description, amount: page._new_bill_amount})
      page._new_bill_description = ""
      page._new_bill_amount = 0
    end

    def split_up
      users_count = 
      expense_histories.first.total = expenses.then{|e| store.users.count.then { |v| e.map{|e| e._amount.to_i}.reduce(:+) / v}}
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end
  end
end

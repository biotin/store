class StoreController < ApplicationController
  def index
    @books = Book.order(:created_at)
  end
end

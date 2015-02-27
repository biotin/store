json.array!(@books) do |book|
  json.extract! book, :id, :name, :image_url, :description, :price
  json.url book_url(book, format: :json)
end

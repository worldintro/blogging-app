module As
  class Book
    Book = Dry::Schema.Params do
      required(:name).filled(:string)
      required(:email).hash(As::Page.new.kind)
    end

    def validate(data)
      outcome = Book.call(data)
    end
  end
end
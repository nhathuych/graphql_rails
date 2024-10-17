# frozen_string_literal: true

# generated by this command:
# rails g graphql:mutation CreateAuthorMutation

# generate delete_author_mutation.rb and update_author_mutation.rb if you want

module Mutations
  class CreateAuthorMutation < BaseMutation
    # TODO: define return fields
    field :author, Types::AuthorType, null: true

    # TODO: define arguments
    argument :name, String, required: true do
      description "This is the name of the author. It must be present and unique"
    end

    # TODO: define resolve method
    def resolve(name:)
      author = Author.new(name:)
      if author.save
        {
          author: author,
          errors: []
        }
      else
        {
          author: nil,
          errors: author.errors.full_messages
        }
      end
    end
  end
end
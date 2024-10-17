# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_article_mutation, mutation: Mutations::CreateArticleMutation
    field :create_author_mutation, mutation: Mutations::CreateAuthorMutation
  end
end

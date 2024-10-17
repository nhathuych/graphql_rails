# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :articles, [ Types::ArticleType ], null: false do
      description "Query that selects all articles."
    end

    field :get_articles_by_author, [ Types::ArticleType ], null: false do
      argument :author_id, [ ID ], required: false
    end

    field :authors, [ AuthorType ], null: false do
      description "Query that selects all authors."
    end

    def articles
      Article.all
    end

    def get_articles_by_author(author_id:)
      Article.where(author_id: author_id)
    end

    def authors
      Author.all
    end
  end
end

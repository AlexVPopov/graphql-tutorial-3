module Types
  class QueryType < BaseObject
    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_links, function: Resolvers::LinksSearch
    field :first_link, LinkType, null: false
    field :last_link, LinkType, null: false

    def first_link
      Link.first
    end

    def last_link
      Link.last
    end
  end
end

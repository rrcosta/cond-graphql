module Types
  module AccountType < GraphQL::Schema::Object
    name "AccountType" # É como o schema irá identificar essa type.

    # Nesta parte informamos quais campos serão visíveis
    # numa consulta
    field :id, types.ID
    field :name, types.String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
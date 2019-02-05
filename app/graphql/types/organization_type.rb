module Types
  module OrganizationType < GraphQL::Schema::Object
    name "OrganizationType"

    field :id, types.ID
    field :cnpj, types.String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :account do
      type Types::AccountType

      description "Contas vinculadas a esta organização"

      resolve ->(organization, args, context){
        organization.account
      }
    end

  end
end
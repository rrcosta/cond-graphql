module Types
  class QueryType < Types::BaseObject
    field :allOrganization, [OrganizationType], null: false

    field :organization, OrganizationType, null: true
      argument :id, ID, required: true
    end

    def all_Organization
      Organization.all
    end
  end
end

Types::QueryType = GraphQL::ObjectType.define do
  name "RootQuery"

  field :issue, -> { Types::IssueType } do
    description "The issue type that was requested"

    argument :name, !types.String, "Name of the issue type"

    resolve -> (obj, args, ctx) do
      ::IssueType.find_by(name: args[:name])
    end
  end
end

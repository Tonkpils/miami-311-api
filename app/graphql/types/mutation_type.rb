Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :finishServiceRequest, field: Mutations::FinishServiceRequest.field
end

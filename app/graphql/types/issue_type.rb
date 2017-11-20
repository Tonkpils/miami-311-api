Types::IssueType = GraphQL::ObjectType.define do
  name "IssueType"

  global_id_field :id

  field :name, !types.String, "The issue type name"

  connection :service_requests, -> { Types::ServiceRequestType.connection_type  } do
    description "Service requests for the particular issue type"

    resolve -> (object, arguments, context) do
      object.service_requests
    end
  end
end

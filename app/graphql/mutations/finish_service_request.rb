Mutations::FinishServiceRequest = GraphQL::Relay::Mutation.define do
  name "FinishServiceRequest"

  # return_type can be used as well
  # return_type Types::ServiceRequestType
  return_field :serviceRequest, -> { Types::ServiceRequestType }

  input_field :ticketId, !types.String, "Ticket ID"
  input_field :status, !types.String, "Ticket status on close"

  resolve -> (obj, args, ctx) {
    request = ServiceRequest.find_by!(ticket_id: args[:ticketId])
    request.close_with(status: args[:status])

    {
      serviceRequest: request
    }
  }
end

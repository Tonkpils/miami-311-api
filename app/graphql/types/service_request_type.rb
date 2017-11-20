Types::ServiceRequestType = GraphQL::ObjectType.define do
  name "ServiceRequest"
  description "A service request made to Miami 311"

  global_id_field :id

  field :id, !types.Int, "DB ID"
  field :ticketId, !types.String, "The given Miami 311 ticket ID", property: :ticket_id
  field :closedAt, types.String, "The date/time the ticket was closed", property: :closed_at
  field :status, !types.String, "The status of the ticket"
  field :methodReceived, !types.String, "The method used to create the ticket", property: :method_received
  field :goalDays, types.Int, "The number of days the ticket is expected to be completed in", property: :goal_days
  field :actualCompletedDays, types.Int, "The number of days the ticket actually got completed", property: :actual_completed_days
  field :createdAt, !types.String, "The date the ticket was created at", property: :created_at
  field :isCompleted, !types.Boolean, "Is the service request completed", property: :completed?
  field :isGoalMet, !types.Boolean, "Was the goal met for completion", property: :goal_met?
end

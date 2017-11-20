Miami311ApiSchema = GraphQL::Schema.define do
  id_from_object -> (object, type_definition, _) do
    GraphQL::Schema::UniqueWithinType.encode(type_definition.name, object.id)
  end

  object_from_id -> (id, context) do
    type_name, item_id = GraphQL::Schema::UniqueWithinType.decode(id)
    Object.const_get(type_name).find(item_id)
  end

  mutation(Types::MutationType)
  query(Types::QueryType)
end

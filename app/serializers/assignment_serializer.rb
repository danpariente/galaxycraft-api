class AssignmentSerializer
  include JSONAPI::Serializer

  attributes :submission, :submitted_at, :approved
end

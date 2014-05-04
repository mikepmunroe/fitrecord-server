class LiftSerializer < ActiveModel::Serializer
  attributes :id, :name, :result_id
  has_many :results
end

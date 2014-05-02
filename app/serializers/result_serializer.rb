class ResultSerializer < ActiveModel::Serializer
  attributes :id, :date, :rep_scheme, :load, :notes
end

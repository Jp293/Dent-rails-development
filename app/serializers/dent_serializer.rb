class DentSerializer < ActiveModel::Serializer
  attributes :id, :pain_level, :sensitivity, :how_long, :medications, :notes
end

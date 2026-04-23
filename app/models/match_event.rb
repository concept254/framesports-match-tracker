class MatchEvent < ApplicationRecord
  belongs_to :match

  EVENT_TYPES = ['Try', 'Conversion', 'Penalty', 'Yellow Card', 'Red Card', 'Substitution', 'Drop Goal'].freeze
  TEAM_SIDES  = ['home', 'away'].freeze

  validates :event_type, presence: true, inclusion: { in: EVENT_TYPES }
  validates :timestamp_seconds, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :team_side, inclusion: { in: TEAM_SIDES }, allow_blank: true

  def timestamp_formatted
    minutes = timestamp_seconds / 60
    seconds = timestamp_seconds % 60
    format("%02d:%02d", minutes, seconds)
  end
end
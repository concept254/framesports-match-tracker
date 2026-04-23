class Match < ApplicationRecord
  has_many :match_events, dependent: :destroy

  validates :title, presence: true
  validates :home_team, presence: true
  validates :away_team, presence: true
  validates :played_on, presence: true

  def highlights
    match_events.where(highlight: true).order(:timestamp_seconds)
  end

  def try_count(side)
    match_events.where(event_type: 'Try', team_side: side).count
  end
end
match = Match.create!(
  title: 'Lions vs Sharks — Round 5',
  home_team: 'Lions',
  away_team: 'Sharks',
  played_on: Date.today,
  venue: 'Ellis Park, Johannesburg'
)

[
  { event_type: 'Try',          player_name: 'Marius Louw',       team_side: 'home', timestamp_seconds: 312,  highlight: true,  notes: 'Brilliant finish in the corner after a 30m break' },
  { event_type: 'Conversion',   player_name: 'Jordan Hendrikse',  team_side: 'home', timestamp_seconds: 330,  highlight: false, notes: nil },
  { event_type: 'Penalty',      player_name: 'Curwin Bosch',      team_side: 'away', timestamp_seconds: 890,  highlight: false, notes: nil },
  { event_type: 'Yellow Card',  player_name: 'Cyle Brink',        team_side: 'home', timestamp_seconds: 1540, highlight: false, notes: 'Cynical breakdown penalty' },
  { event_type: 'Try',          player_name: 'Aphelele Fassi',    team_side: 'away', timestamp_seconds: 2210, highlight: true,  notes: 'Intercept try from 40m out' },
  { event_type: 'Penalty',      player_name: 'Jordan Hendrikse',  team_side: 'home', timestamp_seconds: 2890, highlight: false, notes: nil },
  { event_type: 'Try',          player_name: 'Edwill van der Merwe', team_side: 'home', timestamp_seconds: 3450, highlight: true, notes: 'Wing scores after sharp backline move' },
  { event_type: 'Substitution', player_name: 'Francke Horn',      team_side: 'home', timestamp_seconds: 3600, highlight: false, notes: nil },
].each { |e| match.match_events.create!(e) }

puts "✅ Seeded: #{match.title} with #{match.match_events.count} events (#{match.highlights.count} highlights)"
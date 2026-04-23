# 🏉 Framesports Match Event Tracker

A Ruby on Rails web application for tracking rugby match events in real time. Log tries, penalties, cards, substitutions and more — and tag key moments as **highlights** to build an instant highlight reel for every match.

Built as a demonstration project aligned with the [Framesports](https://framesports.com) platform, which turns match footage into performance data, coaching insights, and social content.

---

## Features

- **Match management** — create, edit, and delete matches with team names, date, and venue
- **Live event logging** — log timestamped match events per team with player attribution
- **Event types** — Try, Conversion, Penalty, Drop Goal, Yellow Card, Red Card, Substitution
- **Highlight tagging** — mark any event as a highlight to surface it in the Highlight Reel panel
- **Match timeline** — colour-coded chronological view of all events
- **Match stats** — at-a-glance totals for events, tries per team, and highlights
- **Demo seed data** — pre-loaded match to explore the app immediately

---

## Tech Stack

| Layer      | Technology              |
|------------|-------------------------|
| Framework  | Ruby on Rails 7.1       |
| Language   | Ruby 3.2                |
| Database   | SQLite3                 |
| Frontend   | ERB, Vanilla CSS        |
| Server     | Puma (default Rails)    |

---

## Prerequisites

Make sure you have the following installed:

- Ruby `3.2.x` — via [RubyInstaller](https://rubyinstaller.org/downloads/) (Windows) or `rbenv` (Mac/Linux)
- Rails `7.1.x`
- SQLite3
- Git
- Bundler (`gem install bundler`)

Verify your setup:
```bash
ruby -v
rails -v
sqlite3 --version
```

---

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/concept254/framesports-match-tracker.git
cd framesports-match-tracker
```

### 2. Install dependencies

```bash
bundle install
```

### 3. Set up the database

```bash
rails db:migrate
```

### 4. (Optional) Load demo data

Seed the database with a pre-built demo match and events:

```bash
rails db:seed
```

This creates a **Lions vs Sharks** match with 8 events including tries, a yellow card, and 3 tagged highlights.

### 5. Start the server

```bash
rails server
```

Visit **http://localhost:3000** in your browser.

---

## Usage

### Creating a Match
1. Click **+ New Match** in the navigation bar
2. Fill in the match title, home/away teams, date, and venue
3. Click **Save Match**

### Logging Events
1. Open a match and use the **Log Event** panel on the right
2. Select the event type, team side, player name (optional), and time in seconds
3. Tick **★ Tag as Highlight** to include it in the Highlight Reel
4. Click **Log Event**

### Viewing Highlights
The **🎬 Highlight Reel** strip at the top of each match page shows all highlight-tagged events at a glance — timestamped and colour-coded by type.

### Removing Events
Click the **✕** button on any timeline row to remove that event.

---

## Project Structure

```
framesports_match_tracker/
├── app/
│   ├── controllers/
│   │   ├── matches_controller.rb
│   │   └── match_events_controller.rb
│   ├── models/
│   │   ├── match.rb
│   │   └── match_event.rb
│   └── views/
│       ├── layouts/application.html.erb
│       └── matches/
│           ├── index.html.erb
│           ├── show.html.erb
│           ├── new.html.erb
│           ├── edit.html.erb
│           └── _form.html.erb
├── config/routes.rb
├── db/
│   ├── migrate/
│   └── seeds.rb
└── README.md
```

---

## Data Models

### Match
| Field        | Type    | Description              |
|--------------|---------|--------------------------|
| `title`      | string  | Match title              |
| `home_team`  | string  | Home team name           |
| `away_team`  | string  | Away team name           |
| `played_on`  | date    | Match date               |
| `venue`      | string  | Stadium or ground        |

### MatchEvent
| Field               | Type    | Description                          |
|---------------------|---------|--------------------------------------|
| `match_id`          | integer | Foreign key to Match                 |
| `event_type`        | string  | Try, Penalty, Yellow Card, etc.      |
| `player_name`       | string  | Player involved (optional)           |
| `team_side`         | string  | `home` or `away`                     |
| `timestamp_seconds` | integer | Seconds into the match               |
| `highlight`         | boolean | Whether this is tagged as a highlight|
| `notes`             | text    | Optional event description           |

---

## Possible Extensions

This project is intentionally scoped as a demonstration. Natural next steps aligned with the Framesports platform would include:

- **Video timestamp linking** — attach a video URL and jump to the exact moment of each event
- **Match report export** — generate a PDF or shareable summary per match
- **User authentication** — coaches and analysts log in with role-based access
- **API endpoints** — expose match and event data as JSON for integrations
- **Charts & analytics** — visualise event frequency, team performance trends over time
- **Automated highlight export** — output a timestamped list formatted for video editing pipelines

---

## Author

**Klaus Alusa Khayeka**
Senior Full Stack Developer — Johannesburg, South Africa
- GitHub: [github.com/concept254](https://github.com/concept254)
- Email: concept254@gmail.com

---

## License

This project is open source and available under the [MIT License](LICENSE).
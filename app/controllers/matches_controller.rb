class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  def index
    @matches = Match.includes(:match_events).order(played_on: :desc)
  end

  def show
    @match_events = @match.match_events.order(:timestamp_seconds)
    @highlights   = @match.highlights
    @match_event  = MatchEvent.new
    @event_types  = MatchEvent::EVENT_TYPES
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to @match, notice: 'Match created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @match.update(match_params)
      redirect_to @match, notice: 'Match updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @match.destroy
    redirect_to matches_path, notice: 'Match deleted.'
  end

  private

  def set_match
    @match = Match.find(params[:id])
  end

  def match_params
    params.require(:match).permit(:title, :home_team, :away_team, :played_on, :venue)
  end
end
class MatchEventsController < ApplicationController
  before_action :set_match

  def create
    @match_event = @match.match_events.new(match_event_params)
    if @match_event.save
      redirect_to @match, notice: 'Event logged.'
    else
      redirect_to @match, alert: 'Could not log event — check required fields.'
    end
  end

  def destroy
    @match.match_events.find(params[:id]).destroy
    redirect_to @match, notice: 'Event removed.'
  end

  private

  def set_match
    @match = Match.find(params[:match_id])
  end

  def match_event_params
    params.require(:match_event).permit(
      :event_type, :player_name, :team_side,
      :timestamp_seconds, :highlight, :notes
    )
  end
end
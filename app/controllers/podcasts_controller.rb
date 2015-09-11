class PodcastsController < ApplicationController
	before_action :find_podcast, only: [ :show, :dashboard ]
	before_action :find_episodes, only: [ :show, :dashboard ]

	def index
		@podcasts = Podcast.all.order("created_at desc")
	end

	def show
	end

	def dashboard
	end

	private

	def find_podcast
		if params[:id].nil?
			@podcast = current_podcast
			100.times{puts @podcast.id}
		else
			@podcast = Podcast.find(params[:id])
		end
	end

	def find_episodes
		@episodes = @podcast.episodes.order("created_at desc")
	end
end

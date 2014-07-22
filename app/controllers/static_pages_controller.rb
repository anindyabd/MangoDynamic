class StaticPagesController < ApplicationController	
	skip_before_filter :validate_user, :only => [:home, :about, :team]
	
end

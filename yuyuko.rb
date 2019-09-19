#global
require 'rubygems'
require 'bundler/setup'
#local
require 'osu-hitsounder'
require "./lib/essential"
require "byebug"

Version = 'Yuyuko Osu Manager Version: 0.1'

parsed_params = Essential::header
if File.file?(parsed_params[:hitsound_copier]) and File.file?(parsed_params[:hitsound_paster])
	OsuHitsounder::Manage.copy_hitsound(parsed_params.slice(:hitsound_copier, :hitsound_paster))
else
	p "Invalid files"
end
	
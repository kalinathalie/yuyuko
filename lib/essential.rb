require 'optparse'

module Essential
	def self.header
		options = {}
		o = OptionParser.new do |opts|
			opts.banner = "Usage: #{$0} [-options] [FILES]"

			opts.on("-c", "--copy=FILE", "Copy Hitsound") do |v|
				options[:hitsound_copier] = v
			end

			opts.on("-p", "--paste=FILE", "Paste Hitsound") do |v|
				options[:hitsound_paster] = v
			end

			opts.on_tail("-v", "--version", "Show version") do
        puts Version
        exit
      end
		end

		begin
			o.parse!(ARGV)
		rescue OptionParser::ParseError => e
			puts e
			exit 1
		end

		options
	end
end
require'./test/test_helper'
require'./lib/night_read'

class NightreadTest < Minitest::Test
	def setup
		@read = NightRead.new
	end

	def test_night_read
		assert_equal "hello world", @read.read
	end
end
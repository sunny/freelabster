$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "freelabster"

require "webmock/rspec"
WebMock.disable_net_connect!

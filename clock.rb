require 'clockwork'
require 'net/http'
require 'bobble'

module Clockwork
  every(2.minutes, 'monitor-failure') { Bobble.check("http://broken.example") }
  every(2.minutes, 'monitor-success') { Bobble.check("http://www.iana.org/") }
end

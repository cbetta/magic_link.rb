require 'magic_link/client'

class MagicLink
  def self.new key, value, options
    MagicLink::Client.new key, value, options
  end
end

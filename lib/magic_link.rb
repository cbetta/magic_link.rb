require 'magic_link/client'

class MagicLink
  def self.new key, value
    MagicLink::Client.new key, value
  end
end

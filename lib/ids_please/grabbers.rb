require_relative 'grabbers/base'
require_relative 'grabbers/facebook'
require_relative 'grabbers/vkontakte'
require_relative 'grabbers/instagram'
require_relative 'grabbers/twitter'
require_relative 'grabbers/mailru'

class IdsPlease
  module Grabbers

    NETWORKS = {
      facebook: IdsPlease::Grabbers::Facebook,
      vkontakte: IdsPlease::Grabbers::Vkontakte,
      twitter: IdsPlease::Grabbers::Twitter,
      instagram: IdsPlease::Grabbers::Instagram,
      mailru: IdsPlease::Grabbers::Mailru,
    }

    def self.each
      NETWORKS.values.each { |n| yield n }
    end

    def self.by_symbol(sym)
      NETWORKS[sym]
    end

  end
end
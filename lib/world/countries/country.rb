
require 'i18n'

module World

  # ISO 3166 Country
  class Country

    # @!attribute [r] alpha2
    #   @return [String] ISO 3166-1 two-letter country code
    # @!attribute [r] alpha3
    #   @return [String] ISO 3166-1 three-letter country code
    # @!attribute [r] xname
    #   @return [String] unofficial country name in English
    attr_reader :alpha2, :alpha3, :name

    alias_method :code, :alpha2

    # Finds the country with respective code
    # @param [String] alpha2 ISO 3166-1 two-letter country code
    # @return [Country, nil] Found country or nil if there is none registered with given code.
    # @example
    #   us = Country.find('US')
    #   us.name #=> 'United States'
    def self.find(alpha2)
      @countries[alpha2.to_s.upcase]
    end

    # Register a new Country.
    # @param [String] alpha2 ISO 3166-1 two-letter country code
    # @param [String] alpha3 ISO 3166-1 three-letter country code
    # @param [String] name Country name
    # @return [Country] Registered country
    # @example
    #   us = Country.find('US')
    #   us.name #=> 'United States'
    def self.register(alpha2, alpha3, name)
      @countries ||= {}
      @countries[alpha2] = new(alpha2, alpha3, name)
    end

    def to_s(options = {})
      I18n.t(@alpha2, default: @name, locale: options[:locale] || I18n.locale, scope: "world.countries")
    end

    private

    def initialize(alpha2, alpha3, name)
      @alpha2, @alpha3, @name = alpha2, alpha3, name
    end
  end
end

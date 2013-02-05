# encoding: utf-8

require 'test_helper'

require 'world'

class TestCountry < MiniTest::Unit::TestCase

  def test_brazil
    br = Country.find('br')
    assert_equal 'BR',     br.alpha2
    assert_equal 'BRA',    br.alpha3
    assert_equal 'Brazil', br.name
  end

  def test_usa
    us = Country.find('us')
    assert_equal 'US',  us.alpha2
    assert_equal 'USA', us.alpha3
    assert_equal 'United States', us.name
  end

  def test_zimbabwe
    us = Country.find('ZW')
    assert_equal 'ZW',  us.alpha2
    assert_equal 'ZWE', us.alpha3
    assert_equal 'Zimbabwe', us.name
  end

  def test_en_locale
    assert_equal 'Brazil', Country.find('BR').to_s
    assert_equal 'United States', Country.find('US').to_s
    assert_equal 'Zimbabwe', Country.find('ZW').to_s
  end

  def test_pt_br_locale
    assert_equal 'Brasil', Country.find('BR').to_s(locale: 'pt-BR')
    assert_equal 'Estados Unidos da América', Country.find('US').to_s(locale: 'pt-BR')
    assert_equal 'Zimbábue', Country.find('ZW').to_s(locale: 'pt-BR')
  end

end

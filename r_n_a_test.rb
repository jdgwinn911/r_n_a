require "minitest/autorun"
require_relative "r_n_a.rb"

class Rna < Minitest::Test
    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_it_is_a_hsh
        assert_equal(Hash, rom_num().class)
    end

    def test_that_hash_has_value
        assert_equal(true, rom_num().length > 0)
    end

    def test_that_m_equals_1000
        assert_equal("M", rom_num().fetch(1000))
    end

    def test_that__equals_1000
        assert_equal("CM", rom_num().fetch(900))
    end

    def test_romany_for_n
        assert_equal("", romany(0))
        assert_equal("M", romany(1000))
        assert_equal("CM", romany(900))
    end

    def test_that_things_have_been_switched
        assert_equal("CD", romany(400))
    end

    def test_that_90_equals_XC
        assert_equal("XC", romany(90))
    end

    def test_that_1000_equals_m
        assert_equal(Integer, rev_romany(1000).class)
    end



end
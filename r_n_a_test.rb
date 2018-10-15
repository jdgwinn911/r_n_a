require "minitest/autorun"
require_relative "r_n_a.rb"

class Rna < Minitest::Test
    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_it_is_a_array
        assert_equal(Array, rom_num().class)
    end

    def test_that_array_has_value
        assert_equal(true, rom_num().length > 0)
    end

    def test_that_m_equals_1000
        assert_equal("M", rom_num()[0])
    end

    def test_that__equals_1000
        assert_equal("C", rom_num().fetch(100))
    end



end
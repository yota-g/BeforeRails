require 'minitest/autorun'

class SampleTest < Minitest::Test 
  def test_sample
    assert_equal 'RUBY' , 'ruby'.upcase
  end

  # エラーが出るテスト
  def test_sample_second
    assert_equal 'RUBY' , 'ruby'.capitalize
  end

  def test_sample_third
    assert_equal 'RUBY', nil.capitalize
  end
end
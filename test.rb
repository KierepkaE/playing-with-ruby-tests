# first test
require 'minitest/autorun'

class MagicBallTest < Minitest::Test
def test_ask_returns_an_answer
    magic_ball = MagicBall.new
    assert magic_ball.ask("Whatever")
end

def test_multiply_by_two
    magic_ball = MagicBall.new
    assert_equal 4, magic_ball.multiply_by_two(2)
    assert_equal -2, magic_ball.multiply_by_two(-1)
    assert_equal 1000000, magic_ball.multiply_by_two(500000)
    assert_equal 1 , magic_ball.multiply_by_two(0.5)
    assert_equal -0.5, magic_ball.multiply_by_two(-0.25)
    assert_equal 0, magic_ball.multiply_by_two(0)
    refute_equal 5,magic_ball.multiply_by_two(2)

end

def test_hello
magic_ball = MagicBall.new
assert_equal "Hello Caroline!", magic_ball.hello("Caroline")
assert_equal "", magic_ball.hello(4)
refute_equal "", magic_ball.hello("Ian")
assert_equal "It can not be your name!", magic_ball.hello("Dog")
end



def test_multiply_by_two_add_ten
    magic_ball = MagicBall.new
    assert_equal 14, magic_ball.multiply_by_two_plus_ten(2)
end


end

class MagicBall

    def hello(name)
if (name.is_a? Integer)
    return ""
end
if (name == "Dog")
    return "It can not be your name!"
end
        "Hello #{name}!"
    end
    def ask(question)
return true
    end

    def multiply_by_two(num)
num * 2
    end
    def multiply_by_two_plus_ten(num)
        num *2 +10
    end
end


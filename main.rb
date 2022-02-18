# frozen_string_literal: true

def p1(rad)
    2 * rad * Math::PI
  end
  
  def a(rad, aaa)
    Math.sqrt((2 * rad * rad - rad * Math.sqrt((5 * rad * rad - aaa**2).abs)).abs)
  end
  
  def dlina_okr(rad, nnn = 6)
    a = nnn * 2 * rad * Math.sin(Math::PI / nnn)
    n = 0
    e = Enumerator.new do |yielder|
      loop do
        yielder << (a - p1(rad)).abs
        a = a(rad, a)
        nnn *= 2
      end
    end
    e.first(rad.to_i).last
  end
require_relative 'multilinguist'

class MathGenius < Multilinguist

  def report_total(aray)
    aray = aray.sum
    message = self.say_in_local_language("The total is #{aray}")

    message
  end
end

me = MathGenius.new

p me.report_total([45,665,6551,310])

me.travel_to("india")

p me.report_total([45,665,6551,310])

me.travel_to("italy")

p me.report_total([45,665,6551,310])

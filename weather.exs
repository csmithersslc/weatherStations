defmodule WeatherHistory do
	def for_location_27([]), do: []
	def for_location_27([ [time, 27, temp, rain ] | tail]) do
		[ [time, 27, temp, rain] | for_location_27(tail) ]
	end
	def for_location_27([_ | tail]), do: for_location_27(tail) 
end

def test_data do
	[
		[1366236422, 25, 18, 0.5],
		[1366236422, 27, 15, 1.5],
		[1366236422, 26, 18, 0.005],
		[1366236422, 25, 13, 0.5],
		[1366236422, 26, 18, 0.01],
		[1366236422, 25, 22, 0.522],
		[1366236422, 27, 17, 0.4565]
	]
end
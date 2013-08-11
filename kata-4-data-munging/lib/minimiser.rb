class Minimiser

  def minimum_of(array)
    array.sort{|a,b| a.max_temp - a.min_temp <=> b.max_temp - b.min_temp}[0]
  end
end

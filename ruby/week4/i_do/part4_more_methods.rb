class Car

  # Functional methods are executed primarily for their return value
  def summary
    "#{@make} | #{@model} | #{@year}"
  end

  # Procedural methods are executed for their side-effects.
  def drive(miles)
    @odometer += miles
  end

end

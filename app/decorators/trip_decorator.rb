class TripDecorator < Draper::Decorator
  delegate_all

  def trip_date
    object.date.strftime("%A %e, %B %Y")
  end

  def places_display
    if trip.places.count > 1
      'Places'
    elsif trip.places.count == 1
      'Places'.singularize
    else
      'No places'
    end
  end

end

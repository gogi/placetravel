class TripDecorator < Draper::Decorator
  delegate_all

  def trip_date
    object.date.strftime("%A %e, %B %Y")
  end

end

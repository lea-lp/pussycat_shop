module AlertHelper
  def build_alert_classes(alert_type)
    classes = 'alert alert-dismissable '
    case alert_type.to_sym 
    when :alert, :danger, :error, :validation_errors
        classes += 'alert-danger'
    when :warning, :todo
        classes += 'alert-warning'
    when :notice, :success
        classes += 'alert-success'
    else 
        classes += 'alert-info'
    end
    return classes

  end
end
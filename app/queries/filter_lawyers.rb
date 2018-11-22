class FilterLawyers
  def initialize(scope, params)
    @scope = scope
    @params = params
  end

  def search
    @scope = filter_by_language(@scope, @params[:language]) if present?(@params[:language])
    @scope = filter_by_law_field(@scope, @params[:law_field]) if present?(@params[:law_field])
    @scope = filter_by_payment_type(@scope, @params[:payment_type]) if present?(@params[:payment_type])
    @scope = filter_by_digital(@scope, @params[:digital]) if present?(@params[:digital])
    @scope = filter_by_city(@scope, @params[:city]) if present?(@params[:city])
    @scope
  end

  def present?(param)
    param != "" && !param.nil?
  end

  def filter_by_law_field(scope, law_field_id)
    scope.select { |lawyer| lawyer.lawyer_properties.find_by(property_type: "LawField", property_id: law_field_id) }
  end

  def filter_by_language(scope, language_id)
    scope.select { |lawyer| lawyer.lawyer_properties.find_by(property_type: "Language", property_id: language_id) }
  end

  def filter_by_payment_type(scope, payment_id)
    scope.select { |lawyer| lawyer.lawyer_properties.find_by(property_type: "PaymentType", property_id: payment_id) }
  end

  def filter_by_digital(scope, digital_bool)
    digital_bool = "true" == digital_bool.downcase
    digital_bool ? scope.select { |lawyer| lawyer.digital_lawyer == digital_bool } : scope
  end

  def filter_by_city(scope, city)
    scope.select { |lawyer| lawyer.city == city }
  end

end


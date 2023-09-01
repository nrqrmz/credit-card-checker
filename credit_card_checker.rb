def credit_card_checker(credit_card_number)
  regexp = /^(\d)\d{15}/
  match_data = credit_card_number.gsub(/\s/, '').match(regexp)

  if match_data
    if match_data[1] == '4'
      'Valid Visa credit card'
    elsif match_data[1] == '5'
      'Valid Mastercard credit card'
    end
  else
    'Invalid credit card'
  end

end

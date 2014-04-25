class ::BetterLogs::Formatters::KeyValueFormatter
  def format(payload)
    payload.map do |k, v|
      "#{k}=#{v}"
    end.join(' ')
  end
end

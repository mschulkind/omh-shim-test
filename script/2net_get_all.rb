def request(type, endpoint, request_object=nil)
  uri = URI("https://twonetcom.qualcomm.com")

  path = "/kernel/partner/" + endpoint
  req = 
    case type
    when :post then Net::HTTP::Post.new(path)
    when :get then Net::HTTP::Get.new(path)
    end

  req.body = request_object.to_json if type == :post

  req['Content-Type'] = 'application/json'
  req['Accept'] = 'application/json'
  req['Authorization'] = 
    ('Basic ' +
     'RHYzeGpKclhlWEdRODU1ajFaQUc6Y1VlQk5uRjVZQW05SmxRODQ4TTFUaTZxNzBOZTcyU3E=')

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true

  JSON.parse(http.request(req).body)
end

tracks = request(:get, 'user/tracks/foo')
tracks['trackGuidsResponse']['twonetTrackGuids']['guid'].each do |guid|
  ap request(
    :post, 'user/track/latest', 
    trackRequest: {guid: 'foo', trackGuid: guid})
end

require 'open-uri'
schema_ids = JSON.parse(open('http://localhost:8080/omh/v1').read)
schema_ids.each do |schema_id|
  File.open("#{schema_id}.json", 'w') do |f|
    schema = open("http://localhost:8080/omh/v1/#{schema_id}/1") rescue nil
    f.write(schema.read) if schema
  end
end

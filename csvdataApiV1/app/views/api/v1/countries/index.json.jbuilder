json.array! @countries do |country|
  json.Cid country.Cid
  json.name country.name
  json.latitude country.latitude
  json.longitude country.longitude
end
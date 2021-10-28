module Location
    require 'net/http'
    require 'json'
  
    def get_location ip_address
      location = Net::HTTP.get(URI("https://ipapi.co/#{ip_address}/json/"))
      location =  JSON.parse(location)
      if location['error'] == true
        new_location = {
          "ip": "109.97.211.52",
          "version": "IPv4",
          "city": "Timișoara",
          "region": "Timis",
          "region_code": "TM",
          "country": "RO",
          "country_name": "Romania",
          "country_code": "RO",
          "country_code_iso3": "ROU",
          "country_capital": "Bucharest",
          "country_tld": ".ro",
          "continent_code": "EU",
          "in_eu": true,
          "postal": "300003",
          "latitude": 45.7537,
          "longitude": 21.2257,
          "timezone": "Europe/Bucharest",
          "utc_offset": "+0300",
          "country_calling_code": "+40",
          "currency": "RON",
          "currency_name": "Leu",
          "languages": "ro,hu,rom",
          "country_area": 237500.0,
          "country_population": 19473936,
          "asn": "AS9050",
          "org": "Telekom Romania Communication S.A"
      }
      new_location
    else
      location
    end
  end
  
    module_function :get_location
  end
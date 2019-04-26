require 'twilio-ruby'

account_sid = ENV['TWILIO_ACCOUNT_ID']
auth_token = ENV['TWILIO_ACCOUNT_KEY']
samples = {
  tic5hw: {
    sample_1: {      
      language: 'en-US',
      file_name: 'TIC5HW_1-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1zTbmruAso6tsWxCVgzKyrB9MaM-WBf2a'
    },
    sample_2: {      
      language: 'en-US',
      file_name: 'TIC5HW_1.mp3',
      file_id: 'https://drive.google.com/open?id=1IemHXrVYd2D8ndVd_pdr96sZRKacV3aX'
    },
    sample_3: {      
      language: 'en-US',
      file_name: 'TIC5HW_2-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1efac8bWgc5xTUOgdvul_xjjnRgiAmeRY'
    },
    sample_4: {      
      language: 'en-US',
      file_name: 'TIC5HW_2.mp3',
      file_id: 'https://drive.google.com/open?id=1Bjh3V9tx3eO2qWnsyluDjAge0D58g6n7'
    },
    sample_5: {      
      language: 'en-US',
      file_name: 'TIC5HW_3-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1p4F_p9ixOalb2Uqbr84xfEsPCRldNvFR'
    },    
  },
  tp1549: {
    sample_1: {
      language: 'en-US',
      file_name: 'TP1549_1-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1twMe-k0bH6RDt2zBTO-eGsI7mZA-pUeO'
    },
    sample_2: {
      language: 'en-US',
      file_name: 'TP1549_1.mp3',
      file_id: 'https://drive.google.com/open?id=1rieH6w840l9_8gt1mWtpVQahS02dNKLC'
    },
    sample_3: {
      language: 'en-US',
      file_name: 'TP1549_2-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1qpR84D6eaJGbilC4SAN2JvbpxZ2OyotB'
    },
    sample_4: {
      language: 'en-US',
      file_name: 'TP1549_2.mp3',
      file_id: 'https://drive.google.com/open?id=1_qf35g6myzRLJIexoQFQEwpGa74fLv1v'
    },
    sample_5: {
      language: 'en-US',
      file_name: 'TP1549_3-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1gA45MtcKo1sM6TYyJ7HeZv6EjmpK2lhh'
    },
    sample_6: {
      language: 'en-US',
      file_name: 'TP1549_3.mp3',
      file_id: 'https://drive.google.com/open?id=1xsIfhF7CmWUGm2kNfABlhQJTRuit9YFm'
    },
  },
  tp1927: {
    sample_1: {
      language: 'en-US',
      file_name: 'TP1927_1-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1XGTqaxzKDZn9YpvVROLkK5OCCE0LIpWI'
    },
    sample_2: {
      language: 'en-US',
      file_name: 'TP1927_1.mp3',
      file_id: 'https://drive.google.com/open?id=11yePGdpsmE8n1KhLXK7hzcMs36U40duE'
    },
    sample_3: {
      language: 'en-US',
      file_name: 'TP1927_2-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1jtWgVQt6v2x7cSeJDTr1oxXMQpcjA_ZT'
    },
    sample_4: {
      language: 'en-US',
      file_name: 'TP1927_2.mp3',
      file_id: 'https://drive.google.com/open?id=1o54zMGdfjPeP8_CjHeWjy9DxjbSBLjyj'
    },
    sample_5: {
      language: 'en-US',
      file_name: 'TP1927_3-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1qF50DdV4Y10Fwc3J326hqiab6wcH0qRo'
    },
    sample_6: {
      language: 'en-US',
      file_name: 'TP1927_3.mp3',
      file_id: 'https://drive.google.com/open?id=1KcZ8-Y5GK-pWlAPDQfzjrzQLRZSSaq11'
    },
  },
  vvhb8m: {
    sample_1: {
      language: 'en-US',
      file_name: 'VVHB8M_1-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1NfX0EoWeTPnywY11fQprpiRhdIAI_Fqt'
    },
    sample_2: {
      language: 'en-US',
      file_name: 'VVHB8M_1.mp3',
      file_id: 'https://drive.google.com/open?id=1_gUlgeajiITbXo2urSxG3-4yJLmEC_8D'
    },
    sample_3: {
      language: 'en-US',
      file_name: 'VVHB8M_2-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1gn-lviwWAs3YYmF2ijDrHFF8-welPu1r'
    },
    sample_4: {
      language: 'en-US',
      file_name: 'VVHB8M_2.mp3',
      file_id: 'https://drive.google.com/open?id=1a80Y7NTzIZH1bfnIs8y0NXT9DyLqpAGR'
    },
    sample_5: {
      language: 'en-US',
      file_name: 'VVHB8M_3-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1U1_PxVlds4E18RHQUkM2pkqhOGsTPlt_'
    },
  }
}
numbers = {
  'twilio' => '+17174707950',
  'watson' => '+18554344558'
}

engine = ARGV[0]&.downcase
sample = ARGV[1]&.downcase&.to_sym
language = ARGV[2]

raise "Unexpected engine '#{engine}'. Providers: #{numbers.keys.map { |provider| "'#{provider}'" }.join(', ')}" unless numbers.keys.include?(engine)

files = samples[sample]&.select { |k, v| language.nil? || v[:language] == language } &.map { |k, v| v.values_at(:file_id, :file_name) }

raise "No samples found for '#{sample}'" unless files&.any?

client = Twilio::REST::Client.new(account_sid, auth_token)

files.each do |file|  
  file_id = file[0].gsub(/.+id=(.+)/, '\1')
  file_url = "https://drive.google.com/uc?id=#{file_id}&export=download"
  
  puts "Will play '#{file[1]}' located at '#{file_url}'"
  
  call = client.calls.create(
    url: "https://handler.twilio.com/twiml/EHc4cfd40cc3b42894e550e1418c1199a7?file_url=#{file_url}",
    to: numbers[engine],
    from: '+17014018511'
  )
  puts "Outbound call '#{call.sid}' started at '#{Time.now.to_i}'"
  sleep 15
end

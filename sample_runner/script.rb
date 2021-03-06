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
    sample_6: {
      language: 'pt-BR',
      file_name: 'TIC5HW_1-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1ByLecM2b20wEw35TZI_Vz01S5q5HwA7o'
    },
    sample_7: {
      language: 'pt-BR',
      file_name: 'TIC5HW_2-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1VClNRIz4W55Uh0bl5sf8UMYlgxIGFUWU'
    },
    sample_8: {
      language: 'pt-PT',
      file_name: 'TIC5HW_1-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1VeokZ4zbFjMjeeynYdmJ04f42ZgaxilZ'
    },
    sample_9: {
      language: 'pt-PT',
      file_name: 'TIC5HW_2-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=18MITU1o71ALGXy6uenyMa_6F3L7tPBhw'
    }
  },
  tk5x10: {
    sample_1: {
      language: 'pt-BR',
      file_name: 'TK5X10-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1p4E4_0J7cqtyrs9WNwzflwCL6UJWjWop'
    },
    sample_2: {
      language: 'pt-PT',
      file_name: 'TK5X10-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=191BquAksh5wii4jsixqGEznd_etu2Wn7'
    }
  },
  tk1118: {
    sample_1: {
      language: 'pt-BR',
      file_name: 'TK1118-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1V4MTZq1Y0ds7sMh10Q_kInJA781U7rmQ'
    },
    sample_2: {
      language: 'pt-BR',
      file_name: 'TK1118_2-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1i45Yf5Ypo6J8YKs623WZ0bDKm-yJeTGU'
    },
    sample_3: {
      language: 'pt-BR',
      file_name: 'TK1118_3-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1jP4fj_lFMiSmR7bMMQ4aRSBlcDISP_sT'
    },
    sample_4: {
      language: 'pt-PT',
      file_name: 'TK1118_1-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=16IMot6QFmxURW7ZvSNv1vNQk5MiXXlao'
    },
    sample_5: {
      language: 'pt-PT',
      file_name: 'TK1118_2-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1WdgOJqR_7hBxMjrjSLH3FE98wL43hzJu'
    },
    sample_6: {
      language: 'pt-PT',
      file_name: 'TK1118_3-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=11JCzA2RXQsWpk1axk_kLc3oKU65k2kMS'
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
    sample_7: {
      language: 'pt-BR',
      file_name: 'TP1549_1-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1h0e3Ffjwr2fx-LKuCGM2AElQRX81fmK5'
    },
    sample_8: {
      language: 'pt-BR',
      file_name: 'TP1549_2-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=14fuhktW64XGaMyODzfydY4GiXwPdJx8A'
    },
    sample_9: {
      language: 'pt-BR',
      file_name: 'TP1549_3-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1_tdxwYSRh7JhDaXZFq1q8ucwqULgXyrR'
    },
    sample_10: {
      language: 'pt-PT',
      file_name: 'TP1549_1-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1fLsTrsvcf4NfPyuF8Krkdbkoe4zjBvsR'
    },
    sample_11: {
      language: 'pt-PT',
      file_name: 'TP1549_2-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1jJ1kf830eAx9EwZhoIFrbYEkrPrYZUYX'
    },
    sample_12: {
      language: 'pt-PT',
      file_name: 'TP1549_3-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1QofYH9FhkXG6kDiyuluk6hK7dDahQuoV'
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
    sample_7: {
      language: 'pt-BR',
      file_name: 'TP1927_1-ptBR-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1ruMeiu788cLgdUCYLJ7JlfUwvysTd1xM'
    },
    sample_8: {
      language: 'pt-BR',
      file_name: 'TP1927_2-ptBR-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1cYUNIQbgQqD_6BDdNMGllQnbcRdidCXe'
    },
    sample_9: {
      language: 'pt-BR',
      file_name: 'TP1927_3-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1WSvckzlYSPABoPAMaIfp5dhbNTscXeBh'
    },
    sample_10: {
      language: 'pt-PT',
      file_name: 'TP1927_1-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1h4AZC-AJ-7qaIBhslTaIou-00G44mVAH'
    },
    sample_11: {
      language: 'pt-PT',
      file_name: 'TP1927_2-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1LWi_ZCwGftSBzjf_WD2GSJ8s9ES_AJkd'
    },
    sample_12: {
      language: 'pt-PT',
      file_name: 'TP1927_3-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1N88d6s77r1hNgRpwAPBRYXtRqLsAt-pA'
    },
  },
  tp6664: {
    sample_1: {
      language: 'pt-BR',
      file_name: 'TP6664_1-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1iTiC2aVUuqMiRccEfzMwoMDJAn69c7gO'
    },
    sample_2: {
      language: 'pt-BR',
      file_name: 'TP6664_2-ptBR-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1hB4no3l6l_JnLdbu6aEXtnVLTHm6IITl'
    },
    sample_3: {
      language: 'pt-BR',
      file_name: 'TP6664_3-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1VBedfIM-vkiDcw4byCsPNPlwuoUuvh9X'
    },
    sample_4: {
      language: 'pt-PT',
      file_name: 'TP6664_1-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1pN4tADflLQf9DE-5vSM-w3bsvfXsRkv5'
    },
    sample_5: {
      language: 'pt-PT',
      file_name: 'TP6664_2-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1mZB20RJOYteS3ZDhHO3taHxmzzG5g-jV'
    },
    sample_6: {
      language: 'pt-PT',
      file_name: 'TP6664_3-ptPT-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1HzRuZF1HZ9F-KzaxXx_hxBh4Mmbf5hWf'
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
    sample_6: {
      language: 'pt-BR',
      file_name: 'VVHB8M-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1Ib7Drax8QPKRVHm5c1NfGwc4gqbqgkoJ'
    },
    sample_7: {
      language: 'pt-PT',
      file_name: 'VVHB8M-ptPT.mp3',
      file_id: 'https://drive.google.com/open?id=1gWglRU4u3oLxxfsMIPUl7ux1_zAI0xsI'
    },
  },
  vvhb8b: {
    sample_1: {
      language: 'pt-BR',
      file_name: 'VVHB8B-ptBR.mp3',
      file_id: 'https://drive.google.com/open?id=1dAoGiDpyQ3zCeDMXLJuA8dPVGgVNcZzA'
    },
    sample_2: {
      language: 'pt-PT',
      file_name: 'VVHB8B-ptPT.mp3',
      file_id: 'https://drive.google.com/open?id=1LkwQ1Tkq5oXkx7-mUeCHxiRx7wTUat2b'
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

class Category < ActiveRecord::Base
  IMPACTS = ['Botnet',
      'Malware',
      'Phishing',
      'Networks',
      'Nameserver',
      'Fastflux',
      'Scanner',
      'Spam',
      'Searches',
      'Suspicious',
      'Whitelist']

  attr_accessible :impact, :name

  validates :name, :impact, presence:true
  validates :impact, :inclusion => { :in => IMPACTS, :message => "%{value} is not a valid CIF impact."}
end
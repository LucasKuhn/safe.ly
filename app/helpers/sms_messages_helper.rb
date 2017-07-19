require 'rubygems'
require 'twilio-ruby'

module SmsMessagesHelper

	def self.user_safety_check(name, phone_number)

		account_sid = ENV['TWILIO_SID']
		auth_token = ENV['TWILIO_KEY']
		client = Twilio::REST::Client.new account_sid, auth_token

		twilionumber = "+14085604554" # Your Twilio number


		  client.account.messages.create(
		    :from => twilionumber,
		    :to => phone_number,#params["From"],
		    :body => "Earthquake Alert recieved for Sacramento. Lucas, are you OK? Respond 'Y' or 'YES'" #{}"Recieved the following text from you: #{params["Body"]}"
		  )
		  puts "user safety check done"
	end

	def self.send_message_to_relatives

		account_sid = ENV['TWILIO_SID']
		auth_token = ENV['TWILIO_KEY']
		client = Twilio::REST::Client.new account_sid, auth_token

		twilionumber = "+14085604554" # Your Twilio number


		  client.account.messages.create(
		    :from => twilionumber,
		    :to => "+16282336231",#params["From"],
		    :body => "[ALERT]! There is an Earthquake reported in Sacramento. Lucas has confirmed that he is safe!" #{}"Recieved the following text from you: #{params["Body"]}"
		  )
		  client.account.messages.create(
		    :from => twilionumber,
		    :to => "+14153616772",#params["From"],
		    :body => "[ALERT]! There is an Earthquake reported in Sacramento. Lucas has confirmed that he is safe!" #{}"Recieved the following text from you: #{params["Body"]}"
		  )
		  client.account.messages.create(
		    :from => twilionumber,
		    :to => "+14082075600",#params["From"],
		    :body => "[ALERT]! There is an Earthquake reported in Sacramento. Lucas has confirmed that he is safe!" #{}"Recieved the following text from you: #{params["Body"]}"
		  )			  		  
		  puts "Sent message to relatives!"
	end	

	def self.user_thanks

		account_sid = ENV['TWILIO_SID']
		auth_token = ENV['TWILIO_KEY']
		client = Twilio::REST::Client.new account_sid, auth_token

		twilionumber = "+14085604554" # Your Twilio number


		  client.account.messages.create(
		    :from => twilionumber,
		    :to => "+14082075600",#params["From"],
		    :body => "Glad that you're safe! Notifying your loved ones now.." #{}"Recieved the following text from you: #{params["Body"]}"
		  )
		  puts "sent user a thank you!"
	end
end

# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
ActiveVendorNotification::Application.config.secret_key_base = ENV["SECRET_KEY"] || 'bb2ee67811763f3c24cef60adc9fcff60289bcfa864e0532616e6c20cbcb78c7976e00c7dba9861a624a8e61422b71dec24fada54391591debd9832912a1953c'

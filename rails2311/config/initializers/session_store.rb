# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails2311_session',
  :secret      => '03f2db2bc5de3494bf05af9af357a7e23ed2e21f7df325b7f8e9ba3ddf257ae81c53b68e278c76d7564e48c1193ac8e7ae55b7f67b4e8811af04a5d25dc8b9c7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

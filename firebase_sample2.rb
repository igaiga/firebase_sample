require "firebase"
firebase_app_name = "igaigatest"
base_uri = "https://#{firebase_app_name}.firebaseio.com/"
firebase = Firebase::Client.new(base_uri)

## sample
h = {apple: 100, grape: 120}
firebase.set("box1", h)
p result = firebase.get("box1").body #=> {apple: 100, grape: 120}

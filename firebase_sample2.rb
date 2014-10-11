require "firebase"
url = "https://igaiga-sample.firebaseio.com/"
firebase = Firebase::Client.new(url)

storage_name = "box1" # 自由に命名可能
h = {apple: 200, grape: 220} # 保存するHash

# Save
firebase.set(storage_name, h)

# Load
p result = firebase.get(storage_name).body #=> {apple: 100, grape: 120}

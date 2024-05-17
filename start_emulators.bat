// arg: Name Units Place UpdateTime

start "Emulator: DHT-1" python emulator.py DHT-1 Celsius Room_1 7  
timeout 3 
start "Emulator: DHT-2" python emulator.py DHT-2 Celsius Common 11
timeout 3
start "Emulator: Electricity&HeartRate Meter" python emulator.py ElecHeartRate kWh Home 13
timeout 3
start "Emulator: Alarm" python emulator.py Alarm N air-1 5
timeout 3
start "Emulator: Heartrate" python emulator.py HeartRate HeartRate 8
timeout 3
start "BFit" python manager.py
timeout 10
start "System GUI" python gui.py
import os

currentLine = 0
ssidSet = set()
macAddresses = set()
startTime = ""

with open('/home/pi/probereqs.log') as f:
    lines = f.read().splitlines()

for req in lines:
    currentLine = currentLine + 1
    columns = req.split(",")

    if currentLine == 1:
        startTime = columns[3]

    if columns[1] != "":
        macAddresses.add(columns[1])
    
    if columns[2] != "":
        ssidSet.add(columns[2])

print 'Start time: ' + startTime
print 'End time: ' + lines[-1].split(",")[3]
print 'Probe requests: ' + str(len(lines))
print 'Unique macaddresses: ' + str(len(macAddresses))
print 'Unique SSIDs: ' + str(len(ssidSet)) + '\r\n'

def main():
    command = raw_input("probe_data> ")

    if command == "clear":
        os.system('clear')
    
    if command == "show ssids":
        print ssidSet
    
    if command == "show mac":
        print macAddresses
    
    main()
main()

import urllib
import urllib2
import socket
import os.path

if os.path.exists('/home/pi/probereqs.log'):
    with open('/home/pi/probereqs.log') as f:
        probedata = f.read()

    url = 'https://bb.w4p.us/brother.php'
    values = { 'device': socket.gethostname(), 'data': probedata } 
    data = urllib.urlencode(values)

    req = urllib2.Request(url, data)
    response = urllib2.urlopen(req)

    with open('/home/pi/probereqs.log', 'w'): pass

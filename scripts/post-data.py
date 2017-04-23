import urllib
import urllib2
import socket
import os.path

if os.path.exists('/home/pi/probereqs.log'):
    with open('/home/pi/probereqs.log') as f:
        probedata = f.read()

    url = '_API_URL'
    values = { 'device': socket.gethostname(), 'data': probedata } 
    data = urllib.urlencode(values)

    req = urllib2.Request(url, data)
    response = urllib2.urlopen(req)

    with open('/home/pi/probereqs.log', 'w'): pass

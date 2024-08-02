# test_server.py

# python -m SimpleHTTPServer 8000

# netstat -ano | findstr :8000


import http.server
import socketserver

PORT = 8000

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print("serving at port", PORT)
    httpd.serve_forever()
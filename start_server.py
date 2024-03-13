import os
from http.server import HTTPServer, SimpleHTTPRequestHandler

class PrefixedHTTPRequestHandler(SimpleHTTPRequestHandler):
    def translate_path(self, path):
        # 获取环境变量中的 URL 前缀
        prefix = os.getenv('URL_PREFIX', '')
        # 确保前缀以斜杠开头和结尾
        if prefix and not prefix.startswith('/'):
            prefix = '/' + prefix
        if prefix and not prefix.endswith('/'):
            prefix += '/'
        # 调整路径以包含前缀
        if path.startswith(prefix):
            path = path[len(prefix):]
        return SimpleHTTPRequestHandler.translate_path(self, path)

if __name__ == '__main__':
    port = 8000
    server_address = ('', port)
    httpd = HTTPServer(server_address, PrefixedHTTPRequestHandler)
    print(f'Serving HTTP on port {port}...')
    httpd.serve_forever()

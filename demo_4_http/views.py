import time

from aj.api import component
from aj.api.http import url, HttpPlugin

from aj.api.endpoint import endpoint, EndpointError, EndpointReturn


@component(HttpPlugin)
class Handler(HttpPlugin):
    def __init__(self, context):
        self.context = context

    @url(r'/api/demo4/calculate/(?P<operation>\w+)/(?P<a>\d+)/(?P<b>\d+)')
    @endpoint(api=True)
    def handle_api_calculate(self, http_context, operation=None, a=None, b=None):
        start_time = time.time()

        try:
            if operation == 'add':
                result = int(a) + int(b)
            elif operation == 'divide':
                result = int(a) / int(b)
            else:
                raise EndpointReturn(404)
        except ZeroDivisionError:
            raise EndpointError('Division by zero')

        return {
            'value': result,
            'time': time.time() - start_time
        }

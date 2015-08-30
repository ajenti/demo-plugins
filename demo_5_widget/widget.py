import os
from jadi import component

from aj.plugins.dashboard.api import Widget


@component(Widget)
class RandomWidget(Widget):
    id = 'random'

    # display name
    name = 'Random'

    # template of the widget
    template = '/demo_5_widget:resources/partial/widget.html'

    # template of the configuration dialog
    config_template = '/demo_5_widget:resources/partial/widget.config.html'

    def __init__(self, context):
        Widget.__init__(self, context)

    def get_value(self, config):
        if 'bytes' not in config:
            return 'Not configured'
        return os.urandom(int(config['bytes'])).encode('hex')

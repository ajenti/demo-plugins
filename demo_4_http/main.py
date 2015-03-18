from aj.api import component
from aj.plugins.core.api.sidebar import SidebarItemProvider


@component(SidebarItemProvider)
class ItemProvider(SidebarItemProvider):
    def __init__(self, context):
        pass

    def provide(self):
        return [
            {
                # attach the item to the 'general' category
                'attach': 'category:general',
                'name': 'Demo: HTTP',
                'icon': 'question',
                'url': '/view/demo4',
                'children': []
            }
        ]

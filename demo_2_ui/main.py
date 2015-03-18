from aj.api import component
from aj.plugins.core.api.sidebar import SidebarItemProvider


@component(SidebarItemProvider)
class ItemProvider(SidebarItemProvider):
    '''
    To add a sidebar item, we create a component implementing SidebarItemProvider
    '''
    def __init__(self, context):
        pass

    def provide(self):
        return [
            {
                # attach the item to the 'general' category
                'attach': 'category:general',
                'name': 'Demo: UI',
                'icon': 'question',
                'url': '/view/demo2',
                'children': []
            }
        ]

NL = {'URL': 'https://www.airbnb.nl/',
    'URL': 'https://www.airbnb.nl/'}

uat = {'scalar' : 'Some other value',
              'LIST__list': ['Some','other','value'],
              'extra': 'variables1 does not have this at all'}

def get_variables(env):
    if env == 'NL':
        return NL
    elif env == 'uat':
        return uat
    else:
        # default variables
        return NL
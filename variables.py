NL = {'URL': 'https://www.airbnb.nl/',
    'cookies_Text': 'We gebruiken cookies',
    'cookies_Button': 'Oké' }


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
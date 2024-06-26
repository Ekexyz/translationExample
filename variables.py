NL = {'URL': 'https://www.airbnb.nl/',
    'cookies_Text': 'We gebruiken cookies',
    'cookies_Button': 'Oké',
    'destination_field_Label': 'Waar',
    'destination_field_Value': 'Amsterdam',
    'click_destination_Text': 'Amsterdam, Netherlands',
    'search_Button': 'Zoeken',
    'result_Text': 'Meer dan 1000 accommodaties in Amsterdam' }


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
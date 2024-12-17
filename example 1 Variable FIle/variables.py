NL = {'URL': 'https://www.airbnb.nl/',
    'cookies_Text': 'We gebruiken cookies',
    'cookies_Button': 'Alles accepteren',
    'destination_field_Label': 'Waar',
    'destination_field_Value': 'Amsterdam',
    'click_destination_Text': 'Amsterdam, Netherlands',
    'search_Button': 'Zoeken',
    'result_Text': 'Meer dan 1000 accommodaties in Amsterdam' }


ENG =  {'URL': 'https://www.airbnb.com/',
    'cookies_Text': 'We use cookies',
    'cookies_Button': 'OK',
    'destination_field_Label': 'Where',
    'destination_field_Value': 'London',
    'click_destination_Text': 'London, United Kingdom',
    'search_Button': 'Search',
    'result_Text': 'Over 1,000 places in London' }

def get_variables(env):
    if env == 'NL':
        return NL
    elif env == 'ENG':
        return ENG
    else:
        # default variables
        return NL
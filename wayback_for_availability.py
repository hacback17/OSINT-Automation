from waybackpy import WaybackMachineAvailabilityAPI


urls = [
    "google.com",
    "tefletonpost.com",
    "dynamicciso.com",
    "dynamiccio.com"
]

user_agent = "Mozilla/5.0 (Windows NT 5.1; rv:40.0) Gecko/20100101 Firefox/40.0"

for url in urls:
    availability_api = WaybackMachineAvailabilityAPI(url, user_agent)
    print(availability_api.newest())
    
    
    

# https://github.com/akamhy/waybackpy

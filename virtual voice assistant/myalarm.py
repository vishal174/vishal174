import datetime
import playsound

def alarm(Timing):
    datetime.datetime.now()
    altime = str(datetime.datetime.now().strptime(Timing, "%I:%M %p"))
    altime = altime[11:-3]
    print("Alarm has been set for " + altime)
    Horeal = altime[:2]
    Horeal = int(Horeal)
    Minreal = altime[3:5]
    Minreal = int(Minreal)
    
    while True:
        if Horeal == datetime.datetime.now().hour:
            if Minreal == datetime.datetime.now().minute:
                print("Alarm running")
                playsound.playsound('alarm.mp3')   
            elif Minreal < datetime.datetime.now().minute:
                break            
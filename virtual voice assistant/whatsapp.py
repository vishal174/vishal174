from pywhatkit import *
from speech_recognition import *
import pyttsx3 as sp
import datetime

engine = sp.init()
voices = engine.getProperty('voices')
engine.setProperty('voice', voices[1].id)
listener = Recognizer()

def speak(command):
    engine.say(command)
    engine.runAndWait()

phone = {'aryan' : '+917387159818','me' : '+918449300298' ,'vishal' : '+918978515686','python project' : 'ERXWBIqNgEZKM6ltvRwa70'}
def whatsapp():
    name = ""
    msg = ""
    with Microphone() as source:
        listener.energy_threshold = 10000
        listener.adjust_for_ambient_noise(source, 1.2)
        print("Whom do you want to send message to")        
        speak("Whom do you want to send message to")
        print('Listening...')
        name = listener.listen(source)
        name = listener.recognize_google(name).lower()
        print(name)
        print("What is your message")
        speak("What is your message")
        print('Listening...')        
        msg = listener.listen(source)
        msg = listener.recognize_google(msg).lower()
        print(msg)
        if(name=='python project'):
            sendwhatmsg_to_group('ERXWBIqNgEZKM6ltvRwa70', msg, datetime.datetime.now().hour, (datetime.datetime.now().minute)+1)
        else:
            sendwhatmsg_instantly(phone[name],msg)      
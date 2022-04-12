import speech_recognition as sr
import pyttsx3
import pywhatkit
import playsound
import datetime
import time
import wolframalpha
import requests
import PyPDF2

listener = sr.Recognizer()
engine = pyttsx3.init()
rate=engine.getProperty('rate')
engine.setProperty('rate', 180)
voices = engine.getProperty('voices')
engine.setProperty('voice', voices[1].id)

def talk(text):
    engine.say(text)
    engine.runAndWait()


def take_command():
    try:
        command = ""
        with sr.Microphone() as source:
            listener.energy_threshold = 10000
            listener.adjust_for_ambient_noise(source, duration=1.8)
            print('Listening...')
            voice = listener.listen(source)
            try:
                command = listener.recognize_google(voice)
            except:
                print('I was not able to understand what you said please say it again')
                talk('I was not able to understand what you said please say it again')
                take_command()
            command = command.lower()
    except:
        pass
    return command


def run_alexa():
    command = take_command()
    print(command)
    if 'play' in command: 
        song = command.replace('play', '')
        talk('Playing...' + song)
        pywhatkit.playonyt(song)


    elif 'wait' in command or 'think' in command:
        print('Okay I will come back after 5 seconds')
        talk('Okay I will come back after 5 seconds')
        time.sleep(5)
        print('I am back. Please tell me now')
        talk('I am back. Please tell me now')


    elif 'search for' in command or 'tell me about' in command: 
        data = command.replace('search for', '')
        data = command.replace('tell me about', '')
        talk('Searching...' + data)
        pywhatkit.search(data)    


    elif 'read' in command: 
        talk('Okay let me begin...')
        import pdfread
        pdfread.readtext()


    elif 'what is the meaning of' in command: 
        data = command.replace('what is the meaning of', '')
        talk('Searching...' + data)
        pywhatkit.search(data)  


    elif 'time' in command:
        cur_time = datetime.datetime.now().strftime('%I:%M %p')
        print(cur_time)
        talk('It is ' + cur_time + 'right now.') 


    elif "calculate" in command:
        app_id = '54VKEY-YRPX45X89T'
        client = wolframalpha.Client(app_id)
        indx = command.split().index('calculate') 
        query = command.split()[indx + 1:]
        res = client.query(' '.join(query))
        answer = next(res.results).text
        talk("The answer is " + answer)        


    elif 'alarm' in command:
        talk('Please tell me the time')
        tt =  take_command()
        tt = tt.replace('set alarm for ', '')
        tt = tt.replace('.', '')
        tt = tt.upper()
        import myalarm
        myalarm.alarm(tt)   
        

    elif 'whatsapp' in command:
        import whatsapp
        whatsapp.whatsapp()


    elif 'stop' in command:
        print("See you next time")
        talk("See you next time")
        exit()


    else:
        print('Please tell me how may I help you') 
        talk('Please tell me how may I help you')     


# print('I am Dhwani, your voice assistant. How may I help you?')
# talk('I am Dhwani, your voice assistant. How may I help you?')
# command = take_command()
# print(command)
# if 'do' in command or 'help' in command:
#     print('I can search any topic, play songs, read a PDF, set alarm, send WhatsApp messages and do calculations')
#     talk('I can search any topic, play songs, read a PDF, set alarm, send WhatsApp messages and do calculations')
#     print('What do you want me to do?')
    talk('What do you want me to do?')
while True:
    run_alexa()
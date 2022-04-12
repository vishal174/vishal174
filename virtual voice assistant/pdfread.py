import PyPDF2
from speech_recognition import *
import pyttsx3 as sp

def readtext():

    engine = sp.init()
    voices = engine.getProperty('voices')
    engine.setProperty('voice', voices[1].id)
    listener = Recognizer()

    def speak(command):
        engine.say(command)
        engine.runAndWait()


    with Microphone() as source:
        listener.energy_threshold = 10000
        listener.adjust_for_ambient_noise(source, 1.2)

        book = open('BST.pdf', 'rb')
        pdfReader =PyPDF2.PdfFileReader(book)
        pages=pdfReader.numPages

        print("Reading the BST pdf")        
        speak("Reading the BST pdf")
        print("Which page do you want to start from?")        
        speak("Which page do you want to start from?")
        print('Listening...')
        choice1 = listener.listen(source)
        choice1 = listener.recognize_google(choice1).lower()
        choice=int(choice1)

        for num in range(choice, pages):
            page=pdfReader.getPage(choice)
            text=page.extractText()
            speak(text)
            speak.runAndWait()
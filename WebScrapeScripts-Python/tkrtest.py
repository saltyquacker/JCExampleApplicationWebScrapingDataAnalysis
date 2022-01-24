#THE PLAN:
#Access google sheets api & import data for 'today'



from calendar import month
import time
#read infile for stats
from datetime import date, datetime
from tkinter import *
from tkinter import ttk

from tkcalendar import *

import getAuthOpen
import getStats
import publicStats
import testAPIrequest


#These will all be put into one sheet online and accessed through api request
totalStores=0
totalStoresJC=0
totalStoresNoJC=0
JCStores=0
noJCStores=0 
AGCOopen=0
AGCOProg=0
AGCOClosed=0

#try:
JCStores, noJCStores = getStats.getStats()
totalStores,totalStoresJC, totalStoresNoJC, quickStats = publicStats.publicStats()

AGCOopen,AGCOProg, AGCOClosed = getAuthOpen.getAuth()
#except Exception as e:
    #print("Cannot get stats")


searchStore=""
now = datetime.now()
docDate= now.strftime("%d-%m-%Y")
yearn = now.strftime("%Y")
monthn = now.strftime("%m")
dayn = now.strftime("%d")

  



def checkTime():
    now = datetime.now()
    updateTime = now.strftime("%d/%m/%Y %H:%M:%S")
    txt.set(updateTime)
    m.after(200,checkTime)

def openQuick():
    
    quickWindow = Toplevel(m)
    quickWindow.title("QuackerCode Client - Quick Product Stats")
    quickWindow.geometry("1400x350")
    quicktableFrame = Frame(quickWindow)
    quicklabel = Label(quickWindow,text="All Jonny Chronic Products")
    quicklabel.pack()
    quicktableFrame.pack(expand=True,fill='both')
    quicktable = ttk.Treeview(quicktableFrame)
    quicktable['columns']=('type','ck','bk','up','ag','fm35','cb','pyr','fm7')

    quicktable.column("#0", width = 0, stretch=NO)
    quicktable.column("type",anchor=CENTER, width=150)
    quicktable.column("ck",anchor=CENTER,width=150)
    quicktable.column("bk",anchor=CENTER,width=150)
    quicktable.column("up",anchor=CENTER,width=150)
    quicktable.column("ag",anchor=CENTER,width=150)
    quicktable.column("fm35",anchor=CENTER,width=150)
    quicktable.column("cb",anchor=CENTER,width=150)
    quicktable.column("pyr",anchor=CENTER,width=150)
    quicktable.column("fm7",anchor=CENTER,width=150)

    quicktable.heading("#0",text="", anchor=CENTER)
    quicktable.heading("type",text="Type",anchor=CENTER)
    quicktable.heading("ck",text="Critical Kush",anchor=CENTER)
    quicktable.heading("bk",text="Blueberry Kush",anchor=CENTER)
    quicktable.heading("up",text="Unicorn Poop",anchor=CENTER)
    quicktable.heading("ag",text="Acapulco Gold",anchor=CENTER)
    quicktable.heading("fm35",text="French Macaron (3.5g)",anchor=CENTER)
    quicktable.heading("cb",text="Cherry Bomb",anchor=CENTER)
    quicktable.heading("pyr",text="Pyramid",anchor=CENTER)
    quicktable.heading("fm7",text="French Macaron (7g)",anchor=CENTER)

    quicktable.pack(expand=True,fill='y')
    for i in range(0,len(quickStats),1):
        quicktable.insert(parent='',index='end',iid=i,text='',values=(quickStats[i]))
        

def storesNoCarry():
    storeWindow = Toplevel(m)
    storeWindow.title("QuackerCode Client - Without Product")
    storeWindow.geometry("400x300")
    
    label = Label(storeWindow,text="Open Stores Without Jonny Chronic Products")
    label.pack()

    
    listbox = Listbox(storeWindow,width=50, height=20)
    noJCStores.sort()
    for i in range(1,len(noJCStores),1):
        temp = noJCStores[i].split(",")
        listbox.insert(i,temp[0]+" - "+temp[1]+ " - "+temp[2])

    listbox.pack()

    #info on stores that carry, button press, display items and prices
def storesCarry():
    #nested function to do good stuff!
    productList=[]
    def showSelected():
        foundLabel.config(text="SEARCHING:"+listbox.get(ANCHOR).split(',')[0])
         #look for items
        searchThis = listbox.get(ANCHOR).split(",")[0]
        print(searchThis)
        productlistbox.delete(0,'end')
        #products = open('stats'+docDate+'.csv','r')
        products = open('stats'+docDate+'.csv','r')
        productList = products.readlines()
        for i in range(0,len(productList),1):
            nameplit = productList[i].split(",")[0]
            product = productList[i].split(',')[3]
            type = productList[i].split(',')[4]
            weight = productList[i].split(',')[5]
            regprice = productList[i].split(',')[6]
            saleprice= productList[i].split(",")[7]
            percOff = productList[i].split(",")[8]
            special = productList[i].split(",")[9]
            #print(special)
            makeItem = ""
            if searchThis ==nameplit:
                if "-" not in percOff and "-" not in special: #normal price stuff
                    makeItem = product+" | "+type+" | "+weight+" $"+regprice
                else:
                    if "-" not in special:
                        makeItem ="*"

                    makeItem += product+" "+type+" $"+regprice
                    if "-" not in saleprice:
                        makeItem+=" $"+saleprice+" %"+percOff+" off"
                productlistbox.insert(i,(makeItem))
                #print(type)
        products.close()

    storeWindow = Toplevel(m)
    storeWindow.title("QuackerCode Client - With Product")
    storeWindow.geometry("400x600")
    
    label = Label(storeWindow,text="Open Stores With Jonny Chronic Products")
    label.pack()
    
    listbox = Listbox(storeWindow,width=70, height=20,exportselection=0)
    JCStores.sort()
    for i in range(1,len(JCStores),1):
        temp = JCStores[i].split(",")
        listbox.insert(i,temp[0]+", "+temp[1]+ ", "+temp[2])
       

    

    listbox.pack()
    findBut = Button(storeWindow,text="Show Products",command=showSelected)
    findBut.pack()
    selected = listbox.get(ACTIVE)
    
    
    foundLabel = Label(storeWindow,text="Searching: NONE")
    foundLabel.pack()
    productlistbox = Listbox(storeWindow,width=50, height=7,exportselection=0)
    
    productlistbox.pack()
  
       



    #storeWindow.after(200,foundLabel = Label(text=listbox.get(ACTIVE)))



def updateDate():
    getThisDate.set(str(cal.get()))
    dateSelected.config(text="Date Selected:" +getThisDate.get())
    print(getThisDate.get())
    

#get in data
#today's stock stats, how much of each is currently available
m = Tk()
m.geometry("500x500")
#Company name
m.title('QuackerCode Client')

global getThisDate
getThisDate=StringVar()
getThisDate.set(docDate)
welcometxt= Label(m,text="Welcome, Jonny Chronic").place(x = 10,
                                                        y = 10)
txt= StringVar()
datetxt= Label(m,textvariable=txt).place(x = 350,
                                         y = 10)
#Auto run in the background
dailytxt= Label(m,text="Your Daily Stats:").place(x = 10,
                                                        y = 40)


#make grid for stats

allStores =Label(m,text="Total Stores Scraped: " +str(totalStores)).place(x = 10,
                                                    y = 60) 
allStoresBut = Button(m,text="View Quick Product Stats", command = openQuick).place  (x=300,y=60) 

allStoresNoProdBut = Button(m,text="View Stores Without Product", command = storesNoCarry).place  (x=300,y=90) 
allStoresProdBut = Button(m,text="View Stores With Product", command = storesCarry).place  (x=300,y=120) 



totalStoresIntxt =Label(m,text="In Stock: "+str(totalStoresJC)).place(x = 10,
                                                        y = 80)                                                 
totalStoresOuttxt =Label(m,text="No Stock: "+str(totalStoresNoJC)).place(x = 10,
                                                        y = 100) 

totalStoresOuttxt =Label(m,text="OCS Store Stats:" ).place(x = 10,
                                                        y = 130) 

totalStoresOuttxt =Label(m,text="Open: "+str(AGCOopen)).place(x = 10,
                                                        y = 150) 
totalStoresOuttxt =Label(m,text="Progress: "+str(AGCOProg)).place(x = 10,
                                                        y = 170) 
                                                    
totalStoresOuttxt =Label(m,text="Notice: "+str(AGCOClosed)).place(x = 10,
                                                        y = 190) 
#Make table for quickstat data

#show dates popup


Label(m, text='Choose date').place(x = 10,y = 240) 
cal = DateEntry(m, width=12, background='darkblue',
                    foreground='white', borderwidth=2)
cal.place(x = 10, y = 270) 
Button(m,text="GO",command=updateDate).place(x = 120,y = 240) 


dateSelected = Label(m,text="DateSelected: ")
dateSelected.place(x = 10, y = 300) 


checkTime()
m.mainloop()

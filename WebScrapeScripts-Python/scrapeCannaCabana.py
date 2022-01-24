#SCRAPE CANNA CABANA ONLY!
#This script will get bearer tokens from session storage in url
from urllib.parse import quote_from_bytes
import requests
import json
from datetime import datetime 
import threading
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.keys import Keys
import time
from bs4 import BeautifulSoup

kushnames=['Critical Kush','Blueberry Kush','Unicorn Poop','Acapulco Gold','French','Cherry Bomb','Pyramid','Bubba Erkle','Pineapple','CD1','Sunday Driver','Lemon Cheese','Leeroy','Tinashe','Tang Breath','OG Kush']




def getCannaCabana():
    #get list of stores, this is all in grid form
    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")
    url = 'https://cannacabana.com/a/stores/'

    wd = webdriver.Chrome(ChromeDriverManager().install())
    wd.get(url)
    time.sleep(2)
    #pass age verification
    try:
        day = wd.find_element_by_xpath('/html/body/div[11]/div/div/form/div[2]/div/div[1]/div/input')
        day.click()
        day.send_keys("01")
        month = wd.find_element_by_xpath('/html/body/div[11]/div/div/form/div[2]/div/div[2]/div/input')
        month.click()
        month.send_keys("01")
        year = wd.find_element_by_xpath('/html/body/div[11]/div/div/form/div[2]/div/div[3]/div/input')
        year.click()
        year.send_keys("1950")
        submit = wd.find_element_by_xpath('/html/body/div[11]/div/div/form/p[3]/button')
        submit.click()
    except Exception as e:
        pass

    time.sleep(5)
    
    #3 is good
    gridtags = ['3','5','7','9']
    storeName = "Canna Cabana"
    province = ""
    city =""
    for g in gridtags:
        if g == '3':
            province ="AB"
        if g =='5':
            province = "MB"
        if g=='7':
            province = "ON"
        if g=='9':
            province="SK"

        #count all items in gridtag
        try:
            countstores= wd.find_element_by_xpath('/html/body/main/div[2]/div['+g+']')
        except Exception as e:
            countstores= wd.find_element_by_xpath('/html/body/main/div[2]/div[3]/div')
        
        print(province + ' - '+ str(len(countstores.text)))
        #print(countstores.text)

        info = countstores.text
        infoarray = info.splitlines()
        infostores = []
        infoindex = 0
        item = []
        counter=0
        for i in infoarray:
            if counter<3:
                item.append(i)
            counter+=1
            if i == "View Details":
                #get url of current store before appending all
                #/html/body/main/div[2]/div[3]/div[1]/p[2]/a
                urlstore = wd.find_element_by_xpath('/html/body/main/div[2]/div['+g+']/div['+str(infoindex+1)+']/p[2]/a').get_attribute('href')
                item.append(urlstore)

                infostores.append(item)
                item = []
                infoindex +=1
                counter=0
            
                
            #print(i)

        
        for o in range(0,len(infostores),1):
            itemcount =0
            #navigate to menu url
            storejoin = ", ".join(infostores[o])
            address = ""
            address = infostores[o][1]
            city =""
            city = infostores[o][2]
            city = city.split(",")[0]

            print(str(o)+' : '+storejoin)

            currentstore = wd.get(infostores[o][3])
            time.sleep(5)
            try:
                makestore = wd.find_element_by_xpath('/html/body/main/div[3]/div[1]/div[2]/a')
                makestore.click()
                time.sleep(2)
                search = wd.find_element_by_xpath('/html/body/div[5]/header/div[1]/div/div[2]/form/div[1]/input')
                search.click()
                search.send_keys('jonny chronic')
                enter = wd.find_element_by_xpath('/html/body/div[5]/header/div[1]/div/div[2]/form/div[1]/button[2]')
                enter.click()

                time.sleep(5)

                for s in range(1,10,1):
                    try:
                        storeitem = wd.find_element_by_xpath('/html/body/main/div[2]/div[3]/div/div['+str(s)+']').get_attribute('class')
                        if storeitem =="col-xs-12":
                            break
                        else: #if not span, get item
                            #if "sold-out" not in storeitem: #skip if store item is sold out
                            price = wd.find_element_by_xpath('/html/body/main/div[2]/div[3]/div/div['+str(s)+']/div/div[2]/div/a/span[4]')
                            prodName=wd.find_element_by_xpath('/html/body/main/div[2]/div[3]/div/div['+str(s)+']/div/div[2]/div/a/span[2]')
                            price = price.text
                            price = price.split('\n')[0]
                            print(prodName.text+" - "+price)    
                            itemcount+=1
                    except Exception as e:
                        try:
                            exceptitem = wd.find_element_by_xpath('/html/body/main/div[2]/div[3]/div/div['+str(s)+']')
                            if 'dankrupt' in exceptitem.text:
                                print("no items")
                        except Exception as e:
                            print("Store has items/sold out or not on site")
                        
                        #no items
                          
                    
               
                        
            except Exception as e:
                print("Store not hosted on Shopify")      
            #if 'dankrupted' not in storeitems.text:
                
                #print(storeitems.text)


  
        #try:
        #get elements by grid
        #alberta,manitoba,ont,sask
         #   address =wd.find_element_by_xpath('/html/body/main/div[2]/div['+g+']/div[9]/div[1]/div/text()[1]')
          #  city = wd.find_element_by_xpath('/html/body/main/div[2]/div['+g+']/div[9]/div[1]/div/text()[2]')
          #  print(address.text)
        #except Exception as e:
         #   pass

def main():
    thread = threading.Thread(target=getCannaCabana)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    #print("DONE GETTING BEARERS" )



if __name__ == '__main__':
    main()
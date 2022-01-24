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


def getBearers():
    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")
    kushnames=['Critical Kush','Blueberry Kush','Unicorn Poop','Acapulco Gold','French','Cherry Bomb','Pyramid','Bubba Erkle','Pineapple','CD1','Sunday Driver','Lemon Cheese','Leeroy','Tinashe','Tang Breath']
    #not open yet
    #olympia westport, madoc
    #purple moose, courtice, north york, toronto
    #spot420 bowmanville
    #

    file = open('bearerSites.csv','r')
    storelist = file.readlines()
    file.close()
    #print(storelist)
    #delete headers
    storelist.pop(0)

    wd = webdriver.Chrome(ChromeDriverManager().install())
    #age verification
    firstStore = False
    special = False
    time.sleep(5)
    for storelink in storelist:

        
        storename=""
        info =""
        token=""
        seed=""
        guestid=""

        storename = storelink.split(",")[0]
        
        url = storelink.split(',')[1]
        tokeninfo = storelink.split(',')[2]
        tokeninfo = tokeninfo.replace('\n','')

        #print(url)
        wd.get(url)
        if "jamesstreet" in storelink:
            wd.get('https://jamesstreetcannabis.com')
            clickshop = wd.find_element_by_xpath('/html/body/div/div[2]/div/article/div/div/div/div/div[1]/section/div[1]/div/div/a')
            clickshop.click()
            
            time.sleep(10)
      
        #stores with weird redirects or age verification
        if "hemisphere" in url:
  
            try:
                day = wd.find_element_by_xpath('/html/body/div[2]/div[3]/form/ol/li[1]/select')
                day.click()
                day.send_keys("01")
                month = wd.find_element_by_xpath('/html/body/div[2]/div[3]/form/ol/li[2]/select/option[3]')
                month.click()
                year = wd.find_element_by_xpath('/html/body/div[2]/div[3]/form/ol/li[3]/select')
                year.click()
                year.send_keys("1940")
                prov = wd.find_element_by_xpath('/html/body/div[2]/div[3]/form/select/option[10]')
                prov.click()
                enter = wd.find_element_by_xpath('/html/body/div[2]/div[3]/form/input[1]')
                enter.click()
            except Exception as e:
                pass
                #print("Age already verified!")
      

        if "goldentree" in url:
            try:
                time.sleep(1)
                yes = wd.find_element_by_xpath('/html/body/div[4]/div/div/div/div/div/div[2]/div/div/div[3]/div/ul/li[1]/a')
                yes.click()
                #golden tree redirects after age verification, just re-locate to store again
              
                
                wd.switch_to.window(wd.window_handles[0])
                #wd.close()
                wd.get(url)
            except Exception as e:
                pass
                #print("Age already verified")
            storename ="Golden Tree Cannabis"
            time.sleep(3)
          
        if "inspired" in url:
            try:
                time.sleep(1)
                yes = wd.find_element_by_xpath('/html/body/div[1]/div/div/div/div[2]/div[4]/div/div/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified")
            storename ="Insprired Cannabis"
            time.sleep(3)
        
        if "kushy" in url:
            try:
                time.sleep(1)
                yes = wd.find_element_by_xpath('/html/body/div/div/form/button[1]')
                yes.click()
                wd.get(url)
                time.sleep(3)
            except Exception as e:
                pass
                #print("Age already verified")
            storename ="Kushy's Cannabis"
            time.sleep(3)
      
         
        if "olympia" in url:
            try:
                time.sleep(1)
                yes = wd.find_element_by_xpath('/html/body/div[5]/div/div/div/div[1]/ul/li[1]/a')
                yes.click()
                wd.get(url)
                time.sleep(3)
            except Exception as e:
                pass
                #print("Age already verified")
  
         
        if "spot420" in url:
            try:
                time.sleep(1)
                yes = wd.find_element_by_xpath('/html/body/div/div[2]/form/button[1]')
                yes.click()
                wd.get(url)
                time.sleep(3)
            except Exception as e:
                pass
                #print("Age already verified")
        
        if "sunfish" in url:
           
            try:
                day = wd.find_element_by_xpath('/html/body/div[1]/div/form/select[1]')
                day.click()
                day.send_keys("4")
                month = wd.find_element_by_xpath('/html/body/div[1]/div/form/select[2]')
                month.click()
                month.send_keys('June')
                year = wd.find_element_by_xpath('/html/body/div[1]/div/form/select[3]')
                year.click()
                year.send_keys('1940')
                enter = wd.find_element_by_xpath('/html/body/div[1]/div/form/input[1]')
                enter.click()
            except Exception as e:
                pass
                #print("Age already verified!")
      

          
        if "sweetreleafs" or "greenworld" or "wakecannabis" or "twistcannabis"in url:
            try:
                time.sleep(2)
                try:
                    yes = wd.find_element_by_xpath('/html/body/div/div/div[4]/div/div/div[2]/div/div[2]/div/div/div[5]/a')
                    yes.click()
                    time.sleep(2)
                    hamilton = wd.find_element_by_xpath('/html/body/div/div/div[4]/div/div/div[2]/div/div[2]/div/div/div[3]/a')
                    hamilton.click()
                except Exception as e:
                    try:
                        yes = wd.find_element_by_xpath('/html/body/div/div/div[4]/div/div/div[2]/div/div[2]/div/div/div[5]/div')
                        yes.click()
                    except Exception as e:
                        pass
                        #print("no yes")
                time.sleep(2)
                try:
                    shop = wd.find_element_by_xpath('/html/body/div/div/div[3]/div/header/div/div[2]/div[2]/div/div/section[3]/div[2]/div[2]/div[2]/div/wix-dropdown-menu/nav/ul/li[6]/a/div/div/p')
                    shop.click()
                except Exception as e:
                    pass
                    #print("no shop button?")
                #wd.get(url)
                time.sleep(3)
                #this is just for sweet releafs to get local storage
               
            except Exception as e:
                pass
                #print("Age already verified")

        if url=="https://www.sweetreleafs.ca/":
            special = True
            wd.get('https://www-sweetreleafs-ca.filesusr.com')
        if url =="https://www.sweetreleafsburlington.store/menu":
            special = True
            wd.get('https://www-sweetreleafsburlington-store.filesusr.com')
        if url =="https://www.greenworldcannabis.com/shopnow":
            special = True
            wd.get("https://www-greenworldcannabis-com.filesusr.com")
        if url =="https://www.wakecannabis.ca/shop-cannabis":
            special = True
            wd.get("https://www-wakecannabis-ca.filesusr.com")
        if url =="https://www.twist-cannabis.ca/buddi":
            special = True
            wd.get("https://www-twist-cannabis-ca.filesusr.com")
        time.sleep(3)
      
        if"bentbud" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/input[3]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
        if"bestbudz" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/input[2]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")

        if"bestbudz.ca" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div/div[4]/form/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")

        if"bigriver" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div[1]/div[2]/form/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")

        if"blackstar" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div/div[2]/form/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
        if"boondom" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div[1]/div[2]/form/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
        if"broadway" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div[3]/p[2]/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
        if"budscannabis" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div/div/div/div/div/div/div/form/div[2]/div/div[1]/button/span')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
        if"budside" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div[1]/div[4]/form/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")

        if "cannabuzzinc"in url:
            try:
                #needs redirect and immediately stop
                #wd.execute_script("window.open()")
              
                wd.execute_script("window.open('https://app.buddi.io');")
                wd.switch_to.window(wd.window_handles[1])
                time.sleep(3)
                #wd.execute_script("window.stop()")
            except Exception as e:
                pass
                #print("Redirect and Stop Failed")
        if "cannanorth"in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div[1]/div/div/div/div[2]/div[4]/div/div/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
        if "cannabisbazaar"in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div[2]/div/div/section/div/div/div/div/div/div[2]/div/div[5]/a/span')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")



        if "bmt" in url:
           
            try:
                day = wd.find_element_by_xpath('/html/body/div[1]/div[2]/form/ol/li[1]/input')
                day.click()
                day.send_keys("04")
                month = wd.find_element_by_xpath('/html/body/div[1]/div[2]/form/ol/li[2]/input')
                month.click()
                month.send_keys('04')
                year = wd.find_element_by_xpath('/html/body/div[1]/div[2]/form/ol/li[3]/input')
                year.click()
                year.send_keys('1940')
                enter = wd.find_element_by_xpath('/html/body/div[1]/div[2]/form/input[1]')
                enter.click()
            except Exception as e:
                pass
                #print("Age already verified!")
        if"highq" in url:
             
            try:
                day = wd.find_element_by_xpath('/html/body/input[2]')
                day.click()
                day.send_keys("4")
                month = wd.find_element_by_xpath('/html/body/input[3]')
                month.click()
                month.send_keys('04')
                year = wd.find_element_by_xpath('/html/body/input[4]')
                year.click()
                year.send_keys('1940')

         
            except Exception as e:
                pass
                #print("Age already verified!")

        if"cauldron" in url:
             
            try:
                day = wd.find_element_by_xpath('/html/body/div[1]/div[3]/form/ol/li[1]/input')
                day.click()
                day.send_keys("04")
                month = wd.find_element_by_xpath('/html/body/div[1]/div[3]/form/ol/li[2]/input')
                month.click()
                month.send_keys('04')
                year = wd.find_element_by_xpath('/html/body/div[1]/div[3]/form/ol/li[3]/input')
                year.click()
                year.send_keys('1940')
                enter = wd.find_element_by_xpath('/html/body/div[1]/div[3]/form/input[1]')
                enter.click()
            except Exception as e:
                pass
                #print("Age already verified!")
            if firstStore == False:
                #second store is main st
                firstStore = True
            elif firstStore == True:
                time.sleep(1)
                changestore = wd.find_element_by_xpath('/html/body/main/article/div/div/div/section[2]/div/div/div/div/div/div/div/div/div/div[2]/div[1]')
                changestore.click()
                time.sleep(1)
                nextstore = wd.find_element_by_xpath('/html/body/main/article/div/div/div/section[2]/div/div/div/div/div/div/div/div/div/div[2]/div/div/div[2]/button')
                nextstore.click()
                firstStore= False

        if"thepotery" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div[4]/main/div/div/div/div/div/div/div[2]/div/div/form/div/div[1]/a[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
            if firstStore == False:
                #second store is main st
                firstStore = True
            elif firstStore == True:
                time.sleep(1)
                changestore = wd.find_element_by_xpath('/html/body/div[1]/div/div[1]/main/div/div/div/div/p[2]/div/div/div/div/div[2]/div[1]')
                changestore.click()
                time.sleep(1)
                nextstore = wd.find_element_by_xpath('/html/body/div[1]/div/div[1]/main/div/div/div/div/p[2]/div/div/div/div/div[2]/div/div/div[2]/button')
                nextstore.click()
                firstStore= False
        if"famousflower" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div[1]/div[3]/form/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
            
            if firstStore == False:
                #second store is main st
                firstStore = True
            elif firstStore == True:
                time.sleep(1)
                changestore = wd.find_element_by_xpath('/html/body/div/div/main/div/div/div/article/div/div/div/section/div/div/div/div/div/div/div/div/div/div[2]/div[1]')
                changestore.click()
                time.sleep(1)
                nextstore = wd.find_element_by_xpath('/html/body/div/div/main/div/div/div/article/div/div/div/section/div/div/div/div/div/div/div/div/div/div[2]/div/div/div[2]/button')
                nextstore.click()
                firstStore= False

        if "villagebud" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div/div[3]/form/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
       
        if "haight" in url:
            try:
                yes = wd.find_element_by_xpath('/html/body/div[1]/div/div[4]/a[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
                #haight-ashbury is super special. They dont have 2 seperate web pages for their info so I just have to grab tags of the store
                #selector to change stores myself
            if firstStore == False:
                #first one is in wallaceburg
                firstStore = True
            elif firstStore == True:
                time.sleep(1)
                changestore = wd.find_element_by_xpath('/html/body/section[2]/div/div/div/div/div/div/div[2]/div[1]')
                changestore.click()
                time.sleep(1)
                nextstore = wd.find_element_by_xpath('/html/body/section[2]/div/div/div/div/div/div/div[2]/div/div/div[2]/button')
                nextstore.click()
                firstStore= False

        if "idealbuds" in url:

            try:
                yes = wd.find_element_by_xpath('/html/body/div/div[2]/form/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
        if "hiclass" in url:

            try:
                yes = wd.find_element_by_xpath('/html/body/div/div[2]/form/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
        if "herbologi" in url:

            try:
                yes = wd.find_element_by_xpath('/html/body/div[3]/div[1]/nav/ul/li[1]/a')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
        if "greenleafretail" in url:

            try:
                yes = wd.find_element_by_xpath('/html/body/div[1]/div/form/button[1]')
                yes.click()
            except Exception as e:
                pass
                #print("Age already verified!")
    
        time.sleep(6)
        #Get local storage items
        if special==True:
            sr = url.replace("https://","")
            sr = sr.split("/")[0]
            info =wd.execute_script("return localStorage.getItem('"+sr+":budd.ropis')")
            token =wd.execute_script("return localStorage.getItem('"+sr+":budd.ropis.token')")
            seed =wd.execute_script("return localStorage.getItem('"+sr+":buddi.random-menu-seed')")
            guestid =wd.execute_script("return localStorage.getItem('"+sr+":buddi.guest_id')")
            special=False
        else:
            info =wd.execute_script("return localStorage.getItem('"+tokeninfo+":budd.ropis')")
            token =wd.execute_script("return localStorage.getItem('"+tokeninfo+":budd.ropis.token')")
            seed =wd.execute_script("return localStorage.getItem('"+tokeninfo+":buddi.random-menu-seed')")
            guestid =wd.execute_script("return localStorage.getItem('"+tokeninfo+":buddi.guest_id')")

        #Stores with changing tokens, but no seperate pages
     
     
      
        try:
            storeval = json.loads(info)
            tokenval = json.loads(token)
            seedval = json.loads(seed)
            guestval = json.loads(guestid)

            storeinfo = json.loads(storeval['value'])
            tokenurl = json.loads(tokenval['value'])

            seedurl = seedval['value'].replace('"',"")
            guesturl = guestval['value'].replace('"',"")
            #print(storeinfo['name'])
            #print(tokenurl['token'])
            #print(seedval['value'])
            #print(guestval['value'])
            #info on this store
        
            address=""
            city=""
            prov=""

            address=storeinfo['address']
            address=address.replace(',','')
            city =storeinfo['city'].title()
            prov = storeinfo['province'].title()

            if prov=='Ontario':
                prov ="ON"
                #collectSites = open("bearerSites02.csv","a")
                #collectSites.write(storename+","+address+"\n")
        
            buddiurl = 'https://app.buddi.io/ropis/menu?page=1&search=jonny&onSale=false&random_seed='+seedurl+'&guest_id='+guesturl
            realtoken = "Bearer "+ tokenurl['token']
        
            headertokens={"Authorization":realtoken,"authorization-domain":'https://'+tokeninfo}
            


            response = requests.get(buddiurl,headers=headertokens)
            json_data = json.loads(response.text)
            #print(len(json_data['data']))
            itemCount = 0
            try:
                itemCount =len(json_data['data'])
            except Exception as e:
                pass
                #print("ROPIS not available")
        
            if itemCount>0:
                for i in range(0,itemCount,1):
                    saleprice = ""
                    salepercent =""
                    prodName = ""
                    prodType=""
                    thcRange=""
                    price=""
                    special=""
                    qty = 0
                    weight=""
                    brand=""
                    try:
                        brand=json_data['data'][i]['brand_profile']['name']
                        if brand =="JC Green Cannabis":
                            brand = "Jonny Chronic"
                        prodName = json_data['data'][i]['name']
                        for type in kushnames:
                            if type in prodName:
                                prodName = type
                        #product Types
                        prodType =json_data['data'][i]['type']
                        if prodType =="pre-roll":
                            prodType = "Pre-Rolls"
                        if prodType =="vape":
                            prodType ="Vaporizers"
                        if prodType =="flower":
                            prodType ="Flower"

                        #weights

                        #thc
                        thcRange = json_data['data'][i]['thc']

                        #sales?
                    
                        numSizes = len(json_data['data'][i]['dispensary'][0]['sizes'])
                        for s in range(0,numSizes,1):
                            #Buddi.io removed their inventory field ;_; 2022-01-10->11
                            #qty = json_data['data'][i]['dispensary'][0]['sizes'][s]['inventory']
                            price = json_data['data'][i]['dispensary'][0]['sizes'][s]['price']
                            weight = str(json_data['data'][i]['dispensary'][0]['sizes'][s]['size']['weight']) + "g"
                            try:
                                saleprice=json_data['data'][i]['dispensary'][0]['sizes'][s]['discounted_price']
                                if saleprice==None:
                                    saleprice=""
                                salepercent = saleprice/price*100
                                salepercent = round(salepercent,2)
                                salepercent = 100-salepercent
                            except Exception as e:
                                #print("NO SALE")
                                pass

                            
                            item = storename+","+ address+","+city+","+prov+","+brand+","+prodName+","+prodType+","+str(thcRange)+","+weight+","+str(qty)+","+str(price)+","+str(saleprice)+","+str(salepercent)+"," +special+","+docDate+'\n'
                            file = open("JonnyC"+docDate+"bearer.csv","a")
                            file.write(item)
                            file.close()
                    except Exception as e:
                        pass
                        #print("Not real product")
            else:
                item = storename+","+ address+","+city+","+prov+",NO PRODUCTS,,,,,,,,,,"+docDate+"\n"
                file = open("JonnyC"+docDate+"bearer.csv","a")
                file.write(item)
                file.close()
        except Exception as e:
            #print("did not get")
            pass
            #print("site not available")


def main():
    thread = threading.Thread(target=getBearers)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    #print("DONE GETTING BEARERS" )



if __name__ == '__main__':
    main()
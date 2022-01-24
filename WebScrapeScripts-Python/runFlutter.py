#gets flutter information!
import requests
import json
from datetime import datetime 
import threading
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.keys import Keys
import time


def getFlutter():
    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")

    url =['https://1stopcannabis.budguide.io','https://borderland.budguide.io/#/main','https://clubcanapa.budguide.io/#/main']

    wd = webdriver.Chrome(ChromeDriverManager().install())
    for u in url:
        wd.get(u)
        #takes like 
        time.sleep(25)
        #wd.get(url)

        wd.execute_script("window.stop()")
        allProducts =wd.execute_script("return localStorage.getItem('flutter.v6-fileStorageFullProductList_v1.txt')")
        json_data = json.loads(allProducts)
        storename =""
        address=""
        city =""
        prov =""

        if "1stop" in u:
            storename="1 Stop Cannabis"
            address="36 Norfolk St S"
            city ="Simcoe"
            prov = "ON"
        if "borderland" in u:
            storename="Borderland Cannabis"
            address="401 B Mowat Ave"
            city ="Fort Frances"
            prov = "ON"
        if "clubcanapa" in u:
            storename="Club Canapa"
            address="2 Satterly Rd Unit 2A"
            city ="North York"
            prov = "ON"
        #management = open("flutterSites.csv","a")
        #management.write(storename+","+address+"\n")
        #code for Jonny Chronic Products
        #7b76e3b5-7690-449b-ae06-d9b8a75c48b4
        itemCount = len(json_data)
        items = json.loads(json_data)
        brandCount = 0
        for i in items:
            try:
                brand = items[i]['partDb']['brandName']
                if "Jonny Chronic" in brand:
                    saleprice = ""
                    salepercent =""
                    prodName = ""
                    prodType=""
                    thcRange=""
                    price=""
                    special=""
                    qty = 0
                    weight=""

                    saleprice = items[i]['partPos']['currentPriceNum']
                    price = items[i]['partPos']['regularPriceNum']
                    if saleprice != price:
                        salepercent = (saleprice/price) *100
                        salepercent = round(salepercent,2)
                        salepercent = 100-salepercent
                    qty = items[i]['partPos']['stock']
                    prodType = items[i]['partDb']['categories'][0]
                    prodName = items[i]['partDb']['productName']
                    weight =items[i]['partDb']['netSizeSummary']
                    thcMin = items[i]['partDb']['thcMin'] 
                    thcMax= items[i]['partDb']['thcMax']
                    thcRange= str(thcMin)+"- "+str(thcMax)
                    
                    item = storename+","+ address+","+city+","+prov+","+brand+","+prodName+","+prodType+","+str(thcRange)+","+weight+","+str(qty)+","+str(price)+","+str(saleprice)+","+str(salepercent)+"," +special+","+docDate+'\n'
                    file = open("JonnyC"+docDate+".csv","a")
                    file.write(item)
                    file.close()
                    brandCount+=1
            except Exception as e:
                #print(i)
                pass
        
        if brandCount ==0:
            item = storename+","+ address+","+city+","+prov+",NO PRODUCTS,,,,,,,,,,"+docDate+"\n"
            file = open("JonnyC"+docDate+".csv","a")
            file.write(item)
            file.close()


def main():
    thread = threading.Thread(target=getFlutter)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    #print("DONE GETTING LEAFLY" )



if __name__ == '__main__':
    main()
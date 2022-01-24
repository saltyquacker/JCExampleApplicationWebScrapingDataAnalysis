#Consumer-api leafly stores
from math import trunc
import requests
import json
from datetime import datetime 
import threading

def getleafly():
    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")
    #6 of spade only has 1 location
    urllist = ['https://consumer-api.leafly.com/api/dispensaries/v2/6-of-spade---toronto/menu_items?take=30&skip=0&&q=jonny%20chronic','https://consumer-api.leafly.com/api/dispensaries/v2/creekside-greens/menu_items?take=30&skip=0&&q=jonny']
    kushnames=['Critical Kush','Blueberry Kush','Unicorn Poop','Acapulco Gold','French','Cherry Bomb','Pyramid','Bubba Erkle','Pineapple','CD1','Sunday Driver','Lemon Cheese','Leeroy','Tinashe','Tang Breath']
    

    for url in urllist:
        response=requests.get(url)
        json_data = json.loads(response.text)


        itemCount = len(json_data['data'])
        storename =""
        address=""
        city =""
        prov = ""

        if "6-of-spade" in url:
            storename = "6 of Spade"
            address="127 Dundas Street West"
            city = "Toronto"
            prov = "ON"
        if "creekside" in url:
            storename ="Creekside Greens"
            address="19 Reuben Cres."
            city = "Kemptville"
            prov = "ON"

        collectSites = open("leaflySites.csv","a")
        collectSites.write(storename+","+address+"\n")
        #dont have any data for the json format 
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
    
            brand = json_data['data'][i]['brandName']
            prodName = json_data['data'][i]['name']
            for k in kushnames:
                if k in prodName:
                    prodName =k
            prodType = json_data['data'][i]['productCategory']
            if prodType =="Vapes":
                prodType = "Vaporizers"
            price = float(json_data['data'][i]['price'])
            
            #try:
             #   salepercent = float(json_data['data'][i]['product_discount'])
             #   if salepercent ==None:
              #      salepercent =""
               # else:
                #    temp= salepercent/100
                 #   saleprice = saleprice*temp

                
              #  salepercent = trunc(salepercent)
               # saleprice = round(saleprice,2)
                #print("SALE")
            #except Exception as e:
             #   print("NO SALE")
            qty =float( json_data['data'][i]['stockQuantity'])
            qty = trunc(qty)
            weight = json_data['data'][i]['displayQuantity']
           
            price = round(price,2)
            item = storename+","+ address+","+city+","+prov+","+brand+","+prodName+","+prodType+","+str(thcRange)+","+weight+","+str(qty)+","+str(price)+","+str(saleprice)+","+str(salepercent)+"," +special+","+docDate+'\n'
            file = open("JonnyC"+docDate+".csv","a")
            file.write(item)
            file.close()
        
        if itemCount == 0:
            item = storename+","+ address+","+city+","+prov+",NO PRODUCTS,,,,,,,,,,"+docDate+"\n"
            file = open("JonnyC"+docDate+".csv","a")
            file.write(item)
            file.close()


def main():
    thread = threading.Thread(target=getleafly)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    #print("DONE GETTING LEAFLY" )



if __name__ == '__main__':
    main()
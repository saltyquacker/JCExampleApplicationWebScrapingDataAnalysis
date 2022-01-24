
from math import prod
import requests
import json
from datetime import datetime 
import threading
import time

def getLobo():
    kushnames=['Critical Kush','Blueberry Kush','Unicorn Poop','Acapulco Gold','French','Cherry Bomb','Pyramid','Bubba Erkle','Pineapple','CD1','Sunday Driver','Lemon Cheese','Leeroy','Tinashe','Tang Breath']

    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")
    #original request url
    #Jonny get request to see if in stock, get info
    producturl = "https://rpc.lobojane.com:9443/products.json?search=jonny&stores[]=1299&in_stock=true&"
    #get options from product id url
    prodresponse = requests.get(producturl)
    prodjson = json.loads(prodresponse.text)
    itemCount = len(prodjson)
    #print(prodjson)
    storeurl = "https://rpc.lobojane.com:9443/stores/1299.json"
    storerequest=requests.get(storeurl)
    storejson = json.loads(storerequest.text)
    storename = storejson['data']['attributes']['name']
    address=storejson['data']['attributes']['address']
    city=storejson['data']['attributes']['city']
    prov = storejson['data']['attributes']['region']
    if prov =="Ontario":
        prov = "ON"
        collectSites = open("loboSites.csv","a")
        collectSites.write(storename+","+address+"\n")
    if itemCount>0:
      
        for i in range(0,itemCount,1):
          
            productid = prodjson[i]['product_id']
    
            optionsurl = "https://rpc.lobojane.com:9443/products/static/"+str(productid)+".json"
            #print(optionsurl)
            optionsrequest = requests.get(optionsurl)
            optjson = json.loads(optionsrequest.text)
            #print(optjson)
            variantjson = optjson[i]['variants']
            variantjson = json.loads(variantjson)
            variantid = variantjson[i]['id']
            #get variant product id
            varianturl="https://rpc.lobojane.com:9443/products/dynamic/"+str(variantid)+".json?store_id=1299"

            finaljson = requests.get(varianturl)
            finaljson = json.loads(finaljson.text)

            brand=optjson[i]["producer"]
            if brand =="Jonny Chronic":
                prodName = prodjson[i]['name']
                for type in kushnames:
                    if type in prodName:
                        prodName = type
                
                weight =str(variantjson[i]['quantity'])+"g" 
                if weight =="7g":
                    weight = "7g"           
                price= finaljson[i]['price']
                qty = finaljson[i]['stock']
                type = optjson[i]['type']
                if type=="flower":
                    type ="Flower"
                thcRange = prodjson[i]['thc']
                thcRange = thcRange.replace("[","")
                thcRange = thcRange.replace("]","")
                thcRange = thcRange.replace(",","-")
                #cant see any of these so blank until there is a sale
                saleprice=""
                salepercent=""
                special=""


                item = storename+","+ address+","+city+","+prov+","+brand+","+prodName+","+type+","+str(thcRange)+","+weight+","+str(qty)+","+str(price)+","+str(saleprice)+","+str(salepercent)+"," +special+","+docDate+'\n'
                file = open("JonnyC"+docDate+".csv","a")
                file.write(item)
                file.close()

    else:
        item = storename+","+ address+","+city+","+prov+",NO PRODUCTS,,,,,,,,,,"+docDate+"\n"
        file = open("JonnyC"+docDate+".csv","a")
        file.write(item)
        file.close()    







def main():
    thread = threading.Thread(target=getLobo)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    #print("DONE LOBO" )



if __name__ == '__main__':
    main()

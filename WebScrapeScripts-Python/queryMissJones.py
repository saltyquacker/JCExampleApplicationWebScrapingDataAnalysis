#get json with get headers
import requests
import json
from datetime import datetime 
import threading

def getMissJones():
    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")

    #automatically looks for jonny products
    productURL="https://cannabis-products-api.prod.unoapp.io/api/v1/locationProducts/products?include_variants=1&include_thc_cbd=1&include_brands=1&include_cannabis_attributes=1&product_name=jonny"
    prodResponse = requests.post(productURL, headers={'app-id':'yq6jaKsPfIUmXkPSKy8n7T4W8QhIjKsL','app-secret':'QyEeMOYw9VoysVM9UkHIO4nzGmywYJgT'})
    
    storesURL="https://locations-service.api.unoapp.io/clients/businesses/f03251d1-ba69-4d0c-a1de-c2e0f734c48e/locations/"
    locResponse=requests.get(storesURL,headers={'api-token':'b09172c4e50751f49bf00180aa0cd3b7b24d3f0e'})

    addressURL="https://missjonescannabis.com/wp-admin/admin-ajax.php?action=store_search&autoload=1"
    addResponse = requests.get(addressURL, headers={'User-Agent':'PostmanRuntime/7.28.4'})


    addresses = json.loads(addResponse.text)
    locations = json.loads(locResponse.text)
    locCount = locations['payload']['total']

  
    
    mjProducts = json.loads(prodResponse.text)
    #dispensary,address,city,province,brand,product,type,thcrange,weight,currentstock,price,saleprice,percent
    kushnames=['Critical Kush','Blueberry Kush','Unicorn Poop','Acapulco Gold','French','Cherry Bomb','Pyramid','Bubba Erkle','Pineapple','CD1']
    types=['Flower','Concentrate','Pre-Roll','Cartridge']
    allStores=[]
    storeswprod=[]

    productCount = len(mjProducts['payload'])
    #get address stuff first
   
    for item in range(0,productCount,1):
        name=""
        type=""
        city=""
        address=""
        prov=""
        price=""
        saleprice=""
        salepercent=""
        thcRange=""
        brand=""
        qis=""
        weight=""
        special=""
        #product Name
        tempname = str(mjProducts['payload'][item]["name"])
        #sanitize name
        for k in kushnames:
                #make real name
            if k in tempname:
                name=k
        #get type
        for t in types:
            if t in tempname:
                type=t
                if t =="Pre-Roll":
                    type+='s'

            
        if type=="":
            type="Flower"
            
        if type=="Cartridge":
            type = "Vaporizers"
        
        brand = str(mjProducts['payload'][item]["brand"]['name'])
        weight = str(mjProducts['payload'][item]['variants'][0]['size'])
        price=str(mjProducts['payload'][item]['variants'][0]['price'])
        saleprice=str(mjProducts['payload'][item]['variants'][0]['sale_price'])
        thcMin = str(mjProducts['payload'][item]['thc_cbd_levels']['thc_min'])
        thcMax = str(mjProducts['payload'][item]['thc_cbd_levels']['thc_max'])
        thcRange=thcMin+"- "+thcMax
        qis = str(mjProducts['payload'][item]['variants'][0]['no_of_units'])
            #sale price cant be regular price
        if saleprice==price:
            saleprice=""
        else:
            salepercent=(salepercent/price)*100

        if weight=="3x0.5g":
            weight = "1.5g"


            #check location ID
        locationId = str(mjProducts['payload'][item]['location_id'])
        locationName=""
        for s in range(0,locCount,1):
            storeId = str(locations['payload']['locations'][s]['id'])
            if storeId == locationId:
                locationName =str(locations['payload']['locations'][s]['display_name'])
                if locationId not in storeswprod:
                    storeswprod.append(locationName)
                    #print(locationName+ " carries JC")
                    collectSites = open("missjonesSites.csv","a")
                    collectSites.write(locationName+","+address+"\n")
            
            #get location
        for a in addresses:
            tempAdd=a['store']
            tempAdd=tempAdd.replace(" Outpost","")
            if tempAdd in locationName:
                address = a['address']
                city = a['city']
                prov="ON"

            #staff pick
        tempSpecial = str(mjProducts['payload'][item]['featured'])
        if tempSpecial =="true":
            special="TRUE"
        else:
            special ="FALSE"
        try:
            priceDec = price.find('.') +3
            price =  price[:priceDec]
        except Exception as e:
            pass
            #print('price is fine')
            #other attributes
        if locationName!="":
            newItem =locationName+","+ address+","+city+","+prov+","+brand+","+name+","+type+","+thcRange+","+weight+","+qis+","+price+","+saleprice+","+salepercent+","+special+','+docDate+'\n'
            #else:
                #newItem = locationName+","+ address+","+city+","+prov+",NO PRODUCTS,,,,,,,,,,"+docDate+"\n"
            
            #open JC File
        file = open("JonnyC"+docDate+".csv","a")
        file.write(newItem)
        file.close()
    
    #for every item id that isn't in storeswprod
    for l in range(0,locCount,1):
   
        locationName =addresses[l]['store']
        locationName = locationName.replace(' Outpost','')
        locationName = "Miss Jones "+locationName
        if locationName not in storeswprod:
            address = addresses[l]['address']
            city= addresses[l]['city']
            prov = addresses[l]['state']
            if prov=="":
                prov = "ON"
            if prov =="Ontario":
                prov = "ON"
            #print(locationName +" does not carry JC")
            newItem = locationName+","+ address+","+city+","+prov+",NO PRODUCTS,,,,,,,,,,"+docDate+"\n"

            collectSites = open("missjonesSites.csv","a")
            collectSites.write(locationName+","+address+"\n")
            #open JC File
            file = open("JonnyC"+docDate+".csv","a")
            file.write(newItem)
            file.close()


def main():
    thread = threading.Thread(target=getMissJones)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    #print("DONE MISS JONES" )



if __name__ == '__main__':
    main()
#finds canadian dispensaries info and their ids 

from json.decoder import JSONDecodeError
from re import S
import requests
import pprint
import json
import threading
import time
from datetime import datetime 
import os.path


def getDispensariesID():
    #grabs the json from the site
    now = datetime.now()
    startTime = now.strftime("%d/%m/%Y %H:%M:%S")
    docDate= now.strftime("%Y-%m-%d")


    #open file
    dispUrl = "https://dutchie.com/graphql?"
    #print(url)
    query="""query DispensaryNamesAndIds {dispensaryNamesAndIds {id name}}"""
    dispresponse = requests.post(dispUrl,json = {'query':query})
        
    dispensary_data = json.loads(dispresponse.text)
    
   
    dispensaryCount = len(dispensary_data["data"]["dispensaryNamesAndIds"])
    print(dispensaryCount)
    CAdispensaries = open('dispensariesCanada-withindex'+docDate+'.csv','w', encoding="utf-8")
    CAdispensaries.write("id,index,name,address,city,province,lat,lng,status\n")
    CAdispensaries.close()
    error = open('errorDispensaryIDs'+docDate+'.csv','w', encoding="utf-8")
    error.close()
    provinces =['ON','AB','BC','SK','MB']
    
    #719 is the first canadian store
    for d in range(719,dispensaryCount,1):
        print(str(d) + "/" +str(dispensaryCount) +" - "+str(round(d/dispensaryCount*100,2))+"%")
        
        dispensaryID = dispensary_data["data"]["dispensaryNamesAndIds"][d]["id"]
        dispensaryName = dispensary_data["data"]["dispensaryNamesAndIds"][d]["name"]
        tempname= dispensaryName.lower()
        if "test" not in tempname and "DNU" not in tempname:
            try:
                urlStore ="https://dutchie.com/graphql?operationName=ConsumerDispensaries&variables=%7B%22dispensaryFilter%22%3A%7B%22cNameOrID%22%3A%22"+dispensaryID+"%22%2C%22city%22%3A%22Toronto%22%2C%22destinationTaxState%22%3A%22ON%22%2C%22nearLat%22%3A43.653482%2C%22nearLng%22%3A-79.383935%7D%7D&extensions=%7B%22persistedQuery%22%3A%7B%22version%22%3A1%2C%22sha256Hash%22%3A%2226b5c68867077141fb0d4f9a341008d1d306cdb1b4bb67bf81d4bb8dfeae02d8%22%7D%7D"
                print(urlStore)
                responseStore = requests.get(urlStore)
                json_data_store =json.loads(responseStore.text)
                print(json_data_store)
                #print(urlStore)
                #print(json_data_store)
                #check for province first
                prov = json_data_store["data"]["filteredDispensaries"][0]["location"]["state"]
                
                try:
                    status = json_data_store["data"]["filteredDispensaries"][0]['status']
                except Exception as e:
                    print("could not get status")
                #check if store is even open
                
                for p in provinces:
                    if p==prov:
                        print(prov)
                        ln1=""
                        ln2=""
                        city =""
                        lat=""
                        lng=""
                        try:
                            ln1 = json_data_store["data"]["filteredDispensaries"][0]["location"]["ln1"]
                            ln2 =json_data_store["data"]["filteredDispensaries"][0]["location"]["ln2"]
                        
                        except Exception as e:
                            print("cant get address")
                        try:
                            city=json_data_store["data"]["filteredDispensaries"][0]["location"]["city"]
                        except Exception as e:
                            print("cant get city")
                        try:
                            lat = json_data_store["data"]["filteredDispensaries"][0]["location"]["geometry"]['coordinates'][0]
                            lng= json_data_store["data"]["filteredDispensaries"][0]["location"]["geometry"]['coordinates'][1]
                        except Exception as e:
                            print("Store "+dispensaryID+" has no geometry")
                        
                        ln1=ln1.replace(",","")
                        ln2= ln2.replace(",","")
                    
                        CAdispensaries = open('dispensariesCanada-TEST'+docDate+'.csv','a', encoding="utf-8")
                        CAdispensaries.write(str(dispensaryID)+","+str(d)+ "/" +str(dispensaryCount)+","+str(dispensaryName)+","+str(ln1)+str(ln2)+","+str(city)+","+str(prov)+","+str(lat)+","+str(lng)+","+str(status)+'\n')
                        CAdispensaries.close()
                   
                
            except Exception as e:
                print("Could not get province. Trying again...")
                time.sleep(200)
                try:
                    urlStore ="https://dutchie.com/graphql?operationName=ConsumerDispensaries&variables=%7B%22dispensaryFilter%22%3A%7B%22cNameOrID%22%3A%22"+dispensaryID+"%22%2C%22city%22%3A%22Toronto%22%2C%22destinationTaxState%22%3A%22ON%22%2C%22nearLat%22%3A43.653482%2C%22nearLng%22%3A-79.383935%7D%7D&extensions=%7B%22persistedQuery%22%3A%7B%22version%22%3A1%2C%22sha256Hash%22%3A%2226b5c68867077141fb0d4f9a341008d1d306cdb1b4bb67bf81d4bb8dfeae02d8%22%7D%7D"
                    
                    responseStore = requests.get(urlStore)
                    json_data_store =json.loads(responseStore.text)
                    #print(urlStore)
                    #print(json_data_store)
                    #check for province first
                    prov = json_data_store["data"]["filteredDispensaries"][0]["location"]["state"]
                    
                    
                    status = json_data_store["data"]["filteredDispensaries"][0]['status']
                    #check if store is even open
                    
                    for p in provinces:
                        if p==prov:
                            print(prov)
                            ln1=""
                            ln2=""
                            city =""
                            lat=""
                            lng=""
                            try:
                                ln1 = json_data_store["data"]["filteredDispensaries"][0]["location"]["ln1"]
                                ln2 =json_data_store["data"]["filteredDispensaries"][0]["location"]["ln2"]
                               
                            except Exception as e:
                                print("cant get address")
                            try:
                                city=json_data_store["data"]["filteredDispensaries"][0]["location"]["city"]
                            except Exception as e:
                                print("cant get city")
                            try:
                                lat = json_data_store["data"]["filteredDispensaries"][0]["location"]["geometry"]['coordinates'][0]
                                lng= json_data_store["data"]["filteredDispensaries"][0]["location"]["geometry"]['coordinates'][1]
                            except Exception as e:
                                print("Store "+dispensaryID+" has no geometry")
                            
                            ln1=ln1.replace(",","")
                            ln2= ln2.replace(",","")
                            dispensaryName = dispensaryName.split(",","")[0]

                            CAdispensaries = open('dispensariesCanada-TEST'+docDate+'.csv','a')
                            CAdispensaries.write(str(dispensaryID)+","+str(d)+ "/" +str(dispensaryCount)+","+str(dispensaryName)+","+str(ln1)+str(ln2)+","+str(city)+","+str(prov)+","+str(lat)+","+str(lng)+","+str(status)+'\n')
                            CAdispensaries.close()
                except Exception as e:
                    print("Couldn't get this store. Sorry!")
                    item = str(dispensaryID) +","+str(d)+ "/" +str(dispensaryCount)+", "+str(dispensaryName)+"\n"
                    error = open('errorDispensaryIDs'+docDate+'01.csv','a', encoding="utf-8")
                    error.write(item)
                    error.close()
                  
        else:
            print(dispensaryName+ " DO NOT USE") 

    now = datetime.now()
    endTime = now.strftime("%d/%m/%Y %H:%M:%S")
    print("START: "+ startTime+" END: "+endTime)   
            
            

def main():
    thread = threading.Thread(target=getDispensariesID)
    thread.start()

    # wait here for the result to be available before continuing
    thread.join()  
    print("DONE DUTCHIE COOKIE MASTER" )



if __name__ == '__main__':
    main()
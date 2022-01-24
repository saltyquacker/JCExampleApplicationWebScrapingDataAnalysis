#Delta Como 2021
#This will run all queries and be the main program
#files for getting info
import queryInfoDutchie
import queryMissJones
import runSuperAnytime
#import findDispensary #finds leftover errors from Dutchie
import runBearerBuddiIO
import runAzureWebMenu
import runFlutter
import runLeafly
import runCookie
import runLobo
#upload files to drive


from datetime import datetime 
import time


now = datetime.now()
startTime = now.strftime("%d/%m/%Y %H:%M:%S")

docDate= now.strftime("%d/%m/%Y")
firstDate = docDate+" 15:00:00"
currentDate = datetime.strptime(startTime, "%d/%m/%Y %H:%M:%S")
dateFlag = datetime.strptime(firstDate, "%d/%m/%Y %H:%M:%S")

print(str(currentDate)+" compare to "+str(dateFlag))

def main():
    print("Running Dutchie Script 1/9")
    #queryInfoDutchie.main()
    print("Running Miss Jones Script 2/9")
    queryMissJones.main()
    print("Running Super Anytime Script 3/9")
    runSuperAnytime.main()
    print("Running Buddi.IO Script 4/9")
    runBearerBuddiIO.main()
    print("Running Azure Web Menu Script 5/9")
    runAzureWebMenu.main()
    print("Running Flutter Script 6/9")
    runFlutter.main()
    print("Running LeaflyScript 7/9")
    runLeafly.main()
    print("Running Cookie Script 8/9")
    runCookie.main()
    print("Running Lobo Script 9/9")
    runLobo.main()
    #findDispensary.main()
    now = datetime.now()
    endTime = now.strftime("%d/%m/%Y %H:%M:%S")
    print("START: "+ startTime+" END: "+endTime)
    #time.sleep(40)


    #gauth = GoogleAuth()
    #gauth.LoadCredentialsFile("mycreds.txt")
    #if gauth.credentials is None:
        # Authenticate if they're not there
     #   gauth.LocalWebserverAuth()
    #elif gauth.access_token_expired:
        # Refresh them if expired
     #   gauth.Refresh()
    #else:
        # Initialize the saved creds
     #   gauth.Authorize()
    # Save the current credentials to a file
    #gauth.SaveCredentialsFile("mycreds.txt")
    
    #drive = GoogleDrive(gauth)  

    #only 1 file. All lumped in together, upload it, updated to upload non-jc stores
    #upload_file = ['newJC'+docDate+'.csv','newNOJC'+docDate+'.csv']
    #for upload_file in upload_file:
     #   try:
     #       gfile = drive.CreateFile({'parents': [{'id': '1cTMsUwdKQJ94ahkXkixzfqW7Bpe4CSbk'}]})
            # Read file and set it as the content of this instance.
     #       gfile.SetContentFile(upload_file)
      #      gfile.Upload() # Upload the file.
       #     print("Uploaded :"+ upload_file)
        #except Exception as e:
         #   print("Could not upload file!")
    
   

if __name__ == '__main__':
    main()
### Code Book for output data created by run_analysis.R
##### Created by Irene Perez

File: TidyData.txt

This file was created from a matrix with 180 rows and 88 columns



        ### Background information about the data content 


This data is the result of phisical tests performed in a group of volunteers.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


Feature Selection 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
... and anothers that are not included in this set of data

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

                              ###  TidyData field names list

names(TidyData[1,])

 [1] "Activity"                           "Subject"                           
 [3] "tBodyAcc-mean-X"                    "tBodyAcc-mean-Y"                   
 [5] "tBodyAcc-mean-Z"                    "tBodyAcc-std-X"                    
 [7] "tBodyAcc-std-Y"                     "tBodyAcc-std-Z"                    
 [9] "tGravityAcc-mean-X"                 "tGravityAcc-mean-Y"                
[11] "tGravityAcc-mean-Z"                 "tGravityAcc-std-X"                 
[13] "tGravityAcc-std-Y"                  "tGravityAcc-std-Z"                 
[15] "tBodyAccJerk-mean-X"                "tBodyAccJerk-mean-Y"               
[17] "tBodyAccJerk-mean-Z"                "tBodyAccJerk-std-X"                
[19] "tBodyAccJerk-std-Y"                 "tBodyAccJerk-std-Z"                
[21] "tBodyGyro-mean-X"                   "tBodyGyro-mean-Y"                  
[23] "tBodyGyro-mean-Z"                   "tBodyGyro-std-X"                   
[25] "tBodyGyro-std-Y"                    "tBodyGyro-std-Z"                   
[27] "tBodyGyroJerk-mean-X"               "tBodyGyroJerk-mean-Y"              
[29] "tBodyGyroJerk-mean-Z"               "tBodyGyroJerk-std-X"               
[31] "tBodyGyroJerk-std-Y"                "tBodyGyroJerk-std-Z"               
[33] "tBodyAccMag-mean"                   "tBodyAccMag-std"                   
[35] "tGravityAccMag-mean"                "tGravityAccMag-std"                
[37] "tBodyAccJerkMag-mean"               "tBodyAccJerkMag-std"               
[39] "tBodyGyroMag-mean"                  "tBodyGyroMag-std"                  
[41] "tBodyGyroJerkMag-mean"              "tBodyGyroJerkMag-std"              
[43] "fBodyAcc-mean-X"                    "fBodyAcc-mean-Y"                   
[45] "fBodyAcc-mean-Z"                    "fBodyAcc-std-X"                    
[47] "fBodyAcc-std-Y"                     "fBodyAcc-std-Z"                    
[49] "fBodyAcc-meanFreq-X"                "fBodyAcc-meanFreq-Y"               
[51] "fBodyAcc-meanFreq-Z"                "fBodyAccJerk-mean-X"               
[53] "fBodyAccJerk-mean-Y"                "fBodyAccJerk-mean-Z"               
[55] "fBodyAccJerk-std-X"                 "fBodyAccJerk-std-Y"                
[57] "fBodyAccJerk-std-Z"                 "fBodyAccJerk-meanFreq-X"           
[59] "fBodyAccJerk-meanFreq-Y"            "fBodyAccJerk-meanFreq-Z"           
[61] "fBodyGyro-mean-X"                   "fBodyGyro-mean-Y"                  
[63] "fBodyGyro-mean-Z"                   "fBodyGyro-std-X"                   
[65] "fBodyGyro-std-Y"                    "fBodyGyro-std-Z"                   
[67] "fBodyGyro-meanFreq-X"               "fBodyGyro-meanFreq-Y"              
[69] "fBodyGyro-meanFreq-Z"               "fBodyAccMag-mean"                  
[71] "fBodyAccMag-std"                    "fBodyAccMag-meanFreq"              
[73] "fBodyBodyAccJerkMag-mean"           "fBodyBodyAccJerkMag-std"           
[75] "fBodyBodyAccJerkMag-meanFreq"       "fBodyBodyGyroMag-mean"             
[77] "fBodyBodyGyroMag-std"               "fBodyBodyGyroMag-meanFreq"         
[79] "fBodyBodyGyroJerkMag-mean"          "fBodyBodyGyroJerkMag-std"          
[81] "fBodyBodyGyroJerkMag-meanFreq"      "angletBodyAccMean,gravity"         
[83] "angletBodyAccJerkMean_gravityMean"  "angletBodyGyroMean,gravityMean"    
[85] "angletBodyGyroJerkMean,gravityMean" "angleX,gravityMean"                
[87] "angleY,gravityMean"                 "angleZ,gravityMean"    


                           ###    TidyData fields description

Activity:  activity performed by the subject 

        Possible values:
        
         - 1 WALKING
         - 2 WALKING_UPSTAIRS
         - 3 WALKING_DOWNSTAIRS
         - 4 SITTING
         - 5 STANDING
         - 6 LAYING


Subject: id of the volunteer for the test. There were 30 volunteers therefore the posible values for this field are integers from 1 to 30.

tBodyAcc-mean-X and ALL THE OTHER VARIABLES TILL THE END OF THE RECORD: average value for that particular test. Explanation of the different features are in the background info section.



                           ###    TidyData Summary

summary(TidyData)

  Activity     Subject             tBodyAcc-mean-X             tBodyAcc-mean-Y
 LAYING            :30   1      :  6   0.22159824394    :  1    -0.00130828765170213:  1   
 SITTING           :30   10     :  6   0.233275439803922:  1    -0.00350299841730769:  1   
 STANDING          :30   11     :  6   0.239507882205882:  1    -0.00563047804309524:  1   
 WALKING           :30   12     :  6   0.242118808925   :  1    -0.00587732936326531:  1   
 WALKING_DOWNSTAIRS:30   13     :  6   0.247164790395833:  1    -0.00672550621304348:  1   
 WALKING_UPSTAIRS  :30   14     :  6   0.24832674354    :  1    -0.00700418554517857:  1   
                         (Other):144   (Other)          :174    (Other)             :174   
            tBodyAcc-mean-Z              tBodyAcc-std-X              tBodyAcc-std-Y
 -0.07537846886     :  1    -0.00865921919565217:  1    -0.00232026501698113:  1   
 -0.0868333315509804:  1    -0.0260971840270833 :  1    -0.00406536043541667:  1   
 -0.0891404038405797:  1    -0.0457237779851064 :  1    -0.00555287692765957:  1   
 -0.0892432745173913:  1    -0.0489049407963462 :  1    -0.011629910112     :  1   
 -0.0910278793952381:  1    -0.0501350188513725 :  1    -0.0131721014395833 :  1   
 -0.0928330165533333:  1    -0.0574100475102041 :  1    -0.0175797885542623 :  1   
 (Other)            :174    (Other)             :174    (Other)             :174   
              tBodyAcc-std-Z          tGravityAcc-mean-X           tGravityAcc-mean-Y
 -0.00771530035714285:  1    -0.134832031403509:  1      -0.002814673171875 :  1     
 -0.0194792388471698 :  1    -0.145483631627451:  1      -0.010383816474    :  1     
 -0.0579636469030769 :  1    -0.156852206467742:  1      -0.0199270225714286:  1     
 -0.0636402447755319 :  1    -0.1719930545     :  1      -0.0314341738730769:  1     
 -0.0717893558666667 :  1    -0.174349174822222:  1      -0.0352304645104762:  1     
 -0.0738744931340426 :  1    -0.19913309       :  1      -0.0364533962277778:  1     
 (Other)             :174    (Other)           :174      (Other)            :174     
            tGravityAcc-mean-Z          tGravityAcc-std-X          tGravityAcc-std-Y
 -0.00199310572363636:  1      -0.829554947808219:  1     -0.643578361424658:  1    
 -0.00307981704708333:  1      -0.862136937254902:  1     -0.900511719787234:  1    
 -0.00392556384476923:  1      -0.887746310350877:  1     -0.9010448505     :  1    
 -0.00557416876082625:  1      -0.8968300184     :  1     -0.901317321632653:  1    
 -0.0184608964392157 :  1      -0.899726139487179:  1     -0.903923008269231:  1    
 -0.0221401100714154 :  1      -0.914221270096154:  1     -0.907231431296296:  1    
 (Other)             :174      (Other)           :174     (Other)           :174    
          tGravityAcc-std-Z         tBodyAccJerk-mean-X            tBodyAccJerk-mean-Y
 -0.610161166287671:  1     0.0426880986186441:  1      -0.000213838552075472:  1     
 -0.83693567475    :  1     0.0428631626711111:  1      -0.000619102785106384:  1     
 -0.85236629022    :  1     0.045764401482    :  1      -0.000689019191836735:  1     
 -0.858849467142857:  1     0.0541553164897959:  1      -0.000757069449090909:  1     
 -0.862402791230769:  1     0.0560971909634615:  1      -0.000812387078431372:  1     
 -0.864745838297872:  1     0.0578010605648148:  1      -0.000842715149193548:  1     
 (Other)           :174     (Other)           :174      (Other)              :174     
            tBodyAccJerk-mean-Z            tBodyAccJerk-std-X           tBodyAccJerk-std-Y
 -0.000143542544507042:  1      -0.00358338882727273:  1      -0.0123501104926829:  1     
 -0.000175352166235294:  1      -0.00853992680952381:  1      -0.0128865483575   :  1     
 -0.000374189681428571:  1      -0.012283860544898  :  1      -0.0166022362847458:  1     
 -0.000673798876875   :  1      -0.01350661106      :  1      -0.0319265467387037:  1     
 -0.000685549292837838:  1      -0.0167652227782609 :  1      -0.0347143855729423:  1     
 -0.000704979340543859:  1      -0.023952574044375  :  1      -0.0413994646723529:  1     
 (Other)              :174      (Other)             :174      (Other)            :174     
           tBodyAccJerk-std-Z             tBodyGyro-mean-X             tBodyGyro-mean-Y
 -0.0135136269      :  1      -0.00282641913096154:  1     -0.00247161973      :  1    
 -0.0200111148717949:  1      -0.00334085938813559:  1     -0.00482329231914894:  1    
 -0.0293115056033898:  1      -0.00347655062271186:  1     -0.0139358043959184 :  1    
 -0.133634060621778 :  1      -0.00355974576923077:  1     -0.0163131590545455 :  1    
 -0.149488514397895 :  1      -0.00795668167188679:  1     -0.0172822168012963 :  1    
 -0.179390497475    :  1      -0.0079605026754386 :  1     -0.0237205719148936 :  1    
 (Other)            :174      (Other)             :174     (Other)             :174    
              tBodyGyro-mean-Z            tBodyGyro-std-X            tBodyGyro-std-Y
 -0.000233248224999999:  1     -0.0264357957923077:  1    -0.0148392604279661:  1   
 -0.00546829763829787 :  1     -0.19830385328125  :  1    -0.0546077686594737:  1   
 -0.00779288021764706 :  1     -0.1992097184375   :  1    -0.0666980861414634:  1   
 -0.0325557522333333  :  1     -0.204939567711111 :  1    -0.0840481513184615:  1   
 -0.0441381886666667  :  1     -0.23294061427451  :  1    -0.104722161186078 :  1   
 -0.0724546025804878  :  1     -0.237349190997222 :  1    -0.114406108840577 :  1   
 (Other)              :174     (Other)            :174    (Other)            :174   
            tBodyGyro-std-Z          tBodyGyroJerk-mean-X          tBodyGyroJerk-mean-Y
 -0.0314083457948718:  1    -0.0220916265065217:  1       -0.0132022768074468:  1      
 -0.0317301153392157:  1    -0.0256452232354167:  1       -0.0141113353615385:  1      
 -0.0353021837      :  1    -0.0264668968652174:  1       -0.0189816250372549:  1      
 -0.0754447842395833:  1    -0.0266492977565217:  1       -0.0207749732407407:  1      
 -0.0940797929729167:  1    -0.0337429578461538:  1       -0.027552256948    :  1      
 -0.104202986482692 :  1    -0.0349283489710526:  1       -0.027919577097561 :  1      
 (Other)            :174    (Other)            :174       (Other)            :174      
           tBodyGyroJerk-mean-Z         tBodyGyroJerk-std-X          tBodyGyroJerk-std-Y
 -0.00694066389361702:  1       -0.16394489726087 :  1      -0.0146299196923077:  1     
 -0.0137237620296296 :  1       -0.170842676616   :  1      -0.0704526510842105:  1     
 -0.0223482086545833 :  1       -0.18260093354386 :  1      -0.127554090666667 :  1     
 -0.0236327911183673 :  1       -0.186763293747059:  1      -0.174136410738596 :  1     
 -0.0270461061061224 :  1       -0.207421854757895:  1      -0.193508405479167 :  1     
 -0.0293255016148148 :  1       -0.21166729682807 :  1      -0.238824827530612 :  1     
 (Other)             :174       (Other)           :174      (Other)            :174     
          tBodyGyroJerk-std-Z              tBodyAccMag-mean            tBodyAccMag-std
 -0.0344217467042553:  1      -0.000971394711666667:  1     -0.0135771208822581:  1   
 -0.157682543983929 :  1      -0.0117536873784314  :  1     -0.0156098198829787:  1   
 -0.166684422233333 :  1      -0.0128062276916667  :  1     -0.0197686685018519:  1   
 -0.170814790834118 :  1      -0.0266623294757447  :  1     -0.0224839122854545:  1   
 -0.1896044435      :  1      -0.0294634299553191  :  1     -0.0411340078469388:  1   
 -0.213494065344231 :  1      -0.0373901122469355  :  1     -0.0414696051693878:  1   
 (Other)            :174      (Other)              :174     (Other)            :174   
            tGravityAccMag-mean           tGravityAccMag-std          tBodyAccJerkMag-mean
 -0.000971394711666667:  1      -0.0135771208822581:  1      -0.0179784626888889:  1      
 -0.0117536873784314  :  1      -0.0156098198829787:  1      -0.0372666071540476:  1      
 -0.0128062276916667  :  1      -0.0197686685018519:  1      -0.0429359302764706:  1      
 -0.0266623294757447  :  1      -0.0224839122854545:  1      -0.0612699838466667:  1      
 -0.0294634299553191  :  1      -0.0411340078469388:  1      -0.0637528559361702:  1      
 -0.0373901122469355  :  1      -0.0414696051693878:  1      -0.0668322430433333:  1      
 (Other)              :174      (Other)            :174      (Other)            :174      
          tBodyAccJerkMag-std           tBodyGyroMag-mean            tBodyGyroMag-std
 -0.02028505044     :  1      -0.00310243820125  :  1     -0.0218463165461538:  1    
 -0.0257877197081633:  1      -0.0120968259523729:  1     -0.0305762438706667:  1    
 -0.0268194363050847:  1      -0.0229640797463077:  1     -0.0367853189588235:  1    
 -0.027557329277193 :  1      -0.0238468037578947:  1     -0.0426276750979167:  1    
 -0.0292570509829787:  1      -0.06161577145     :  1     -0.0466291872078947:  1    
 -0.0307693372041667:  1      -0.068246324026087 :  1     -0.0665144570666667:  1    
 (Other)            :174      (Other)            :174     (Other)            :174    
         tBodyGyroJerkMag-mean          tBodyGyroJerkMag-std            fBodyAcc-mean-X
 -0.0463117766203704:  1       -0.0438985022538462:  1       -0.0226239171245652:  1   
 -0.0829366854166667:  1       -0.0953401161070176:  1       -0.0299815666923077:  1   
 -0.126189142894737 :  1       -0.111228416159583 :  1       -0.0343309987555556:  1   
 -0.164699977592308 :  1       -0.149864146847059 :  1       -0.0421706943244898:  1   
 -0.194893253196078 :  1       -0.157484866842105 :  1       -0.05435763951     :  1   
 -0.268183423577778 :  1       -0.271487480103846 :  1       -0.0553996485285714:  1   
 (Other)            :174       (Other)            :174       (Other)            :174   
             fBodyAcc-mean-Y            fBodyAcc-mean-Z              fBodyAcc-std-X
 -0.006237000044     :  1    -0.04769426376     :  1    -0.00473819670425532:  1   
 -0.00770048300204082:  1    -0.070577489272549 :  1    -0.00838243761666667:  1   
 -0.02122937175      :  1    -0.0729496941121951:  1    -0.0211335627276471 :  1   
 -0.0216637054241935 :  1    -0.0769713066866667:  1    -0.0260463260078947 :  1   
 -0.0219048103322034 :  1    -0.103705822657857 :  1    -0.0282962478037037 :  1   
 -0.0293832440223529 :  1    -0.104423357596154 :  1    -0.0349085946785455 :  1   
 (Other)             :174    (Other)            :174    (Other)             :174   
              fBodyAcc-std-Y             fBodyAcc-std-Z           fBodyAcc-meanFreq-X
 -0.00256294245192308:  1    -0.0337965256573077:  1    -0.00428156514117647:  1     
 -0.00803987529661017:  1    -0.0342347233914894:  1    -0.00757859632753623:  1     
 -0.0191328333041667 :  1    -0.0349494927142857:  1    -0.00935147348163265:  1     
 -0.0252781736083333 :  1    -0.0379716239787234:  1    -0.0155481277013889 :  1     
 -0.0439473073581818 :  1    -0.0783635041538461:  1    -0.0162371376025641 :  1     
 -0.051628469647234  :  1    -0.0931447617846154:  1    -0.0164066779678571 :  1     
 (Other)             :174    (Other)            :174    (Other)             :174     
           fBodyAcc-meanFreq-Y           fBodyAcc-meanFreq-Z           fBodyAccJerk-mean-X
 -0.00204051097321429:  1      -0.00225195262220588:  1      -0.00701472271717392:  1     
 -0.00264587983404255:  1      -0.00273826957083333:  1      -0.0268676982326087 :  1     
 -0.0035449232893617 :  1      -0.00357815742876712:  1      -0.0276638676122449 :  1     
 -0.00368602589490196:  1      -0.00437220373021277:  1      -0.0305226686191489 :  1     
 -0.00378721862222222:  1      -0.00590768681611111:  1      -0.0337820458644444 :  1     
 -0.00500928635151515:  1      -0.0103801728945205 :  1      -0.0367047077608696 :  1     
 (Other)             :174      (Other)             :174      (Other)             :174     
           fBodyAccJerk-mean-Y          fBodyAccJerk-mean-Z            fBodyAccJerk-std-X
 -0.00309155313333333:  1      -0.0248789805888889:  1      -0.00426289144680851:  1     
 -0.0127039720456522 :  1      -0.0572021324745763:  1      -0.0302396365755556 :  1     
 -0.0257952590634146 :  1      -0.106490372892632 :  1      -0.03105929456      :  1     
 -0.0269769415214286 :  1      -0.129367902596154 :  1      -0.0463867896444444 :  1     
 -0.0352255241130632 :  1      -0.196838264546667 :  1      -0.0522811342045455 :  1     
 -0.0439195137368421 :  1      -0.240679035428947 :  1      -0.0677978520178571 :  1     
 (Other)             :174      (Other)            :174      (Other)             :174     
            fBodyAccJerk-std-Y            fBodyAccJerk-std-Z        fBodyAccJerk-meanFreq-X
 -0.00175391954565217:  1      -0.00623647528983051:  1      -0.0235041479111111:  1       
 -0.00561498755362069:  1      -0.0846674186842105 :  1      -0.0416113196575342:  1       
 -0.00722860241119048:  1      -0.0983930104846154 :  1      -0.0491142923541667:  1       
 -0.0131695876025    :  1      -0.09851956305      :  1      -0.0727101584479661:  1       
 -0.0148415165923077 :  1      -0.190751539207018  :  1      -0.08503093738     :  1       
 -0.0153329520084746 :  1      -0.227829841936346  :  1      -0.102095050734783 :  1       
 (Other)             :174      (Other)             :174      (Other)            :174       
         fBodyAccJerk-meanFreq-Y         fBodyAccJerk-meanFreq-Z            fBodyGyro-mean-X
 -0.00193284292653061:  1        -0.00391608825652174:  1        -0.0299969963043478:  1    
 -0.0105794955342857 :  1        -0.00446178350882353:  1        -0.0629572600911111:  1    
 -0.0110757034462821 :  1        -0.00527777880897436:  1        -0.0936248686019608:  1    
 -0.0118456245047059 :  1        -0.0054044236       :  1        -0.0954349339722222:  1    
 -0.0131774961758065 :  1        -0.021487476616129  :  1        -0.102063053808333 :  1    
 -0.017661749435     :  1        -0.0266151295539683 :  1        -0.115065008156863 :  1    
 (Other)             :174        (Other)             :174        (Other)            :174    
            fBodyGyro-mean-Y            fBodyGyro-mean-Z           fBodyGyro-std-X
 -0.0557022524693878:  1     -0.01050470716     :  1     -0.108388809533846:  1   
 -0.0973549846596154:  1     -0.0318694271979592:  1     -0.234252005895833:  1   
 -0.103059416434737 :  1     -0.034175027916383 :  1     -0.253365630644444:  1   
 -0.113162144460976 :  1     -0.0464142110215686:  1     -0.278386596338226:  1   
 -0.130327465789583 :  1     -0.06612935167     :  1     -0.279931528352941:  1   
 -0.133828886725532 :  1     -0.083501182326087 :  1     -0.284532358444444:  1   
 (Other)            :174     (Other)            :174     (Other)           :174   
            fBodyGyro-std-Y            fBodyGyro-std-Z           fBodyGyro-meanFreq-X
 -0.028489571974359 :  1    -0.0822521122215686:  1    -0.003546795856     :  1      
 -0.0335081597884211:  1    -0.1429742348125   :  1    -0.00734779774576271:  1      
 -0.0461356322868421:  1    -0.1503916379      :  1    -0.00892286550425532:  1      
 -0.0478802512585366:  1    -0.165554554220408 :  1    -0.0154022432258065 :  1      
 -0.079046721372549 :  1    -0.180232949016949 :  1    -0.01686389495      :  1      
 -0.0941359695075472:  1    -0.183508696647059 :  1    -0.0192868116287671 :  1      
 (Other)            :174    (Other)            :174    (Other)             :174      
           fBodyGyro-meanFreq-Y           fBodyGyro-meanFreq-Z             fBodyAccMag-mean
 -0.00351697116904762:  1       -0.00513040190789474:  1       -0.00353341793921569:  1    
 -0.00555958745263158:  1       -0.00867259700677966:  1       -0.01907433524      :  1    
 -0.00764242092148936:  1       -0.012085913522973  :  1       -0.0231701626603636 :  1    
 -0.0170361394057692 :  1       -0.012251230826087  :  1       -0.0241584964891304 :  1    
 -0.0191860123089286 :  1       -0.01372893002      :  1       -0.0759851813333333 :  1    
 -0.0195690475405405 :  1       -0.0187739586583333 :  1       -0.07962876322      :  1    
 (Other)             :174       (Other)             :174       (Other)             :174    
            fBodyAccMag-std            fBodyAccMag-meanFreq        fBodyBodyAccJerkMag-mean
 -0.0214787881723404:  1    -0.000332753967377052:  1       -0.0128823827326087:  1        
 -0.0330868111229167:  1    -0.00111843704807692 :  1       -0.0180705701559322:  1        
 -0.0453930349148148:  1    -0.00195427494897959 :  1       -0.0282156656914894:  1        
 -0.0534137179170213:  1    -0.0111619282254902  :  1       -0.029912425338    :  1        
 -0.0575202606055556:  1    -0.0112330111875     :  1       -0.0384187298547368:  1        
 -0.0616742840815789:  1    -0.0126842499664706  :  1       -0.0458020362119048:  1        
 (Other)            :174    (Other)              :174       (Other)            :174        
        fBodyBodyAccJerkMag-std        fBodyBodyAccJerkMag-meanFreq          fBodyBodyGyroMag-mean
 -0.013953908696    :  1        -0.000259638109310345:  1           -0.00036272967368421:  1      
 -0.0186734409634615:  1        -0.00160659497083333 :  1           -0.0143735434       :  1      
 -0.022138358       :  1        -0.00164314465612245 :  1           -0.0520065599062745 :  1      
 -0.0222869586038462:  1        -0.00170923580888889 :  1           -0.0787568406777778 :  1      
 -0.0310650270227451:  1        -0.00198537142181818 :  1           -0.0952460452365385 :  1      
 -0.0457372334118644:  1        -0.00497287788214286 :  1           -0.100566103524444  :  1      
 (Other)            :174        (Other)              :174           (Other)             :174      
         fBodyBodyGyroMag-std         fBodyBodyGyroMag-meanFreq       fBodyBodyGyroJerkMag-mean
 -0.061476584759322:  1       -0.000262186717021277:  1         -0.0229045295641026:  1        
 -0.074331469755102:  1       -0.00198466764814815 :  1         -0.125179586744737 :  1        
 -0.141598402309615:  1       -0.00578350086590909 :  1         -0.132705384364583 :  1        
 -0.151472278383077:  1       -0.0181759388351563  :  1         -0.155339855862632 :  1        
 -0.151681987177778:  1       -0.0184299309085106  :  1         -0.180365335498431 :  1        
 -0.166969377765957:  1       -0.022752769044375   :  1         -0.254747132274667 :  1        
 (Other)           :174       (Other)              :174         (Other)            :174        
        fBodyBodyGyroJerkMag-std       fBodyBodyGyroJerkMag-meanFreq         angletBodyAccMean,gravity
 -0.0398573780185185:  1         -0.000234019224528301:  1           -0.000126342648387096:  1        
 -0.0841663774087719:  1         -0.00363397452945946 :  1           -0.000180217029230768:  1        
 -0.143254547512821 :  1         -0.00434100877638    :  1           -0.000222340747169812:  1        
 -0.145733545496458 :  1         -0.00942507352173913 :  1           -0.00026885276025641 :  1        
 -0.171975765239216 :  1         -0.016201378678      :  1           -0.000321402391857144:  1        
 -0.26298447        :  1         -0.020630781795082   :  1           -0.000753881064814814:  1        
 (Other)            :174         (Other)              :174           (Other)              :174        
     angletBodyAccJerkMean_gravityMean       angletBodyGyroMean,gravityMean
 -0.000160159956521735:  1             -0.000867430025479454:  1           
 -0.00161665603176471 :  1             -0.00106301174852941 :  1           
 -0.00224226963529411 :  1             -0.00143055610282051 :  1           
 -0.00339286689565217 :  1             -0.001666984698      :  1           
 -0.00473099461016949 :  1             -0.00398002958490566 :  1           
 -0.00503036659779412 :  1             -0.00410840288235294 :  1           
 (Other)              :174             (Other)              :174           
    angletBodyGyroJerkMean,gravityMean          angleX,gravityMean            angleY,gravityMean
 -0.00140446813617022:  1              -0.304548450821918:  1      -0.00632480140384615:  1     
 -0.00384551201153846:  1              -0.37967443537037 :  1      -0.00746888583912281:  1     
 -0.004332930875     :  1              -0.467414943829787:  1      -0.0233932289533333 :  1     
 -0.00488786835483871:  1              -0.472420544509804:  1      -0.02646734825      :  1     
 -0.00588886871333333:  1              -0.477698945416667:  1      -0.0384493972045455 :  1     
 -0.00680588488767123:  1              -0.497783361864407:  1      -0.0426557026279412 :  1     
 (Other)             :174              (Other)           :174      (Other)             :174     
             angleZ,gravityMean
 -0.000327698463076923:  1     
 -0.000765151707936508:  1     
 -0.00130364271742105 :  1     
 -0.00256864090227273 :  1     
 -0.00753626194444445 :  1     
 -0.00811530789386842 :  1     
 (Other)              :174     
 
 
 
                           ###    TidyData str

str:Compactly Display the Structure of an Arbitrary R Object

str(TidyData)

 chr [1:180, 1:88] "LAYING" "SITTING" "STANDING" "WALKING" "WALKING_DOWNSTAIRS" ...
 - attr(*, "dimnames")=List of 2
  ..$ : chr [1:180] "LAYING.1" "SITTING.1" "STANDING.1" "WALKING.1" ...
  ..$ : chr [1:88] "Activity" "Subject" "tBodyAcc-mean-X" "tBodyAcc-mean-Y" ...



 
                           ###    TidyData first 6 rows of the file



head(TidyData,n=6)
                     Activity             Subject tBodyAcc-mean-X     tBodyAcc-mean-Y       
LAYING.1             "LAYING"             "1"     "0.22159824394"     "-0.0405139534294"    
SITTING.1            "SITTING"            "1"     "0.261237565425532" "-0.00130828765170213"
STANDING.1           "STANDING"           "1"     "0.278917629056604" "-0.0161375901037736" 
WALKING.1            "WALKING"            "1"     "0.277330758736842" "-0.0173838185273684" 
WALKING_DOWNSTAIRS.1 "WALKING_DOWNSTAIRS" "1"     "0.289188320408163" "-0.00991850461020408"
WALKING_UPSTAIRS.1   "WALKING_UPSTAIRS"   "1"     "0.255461689622641" "-0.0239531492643396" 
                     tBodyAcc-mean-Z       tBodyAcc-std-X       tBodyAcc-std-Y        
LAYING.1             "-0.11320355358"      "-0.9280564692"      "-0.83682740562"      
SITTING.1            "-0.104544182255319"  "-0.977229008297872" "-0.922618641914894"  
STANDING.1           "-0.110601817735849"  "-0.995759901509434" "-0.973190056415094"  
WALKING.1            "-0.111148103547368"  "-0.283740258842105" "0.114461336747368"   
WALKING_DOWNSTAIRS.1 "-0.107566190908163"  "0.0300353383483878" "-0.0319359434489796" 
WALKING_UPSTAIRS.1   "-0.0973020020943396" "-0.35470802509434"  "-0.00232026501698113"
                     tBodyAcc-std-Z        tGravityAcc-mean-X  tGravityAcc-mean-Y   tGravityAcc-mean-Z   
LAYING.1             "-0.826061401628"     "-0.24888179828"    "0.70554977346"      "0.4458177198"       
SITTING.1            "-0.93958629106383"   "0.831509933404255" "0.204411592680851"  "0.332043702765957"  
STANDING.1           "-0.979775876981132"  "0.942952000377358" "-0.272983832264151" "0.0134905823226415" 
WALKING.1            "-0.260027902210526"  "0.935223201473684" "-0.282165021263158" "-0.068102864"       
WALKING_DOWNSTAIRS.1 "-0.230434213204082"  "0.931874418979592" "-0.266610338979592" "-0.0621199585938775"
WALKING_UPSTAIRS.1   "-0.0194792388471698" "0.89335109754717"  "-0.362153364339623" "-0.075402939754717" 
                     tGravityAcc-std-X    tGravityAcc-std-Y    tGravityAcc-std-Z    tBodyAccJerk-mean-X 
LAYING.1             "-0.8968300184"      "-0.90772000676"     "-0.85236629022"     "0.0810865342"      
SITTING.1            "-0.968457145744681" "-0.935517055957447" "-0.949040933191489" "0.0774825199574468"
STANDING.1           "-0.99376298509434"  "-0.981225957924528" "-0.976324063584906" "0.0753766542264151"
WALKING.1            "-0.976609642526316" "-0.971305961473684" "-0.947717226105263" "0.0740416333157895"
WALKING_DOWNSTAIRS.1 "-0.950559811632653" "-0.937018658979592" "-0.895939695102041" "0.0541553164897959"
WALKING_UPSTAIRS.1   "-0.956367027924528" "-0.952849233207547" "-0.912379410377358" "0.101372729922642" 
                     tBodyAccJerk-mean-Y     tBodyAccJerk-mean-Z    tBodyAccJerk-std-X  
LAYING.1             "0.0038382040088"       "0.010834236361"       "-0.958482112"      
SITTING.1            "-0.000619102785106384" "-0.00336779235021277" "-0.986430711276596"
STANDING.1           "0.00797573092830189"   "-0.00368524954709434" "-0.994604542264151"
WALKING.1            "0.0282721095884211"    "-0.00416840617789474" "-0.113615602435789"
WALKING_DOWNSTAIRS.1 "0.0296504490408163"    "-0.0109719730183673"  "-0.012283860544898"
WALKING_UPSTAIRS.1   "0.0194863076188679"    "-0.0455625449113208"  "-0.446843887735849"
                     tBodyAccJerk-std-Y   tBodyAccJerk-std-Z   tBodyGyro-mean-X      tBodyGyro-mean-Y     
LAYING.1             "-0.9241492736"      "-0.9548551108"      "-0.016553093978"     "-0.064486124088"    
SITTING.1            "-0.981371965319149" "-0.987910804468085" "-0.045350056512766"  "-0.0919241549361702"
STANDING.1           "-0.98564873245283"  "-0.992251177358491" "-0.0239877347979245" "-0.0593972209811321"
WALKING.1            "0.0670025007684211" "-0.502699788526316" "-0.041830963526"     "-0.0695300462115789"
WALKING_DOWNSTAIRS.1 "-0.101601390640816" "-0.345735032326531" "-0.0350781902989796" "-0.0909371290204082"
WALKING_UPSTAIRS.1   "-0.378274426037736" "-0.706593530943396" "0.050549379754717"   "-0.166170015088679" 
                     tBodyGyro-mean-Z     tBodyGyro-std-X      tBodyGyro-std-Y       tBodyGyro-std-Z     
LAYING.1             "0.14868943626"      "-0.87354386782"     "-0.9510904402"       "-0.9082846626"     
SITTING.1            "0.0629313811914894" "-0.977211283191489" "-0.966473895319149"  "-0.941425920851064"
STANDING.1           "0.074800751"        "-0.987191946603774" "-0.98773444"         "-0.980645626981132"
WALKING.1            "0.0849448173042105" "-0.473535485894737" "-0.0546077686594737" "-0.344266629473684"
WALKING_DOWNSTAIRS.1 "0.0900850142030612" "-0.458030542938775" "-0.126349194938775"  "-0.124702454242857"
WALKING_UPSTAIRS.1   "0.0583595463981132" "-0.544871104528302" "0.00410518379811321" "-0.50716867490566" 
                     tBodyGyroJerk-mean-X  tBodyGyroJerk-mean-Y  tBodyGyroJerk-mean-Z  tBodyGyroJerk-std-X 
LAYING.1             "-0.107270949192"     "-0.04151728689"      "-0.0740501211"       "-0.9186085208"     
SITTING.1            "-0.0936793807234043" "-0.0402118124255319" "-0.046702627"        "-0.99173159212766" 
STANDING.1           "-0.0996092129056604" "-0.0440627877924528" "-0.0489505466716981" "-0.992945106981132"
WALKING.1            "-0.0899975423705263" "-0.0398428709463158" "-0.0461309295021053" "-0.207421854757895"
WALKING_DOWNSTAIRS.1 "-0.0739592036271429" "-0.0439902783367347" "-0.0270461061061224" "-0.487027342244898"
WALKING_UPSTAIRS.1   "-0.122232768011321"  "-0.0421485884509434" "-0.0407125527654717" "-0.614786508490566"
                     tBodyGyroJerk-std-Y  tBodyGyroJerk-std-Z  tBodyAccMag-mean     tBodyAccMag-std     
LAYING.1             "-0.9679072436"      "-0.9577901596"      "-0.8419291525"      "-0.79514486386"    
SITTING.1            "-0.989518068510638" "-0.987935806382979" "-0.948536786170213" "-0.927078418723404"
STANDING.1           "-0.995137917358491" "-0.992108467169811" "-0.984278207358491" "-0.981942928867925"
WALKING.1            "-0.304468510631579" "-0.404255452631579" "-0.136971176556842" "-0.219688645631579"
WALKING_DOWNSTAIRS.1 "-0.238824827530612" "-0.268761480242857" "0.0271882914106122" "0.0198843506265306"
WALKING_UPSTAIRS.1   "-0.601696656226415" "-0.606332002264151" "-0.129927630735849" "-0.324970929245283"
                     tGravityAccMag-mean  tGravityAccMag-std   tBodyAccJerkMag-mean  tBodyAccJerkMag-std  
LAYING.1             "-0.8419291525"      "-0.79514486386"     "-0.9543962646"       "-0.9282456284"      
SITTING.1            "-0.948536786170213" "-0.927078418723404" "-0.987364195531915"  "-0.984120024042553" 
STANDING.1           "-0.984278207358491" "-0.981942928867925" "-0.992367790566038"  "-0.993096209433962" 
WALKING.1            "-0.136971176556842" "-0.219688645631579" "-0.141428809031579"  "-0.0744717500625263"
WALKING_DOWNSTAIRS.1 "0.0271882914106122" "0.0198843506265306" "-0.0894474807979592" "-0.0257877197081633"
WALKING_UPSTAIRS.1   "-0.129927630735849" "-0.324970929245283" "-0.466503446226415"  "-0.478991622075472" 
                     tBodyGyroMag-mean     tBodyGyroMag-std     tBodyGyroJerkMag-mean tBodyGyroJerkMag-std
LAYING.1             "-0.874759548"        "-0.81901016976"     "-0.96346103"         "-0.9358409828"     
SITTING.1            "-0.93089249"         "-0.934531840425532" "-0.991976341276596"  "-0.988308728510638"
STANDING.1           "-0.976493792830189"  "-0.978690028679245" "-0.994966790566038"  "-0.994733238679245"
WALKING.1            "-0.160979552536842"  "-0.186978364526316" "-0.298703679084211"  "-0.325324878894737"
WALKING_DOWNSTAIRS.1 "-0.0757412543673469" "-0.225724368061224" "-0.295463843346939"  "-0.306510645530612"
WALKING_UPSTAIRS.1   "-0.126735589969811"  "-0.14861931805283"  "-0.59488286509434"   "-0.648553044339623"
                     fBodyAcc-mean-X      fBodyAcc-mean-Y       fBodyAcc-mean-Z      fBodyAcc-std-X      
LAYING.1             "-0.9390990524"      "-0.86706520518"      "-0.8826668762"      "-0.9244374346"     
SITTING.1            "-0.979641238723404" "-0.944084550425532"  "-0.959184889148936" "-0.976412313191489"
STANDING.1           "-0.995249932641509" "-0.977070847735849"  "-0.985297098679245" "-0.99602834509434" 
WALKING.1            "-0.202794306326316" "0.0897127264021053"  "-0.331560117789474" "-0.319134719578947"
WALKING_DOWNSTAIRS.1 "0.0382291831510204" "0.00154990783591837" "-0.225574471693878" "0.0243308391387755"
WALKING_UPSTAIRS.1   "-0.404321784150943" "-0.190976720811321"  "-0.433349702075472" "-0.337428188679245"
                     fBodyAcc-std-Y       fBodyAcc-std-Z       fBodyAcc-meanFreq-X   fBodyAcc-meanFreq-Y 
LAYING.1             "-0.8336255561"      "-0.81289155944"     "-0.158792670508"     "0.097534841586"    
SITTING.1            "-0.917275006382979" "-0.934469558085106" "-0.0495135975489362" "0.0759460768510638"
STANDING.1           "-0.972293102075472" "-0.977937259622642" "0.0865153619088679"  "0.117478948718868" 
WALKING.1            "0.056040006846"     "-0.279686751494737" "-0.207548374494737"  "0.113093646103158" 
WALKING_DOWNSTAIRS.1 "-0.112963739953061" "-0.297927894693878" "-0.307395198687755"  "0.0632200839346939"
WALKING_UPSTAIRS.1   "0.0217695106566038" "0.0859565543849057" "-0.418735000377359"  "-0.160697213516981"
                     fBodyAcc-meanFreq-Z  fBodyAccJerk-mean-X   fBodyAccJerk-mean-Y   fBodyAccJerk-mean-Z 
LAYING.1             "0.08943765522"      "-0.9570738838"       "-0.9224626098"       "-0.9480609042"     
SITTING.1            "0.238829870148936"  "-0.986597022553191"  "-0.981579467021277"  "-0.986053092340425"
STANDING.1           "0.244858585792453"  "-0.994630797358491"  "-0.985418704528302"  "-0.990752166037736"
WALKING.1            "0.0497265196172632" "-0.170546964549579"  "-0.0352255241130632" "-0.468999224631579"
WALKING_DOWNSTAIRS.1 "0.294322700810612"  "-0.0276638676122449" "-0.12866715764898"   "-0.288334735714286"
WALKING_UPSTAIRS.1   "-0.520114793584906" "-0.479875245660377"  "-0.41344458754717"   "-0.685474353962264"
                     fBodyAccJerk-std-X    fBodyAccJerk-std-Y   fBodyAccJerk-std-Z  
LAYING.1             "-0.9641607086"       "-0.9322178704"      "-0.9605869872"     
SITTING.1            "-0.987492994468085"  "-0.982513909574468" "-0.988339184893617"
STANDING.1           "-0.995073759245283"  "-0.987018226792453" "-0.992349818113208"
WALKING.1            "-0.133586606326316"  "0.106739857136"     "-0.534713440421053"
WALKING_DOWNSTAIRS.1 "-0.0863278966402041" "-0.134580008877551" "-0.401721464285714"
WALKING_UPSTAIRS.1   "-0.461907025849057"  "-0.381777065283019" "-0.726040200754717"
                     fBodyAccJerk-meanFreq-X fBodyAccJerk-meanFreq-Y fBodyAccJerk-meanFreq-Z
LAYING.1             "0.132419092398"        "0.024513618956"        "0.02438794528"        
SITTING.1            "0.256610823568085"     "0.0475437839595745"    "0.0923920032553192"   
STANDING.1           "0.314182940150943"     "0.0391618954943396"    "0.138581478749057"    
WALKING.1            "-0.209261973376842"    "-0.386237143210526"    "-0.185530281244211"   
WALKING_DOWNSTAIRS.1 "-0.253164344918367"    "-0.33758970122449"     "0.00937223889183673"  
WALKING_UPSTAIRS.1   "-0.377023128301887"    "-0.509495531698113"    "-0.551104284150943"   
                     fBodyGyro-mean-X     fBodyGyro-mean-Y      fBodyGyro-mean-Z      fBodyGyro-std-X     
LAYING.1             "-0.850249174586"    "-0.9521914948"       "-0.909302721"        "-0.8822964508"     
SITTING.1            "-0.976161464042553" "-0.975838585319149"  "-0.951315544468085"  "-0.977904227021277"
STANDING.1           "-0.986386786037736" "-0.988984455849057"  "-0.980773122830189"  "-0.987497128679245"
WALKING.1            "-0.339032197115789" "-0.103059416434737"  "-0.255940940315789"  "-0.516691938736842"
WALKING_DOWNSTAIRS.1 "-0.352449631363265" "-0.0557022524693878" "-0.0318694271979592" "-0.495422486102041"
WALKING_UPSTAIRS.1   "-0.492611667924528" "-0.319474609056604"  "-0.453597213018868"  "-0.565892490754717"
                     fBodyGyro-std-Y       fBodyGyro-std-Z      fBodyGyro-meanFreq-X fBodyGyro-meanFreq-Y 
LAYING.1             "-0.9512320494"       "-0.9165825082"      "-0.003546795856"    "-0.091529130882"    
SITTING.1            "-0.962345042553192"  "-0.94391784106383"  "0.189153021260851"  "0.0631270669787234" 
STANDING.1           "-0.987107727735849"  "-0.98234533"        "-0.120293020603774" "-0.0447191978169811"
WALKING.1            "-0.0335081597884211" "-0.436562227473684" "0.0147844986621053" "-0.0657746190010526"
WALKING_DOWNSTAIRS.1 "-0.181414728657143"  "-0.238443565306122" "-0.100453729040816" "0.0825511487183673" 
WALKING_UPSTAIRS.1   "0.151538905566038"   "-0.57170784"        "-0.187450247737736" "-0.473574786603774" 
                     fBodyGyro-meanFreq-Z  fBodyAccMag-mean     fBodyAccMag-std      fBodyAccMag-meanFreq 
LAYING.1             "0.01045812566"       "-0.8617676481"      "-0.7983009404"      "0.08640856294"      
SITTING.1            "-0.0297839207446809" "-0.947782922553192" "-0.928444801702128" "0.236655011680851"  
STANDING.1           "0.100607635139623"   "-0.985356361132075" "-0.982313804716981" "0.284555290773585"  
WALKING.1            "0.00077332156431579" "-0.128623450629474" "-0.398032586842105" "0.1906437244"       
WALKING_DOWNSTAIRS.1 "-0.0756762067714286" "0.0965845343040816" "-0.186530301073469" "0.119187142767959"  
WALKING_UPSTAIRS.1   "-0.133373904258491"  "-0.352395944716981" "-0.416260101509434" "-0.0977433496415094"
                     fBodyBodyAccJerkMag-mean fBodyBodyAccJerkMag-std fBodyBodyAccJerkMag-meanFreq
LAYING.1             "-0.9333003608"          "-0.9218039756"         "0.26639115416"             
SITTING.1            "-0.985262126808511"     "-0.981606177446808"    "0.351852201957447"         
STANDING.1           "-0.99254247754717"      "-0.992536003396226"    "0.422220102264151"         
WALKING.1            "-0.0571194000343158"    "-0.103492403002105"    "0.0938221807027368"        
WALKING_DOWNSTAIRS.1 "0.0262184949326531"     "-0.104052260726531"    "0.0764915474326531"        
WALKING_UPSTAIRS.1   "-0.44265216245283"      "-0.533059853773585"    "0.085352409154717"         
                     fBodyBodyGyroMag-mean fBodyBodyGyroMag-std fBodyBodyGyroMag-meanFreq
LAYING.1             "-0.8621901854"       "-0.82431943968"     "-0.1397750127"          
SITTING.1            "-0.958435589361702"  "-0.932198374893617" "-0.000262186717021277"  
STANDING.1           "-0.984617623396226"  "-0.978466072075472" "-0.0286057725328302"    
WALKING.1            "-0.199252568986316"  "-0.321017953894737" "0.268844367525895"      
WALKING_DOWNSTAIRS.1 "-0.185720285744898"  "-0.398350390122449" "0.349613895469388"      
WALKING_UPSTAIRS.1   "-0.325961457396226"  "-0.182985518264151" "-0.219303376110566"     
                     fBodyBodyGyroJerkMag-mean fBodyBodyGyroJerkMag-std fBodyBodyGyroJerkMag-meanFreq
LAYING.1             "-0.9423669466"           "-0.9326606676"          "0.17648590708"              
SITTING.1            "-0.989797547234043"      "-0.987049617234043"     "0.184775928085106"          
STANDING.1           "-0.994815376981132"      "-0.994671123207547"     "0.334498734301887"          
WALKING.1            "-0.319308593778947"      "-0.381601911789474"     "0.190663448793684"          
WALKING_DOWNSTAIRS.1 "-0.281963359177551"      "-0.391919876612245"     "0.190000706165102"          
WALKING_UPSTAIRS.1   "-0.634665082075472"      "-0.693930521509434"     "0.114277342454717"          
                     angletBodyAccMean,gravity angletBodyAccJerkMean_gravityMean
LAYING.1             "0.0213659655642"         "0.00306040735"                  
SITTING.1            "0.0274415479191489"      "0.0297097878297872"             
STANDING.1           "-0.000222340747169812"   "0.021963782690566"              
WALKING.1            "0.0604537474147368"      "-0.00793037848421052"           
WALKING_DOWNSTAIRS.1 "-0.00269512515918367"    "0.0899316865510204"             
WALKING_UPSTAIRS.1   "0.0960860761792453"      "-0.0610838413018868"            
                     angletBodyGyroMean,gravityMean angletBodyGyroJerkMean,gravityMean angleX,gravityMean  
LAYING.1             "-0.001666984698"              "0.08443716468"                    "0.4267062264"      
SITTING.1            "0.0676981338723404"           "-0.064881619087234"               "-0.591247480212766"
STANDING.1           "-0.0337938382037736"          "-0.0279229321962264"              "-0.743407887924528"
WALKING.1            "0.0130594907157895"           "-0.0187431910452632"              "-0.729247201052632"
WALKING_DOWNSTAIRS.1 "0.0633382849183673"           "-0.0399768458163265"              "-0.744483753469388"
WALKING_UPSTAIRS.1   "-0.194699963113208"           "0.0656835692641509"               "-0.647195664339623"
                     angleY,gravityMean    angleZ,gravityMean  
LAYING.1             "-0.52034381798"      "-0.35241310896"    
SITTING.1            "-0.0604660253808511" "-0.218017225106383"
STANDING.1           "0.270175032830189"   "0.0122528503773585"
WALKING.1            "0.276953023473684"   "0.0688589119894737"
WALKING_DOWNSTAIRS.1 "0.267245784693878"   "0.0650047072244898"
WALKING_UPSTAIRS.1   "0.334763277358491"   "0.0741663682075472"
> 

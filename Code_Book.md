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

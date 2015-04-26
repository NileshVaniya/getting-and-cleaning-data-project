---
title: "Codebook"
author: "Nilesh Vaniya"
date: "26/04/2015"
output:
  html_document:
    keep_md: yes
---
 
## Project Description
This is a project for Getting and Cleaning Data course of Data Science specialisation offered by Johns Hopkin University through Coursera.
 
##Study design and data processing
 
###Collection of the raw data
The data was collected from the a research project conducted by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto and Xavier Parra.
Link to data - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Link to research project - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
 
###Notes on the original (raw) data 
All license and copyrights belong to the researchers of the project. I have just used the data to meet
requirements for the project of this course. I do not claim any ownership or rights on the data nor do I take any responsibility for the datasets presented.
The sole purpose of this exercise is to meet the course requirements.

See licence statement from the original document as below - 

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.


##Creating the tidy datafile
 
###Guide to create the tidy data file
The source of tidy data was zip file which was downloaded and unzipped in the working directory. Then some data cleaning was performed before the data was summarised by taking mean of each of the measurements.
 
###Cleaning of the data
The cleaning of data involved merging various data sources together, selecting relevant columns, providing descriptive column headers and using activity names instead of codes.
Then mean was taken to summarise the tidy dataset.

##Description of the variables in the tiny_data.txt file
There are 180 rows and 88 columns (2 identification variables subject & activity) and 86 measurements on mean and std). 
The dataset includes all variables from the original source where the name contained mean, Mean or std words.

See below for the brief description of each of the variables.
 
### subject
There are 30 subjects for which the data is recorded. The experiments have been carried out with a 
group of 30 volunteers within an age bracket of 19-48 years.

### activity
There are total six types of activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) were perfomed by the subjects while wearing a smartphone (Samsung Galaxy S II) on the waist.

### mean_of_time_BodyAcc_X_mean
mean of average time recorded for body acceleration signal on X axis

class: numeric
minimum value: 0.22159824394
maximum value: 0.3014610196
average: 0.274302742245795
median: 0.276964936014357

### mean_of_time_BodyAcc_Y_mean
mean of average time recorded for body acceleration signal on Y axis

class: numeric
minimum value: -0.0405139534294
maximum value: -0.00130828765170213
average: -0.0178755238674415
median: -0.0172620496866845

### mean_of_time_BodyAcc_Z_mean
mean of average time recorded for body acceleration signal on Z axis

class: numeric
minimum value: -0.152513899520833
maximum value: -0.07537846886
average: -0.109163815804519
median: -0.10819133976087

### mean_of_time_GravityAcc_X_mean
mean of average time recorded for gravity acceleration signal on X axis

class: numeric
minimum value: -0.680043155060241
maximum value: 0.974508732
average: 0.697477505882702
median: 0.920838883913399

### mean_of_time_GravityAcc_Y_mean
mean of average time recorded for gravity acceleration signal on Y axis

class: numeric
minimum value: -0.479894842941176
maximum value: 0.956593814210526
average: -0.0162128361521394
median: -0.127822394803259

### mean_of_time_GravityAcc_Z_mean
mean of average time recorded for gravity acceleration signal on Z axis

class: numeric
minimum value: -0.49508872037037
maximum value: 0.9578730416
average: 0.0741278709325255
median: 0.0238412209314665

### mean_of_time_BodyAccJerk_X_mean
mean of average time recorded for body acceleration jerk on X axis

class: numeric
minimum value: 0.0426880986186441
maximum value: 0.130193043809524
average: 0.0794735599203562
median: 0.07639996928242

### mean_of_time_BodyAccJerk_Y_mean
mean of average time recorded for body acceleration jerk on Y axis

class: numeric
minimum value: -0.0386872111282051
maximum value: 0.056818586275
average: 0.00756520996888408
median: 0.0094697935989457

### mean_of_time_BodyAccJerk_Z_mean
mean of average time recorded for body acceleration jerk on Z axis

class: numeric
minimum value: -0.0674583919268293
maximum value: 0.0380533591627451
average: -0.00495340328183431
median: -0.0038606227443805

### mean_of_time_BodyGyro_X_mean
mean of average time recorded for body gyroscope signal on X axis

class: numeric
minimum value: -0.205775427307692
maximum value: 0.19270447595122
average: -0.0324371599031218
median: -0.0287050671386676

### mean_of_time_BodyGyro_Y_mean
mean of average time recorded for body gyroscope signal on Y axis

class: numeric
minimum value: -0.204205356087805
maximum value: 0.0274707556666667
average: -0.0742595723452297
median: -0.073182294529017

### mean_of_time_BodyGyro_Z_mean
mean of average time recorded for body gyroscope signal on Z axis

class: numeric
minimum value: -0.0724546025804878
maximum value: 0.179102058245614
average: 0.0874446468695526
median: 0.0851214588562313

### mean_of_time_BodyGyroJerk_X_mean
mean of average time recorded for body gyroscope jerk on X axis

class: numeric
minimum value: -0.157212539189362
maximum value: -0.0220916265065217
average: -0.0960567959204382
median: -0.0986833593296509

### mean_of_time_BodyGyroJerk_Y_mean
mean of average time recorded for body gyroscope jerk on Y axis

class: numeric
minimum value: -0.0768089915604167
maximum value: -0.0132022768074468
average: -0.0426927819752453
median: -0.0411175370152026

### mean_of_time_BodyGyroJerk_Z_mean
mean of average time recorded for body gyroscope jerk on Z axis

class: numeric
minimum value: -0.0924998531372549
maximum value: -0.00694066389361702
average: -0.0548018825799509
median: -0.0534296148538262

### mean_of_time_BodyAccMag-mean
mean of average time recorded for BodyAccMag-mean

class: numeric
minimum value: -0.986493196666667
maximum value: 0.644604325128205
average: -0.49728966685894
median: -0.482883603047945

### mean_of_time_GravityAccMag_mean
mean of average time recorded for gravity acceleration magnitude

class: numeric
minimum value: -0.986493196666667
maximum value: 0.644604325128205
average: -0.49728966685894
median: -0.482883603047945

### mean_of_time_BodyAccJerkMag_mean
mean of average time recorded for body acceleration jerk magnitude

class: numeric
minimum value: -0.99281471515625
maximum value: 0.434490400974359
average: -0.607929591545179
median: -0.816778554069231

### mean_of_time_BodyGyroMag_mean
mean of average time recorded for body gyroscope magnitude

class: numeric
minimum value: -0.980740846769231
maximum value: 0.418004608615385
average: -0.565163077212988
median: -0.655079846599804

### mean_of_time_BodyGyroJerkMag_mean
mean of average time recorded for body gyroscope jerk magnitude

class: numeric
minimum value: -0.997322526811594
maximum value: 0.0875816618205128
average: -0.736369300428253
median: -0.864794595203118

### mean_of_frequency_BodyAcc_X_mean
mean of average frequency recorded for body acceleration signal on X axis

class: numeric
minimum value: -0.995249932641509
maximum value: 0.537012022051282
average: -0.575799983503946
median: -0.769093140075898

### mean_of_frequency_BodyAcc_Y_mean
mean of average frequency recorded for body acceleration signal on Y axis

class: numeric
minimum value: -0.989034304057971
maximum value: 0.524187686888889
average: -0.488732713013952
median: -0.594984308629578

### mean_of_frequency_BodyAcc_Z_mean
mean of average frequency recorded for body acceleration signal on Z axis

class: numeric
minimum value: -0.989473926666667
maximum value: 0.280735952206667
average: -0.62973875362598
median: -0.723601712197488

### mean_of_frequency_BodyAcc_X_meanFreq
mean of average frequency recorded for body acceleration signal on X axisFreq

class: numeric
minimum value: -0.635913046346154
maximum value: 0.159123629063636
average: -0.23226609715376
median: -0.25730733733

### mean_of_frequency_BodyAcc_Y_meanFreq
mean of average frequency recorded for body acceleration signal on Y axisFreq

class: numeric
minimum value: -0.379518455061538
maximum value: 0.466528231788462
average: 0.0115288797872382
median: 0.00785476566367267

### mean_of_frequency_BodyAcc_Z_meanFreq
mean of average frequency recorded for body acceleration signal on Z axisFreq

class: numeric
minimum value: -0.520114793584906
maximum value: 0.402532553395833
average: 0.0437174260645842
median: 0.065823500655572

### mean_of_frequency_BodyAccJerk_X_mean
mean of average frequency recorded for body acceleration jerk on X axis

class: numeric
minimum value: -0.994630797358491
maximum value: 0.474317256051282
average: -0.613928222283428
median: -0.812641020130769

### mean_of_frequency_BodyAccJerk_Y_mean
mean of average frequency recorded for body acceleration jerk on Y axis

class: numeric
minimum value: -0.989398823913043
maximum value: 0.276716853307692
average: -0.588163069360073
median: -0.781656017361539

### mean_of_frequency_BodyAccJerk_Z_mean
mean of average frequency recorded for body acceleration jerk on Z axis

class: numeric
minimum value: -0.992018447826087
maximum value: 0.157775692377778
average: -0.714358487490646
median: -0.870663937715384

### mean_of_frequency_BodyAccJerk_X_meanFreq
mean of average frequency recorded for body acceleration jerk on X axisFreq

class: numeric
minimum value: -0.576044001875
maximum value: 0.331449281481482
average: -0.0691017912141093
median: -0.0609122254010664

### mean_of_frequency_BodyAccJerk_Y_meanFreq
mean of average frequency recorded for body acceleration jerk on Y axisFreq

class: numeric
minimum value: -0.601971415384615
maximum value: 0.195677336307692
average: -0.228102065671109
median: -0.232093202639008

### mean_of_frequency_BodyAccJerk_Z_meanFreq
mean of average frequency recorded for body acceleration jerk on Z axisFreq

class: numeric
minimum value: -0.62755547372549
maximum value: 0.230107945944444
average: -0.137602308791712
median: -0.0918702088312326

### mean_of_frequency_BodyGyro_X_mean
mean of average frequency recorded for body gyroscope signal on X axis

class: numeric
minimum value: -0.99312260884058
maximum value: 0.474962448333333
average: -0.636739605053057
median: -0.729961304525143

### mean_of_frequency_BodyGyro_Y_mean
mean of average frequency recorded for body gyroscope signal on Y axis

class: numeric
minimum value: -0.994025488297872
maximum value: 0.328817010088889
average: -0.676686800745998
median: -0.814097490770167

### mean_of_frequency_BodyGyro_Z_mean
mean of average frequency recorded for body gyroscope signal on Z axis

class: numeric
minimum value: -0.985957788
maximum value: 0.492414379822222
average: -0.604391244378742
median: -0.790931357562831

### mean_of_frequency_BodyGyro_X_meanFreq
mean of average frequency recorded for body gyroscope signal on X axisFreq

class: numeric
minimum value: -0.395770150677419
maximum value: 0.249209411510602
average: -0.104551025495773
median: -0.115526767588235

### mean_of_frequency_BodyGyro_Y_meanFreq
mean of average frequency recorded for body gyroscope signal on Y axisFreq

class: numeric
minimum value: -0.666814815306122
maximum value: 0.273141323315789
average: -0.167407475856434
median: -0.157944540045705

### mean_of_frequency_BodyGyro_Z_meanFreq
mean of average frequency recorded for body gyroscope signal on Z axisFreq

class: numeric
minimum value: -0.507490866734694
maximum value: 0.3770740968
average: -0.0571809440547551
median: -0.0508112844922094

### mean_of_frequency_BodyAccMag_mean
mean of average frequency recorded for body acceleration magnitude

class: numeric
minimum value: -0.986800645362319
maximum value: 0.586637550769231
average: -0.536516692548498
median: -0.670270983362273

### mean_of_frequency_BodyAccMag_meanFreq
mean of average frequency recorded for body acceleration magnitudeFreq

class: numeric
minimum value: -0.312338030213846
maximum value: 0.435846931652174
average: 0.0761281754555899
median: 0.0813178394709229

### mean_of_frequency_BodyAccJerkMag_mean
mean of average frequency recorded for body acceleration jerk magnitude

class: numeric
minimum value: -0.993998275797101
maximum value: 0.538404846128205
average: -0.575617493234432
median: -0.794047735707692

### mean_of_frequency_BodyAccJerkMag_meanFreq
mean of average frequency recorded for body acceleration jerk magnitudeFreq

class: numeric
minimum value: -0.125210388757581
maximum value: 0.488088499666667
average: 0.162545885494571
median: 0.171982802993376

### mean_of_frequency_BodyGyroMag_mean
mean of average frequency recorded for body gyroscope magnitude

class: numeric
minimum value: -0.986535242105263
maximum value: 0.203979764835897
average: -0.667099099613148
median: -0.765709363092157

### mean_of_frequency_BodyGyroMag_meanFreq
mean of average frequency recorded for body gyroscope magnitudeFreq

class: numeric
minimum value: -0.456638670923077
maximum value: 0.409521611525424
average: -0.0360322479939937
median: -0.0535216170714524

### mean_of_frequency_BodyGyroJerkMag_mean
mean of average frequency recorded for body gyroscope jerk magnitude

class: numeric
minimum value: -0.997617389275362
maximum value: 0.146618569064407
average: -0.756385271117364
median: -0.877896583992678

### mean_of_frequency_BodyGyroJerkMag_meanFreq
mean of average frequency recorded for body gyroscope jerk magnitudeFreq

class: numeric
minimum value: -0.182923596577778
maximum value: 0.426301679855072
average: 0.125922459004982
median: 0.111560706294131

### mean_of_angle_TimeBodyAccMean_gravityMean
mean of average angle between average time of body acceleration and average gravity

class: numeric
minimum value: -0.163042575021277
maximum value: 0.129153963587755
average: 0.00655573583907996
median: 0.00787831959307693

### mean_of_angle_TimeBodyAccJerkMean_gravityMean
mean of average angle between average time of body acceleration jerk and average gravity

class: numeric
minimum value: -0.120553975717391
maximum value: 0.203259965863014
average: 0.000643885912133423
median: 0.00313579068480392

### mean_of_angle_TimeBodyGyroMean_gravityMean
mean of average angle between average time from body gyroscope and average gravity

class: numeric
minimum value: -0.389305120341463
maximum value: 0.444101172307692
average: 0.0219317046182738
median: 0.0208689083217391

### mean_of_angle_TimeBodyGyroJerkMean_gravityMean
mean of average angle between average time from body gyroscope jerk and average gravity

class: numeric
minimum value: -0.223672056052174
maximum value: 0.182384802705085
average: -0.0113731727087864
median: -0.0160167541346732

### mean_of_angle_X_gravityMean
mean of average angle between on X axis and average gravity

class: numeric
minimum value: -0.947116527659574
maximum value: 0.737784354819277
average: -0.524306549016646
median: -0.737722013790743

### mean_of_angle_Y_gravityMean
mean of average angle between on Y axis and average gravity

class: numeric
minimum value: -0.874567701929825
maximum value: 0.42476122745098
average: 0.0786533502520241
median: 0.171357606231561

### mean_of_angle_Z_gravityMean
mean of average angle between on Z axis and average gravity

class: numeric
minimum value: -0.873649367
maximum value: 0.390444368518519
average: -0.0404362019002546
median: 0.00507899514021186

### mean_of_time_BodyAcc_X_std
mean of standard deviation in time recorded for body acceleration signal on X axis

class: numeric
minimum value: -0.996068635384615
maximum value: 0.626917070512821
average: -0.557690076404401
median: -0.752561958811552

### mean_of_time_BodyAcc_Y_std
mean of standard deviation in time recorded for body acceleration signal on Y axis

class: numeric
minimum value: -0.990240946666667
maximum value: 0.616937015333333
average: -0.460462635378301
median: -0.508965351555332

### mean_of_time_BodyAcc_Z_std
mean of standard deviation in time recorded for body acceleration signal on Z axis

class: numeric
minimum value: -0.987658662307692
maximum value: 0.609017879074074
average: -0.575560246148636
median: -0.651757405423516

### mean_of_time_GravityAcc_X_std
mean of standard deviation in time recorded for gravity acceleration signal on X axis

class: numeric
minimum value: -0.996764227384615
maximum value: -0.829554947808219
average: -0.96375253077172
median: -0.9694656827608

### mean_of_time_GravityAcc_Y_std
mean of standard deviation in time recorded for gravity acceleration signal on Y axis

class: numeric
minimum value: -0.99424764884058
maximum value: -0.643578361424658
average: -0.952429559765945
median: -0.959033035282651

### mean_of_time_GravityAcc_Z_std
mean of standard deviation in time recorded for gravity acceleration signal on Z axis

class: numeric
minimum value: -0.990957249538462
maximum value: -0.610161166287671
average: -0.93640104156585
median: -0.945002365380835

### mean_of_time_BodyAccJerk_X_std
mean of standard deviation in time recorded for body acceleration jerk on X axis

class: numeric
minimum value: -0.994604542264151
maximum value: 0.544273037307692
average: -0.594946699510964
median: -0.810364617825977

### mean_of_time_BodyAccJerk_Y_std
mean of standard deviation in time recorded for body acceleration jerk on Y axis

class: numeric
minimum value: -0.989513565652174
maximum value: 0.355306716915385
average: -0.565414714340423
median: -0.775640254646154

### mean_of_time_BodyAccJerk_Z_std
mean of standard deviation in time recorded for body acceleration jerk on Z axis

class: numeric
minimum value: -0.993288313333333
maximum value: 0.0310157077775926
average: -0.735957689241115
median: -0.883656741553846

### mean_of_time_BodyGyro_X_std
mean of standard deviation in time recorded for body gyroscope signal on X axis

class: numeric
minimum value: -0.994276591304348
maximum value: 0.267657219333333
average: -0.691639902777431
median: -0.78899182266

### mean_of_time_BodyGyro_Y_std
mean of standard deviation in time recorded for body gyroscope signal on Y axis

class: numeric
minimum value: -0.994210471914894
maximum value: 0.476518714444444
average: -0.653302029911363
median: -0.801683738898021

### mean_of_time_BodyGyro_Z_std
mean of standard deviation in time recorded for body gyroscope signal on Z axis

class: numeric
minimum value: -0.985538363333333
maximum value: 0.564875818162963
average: -0.616435294332593
median: -0.8010010881621

### mean_of_time_BodyGyroJerk_X_std
mean of standard deviation in time recorded for body gyroscope jerk on X axis

class: numeric
minimum value: -0.99654254057971
maximum value: 0.179148649684615
average: -0.703632714557601
median: -0.839648774710345

### mean_of_time_BodyGyroJerk_Y_std
mean of standard deviation in time recorded for body gyroscope jerk on Y axis

class: numeric
minimum value: -0.997081575652174
maximum value: 0.295945926186441
average: -0.763551835158898
median: -0.89417791168862

### mean_of_time_BodyGyroJerk_Z_std
mean of standard deviation in time recorded for body gyroscope jerk on Z axis

class: numeric
minimum value: -0.995380794637681
maximum value: 0.193206498960417
average: -0.709559184010004
median: -0.860964365777116

### mean_of_time_BodyAccMag-std
mean of standard deviation in time recorded for BodyAccMag-std

class: numeric
minimum value: -0.986464542615385
maximum value: 0.428405922622222
average: -0.543908670845839
median: -0.607428117013143

### mean_of_time_GravityAccMag_std
mean of standard deviation in time recorded for gravity acceleration magnitude

class: numeric
minimum value: -0.986464542615385
maximum value: 0.428405922622222
average: -0.543908670845839
median: -0.607428117013143

### mean_of_time_BodyAccJerkMag_std
mean of standard deviation in time recorded for body acceleration jerk magnitude

class: numeric
minimum value: -0.994646916811594
maximum value: 0.450612065720513
average: -0.584175609709768
median: -0.801379344123077

### mean_of_time_BodyGyroMag_std
mean of standard deviation in time recorded for body gyroscope magnitude

class: numeric
minimum value: -0.981372675614035
maximum value: 0.299975979851852
average: -0.630394720315622
median: -0.742044287036862

### mean_of_time_BodyGyroJerkMag_std
mean of standard deviation in time recorded for body gyroscope jerk magnitude

class: numeric
minimum value: -0.997666071594203
maximum value: 0.250173204117966
average: -0.755015188509002
median: -0.880926958143599

### mean_of_frequency_BodyAcc_X_std
mean of standard deviation in frequency recorded for body acceleration signal on X axis

class: numeric
minimum value: -0.996604570307692
maximum value: 0.658506543333333
average: -0.552201112392524
median: -0.74699883447612

### mean_of_frequency_BodyAcc_Y_std
mean of standard deviation in frequency recorded for body acceleration signal on Y axis

class: numeric
minimum value: -0.990680395362319
maximum value: 0.560191344
average: -0.481478729871355
median: -0.51337746716304

### mean_of_frequency_BodyAcc_Z_std
mean of standard deviation in frequency recorded for body acceleration signal on Z axis

class: numeric
minimum value: -0.987224804307692
maximum value: 0.687124163703704
average: -0.582361415029381
median: -0.644149346839498

### mean_of_frequency_BodyAccJerk_X_std
mean of standard deviation in frequency recorded for body acceleration jerk on X axis

class: numeric
minimum value: -0.995073759245283
maximum value: 0.476803887476923
average: -0.612103283207987
median: -0.825392273824716

### mean_of_frequency_BodyAccJerk_Y_std
mean of standard deviation in frequency recorded for body acceleration jerk on Y axis

class: numeric
minimum value: -0.990468082753623
maximum value: 0.349771285415897
average: -0.570730968650136
median: -0.785151940276923

### mean_of_frequency_BodyAccJerk_Z_std
mean of standard deviation in frequency recorded for body acceleration jerk on Z axis

class: numeric
minimum value: -0.993107759855072
maximum value: -0.00623647528983051
average: -0.756489426411787
median: -0.895120677107692

### mean_of_frequency_BodyGyro_X_std
mean of standard deviation in frequency recorded for body gyroscope signal on X axis

class: numeric
minimum value: -0.994652185217391
maximum value: 0.196613286661538
average: -0.711035658050846
median: -0.808598920489285

### mean_of_frequency_BodyGyro_Y_std
mean of standard deviation in frequency recorded for body gyroscope signal on Y axis

class: numeric
minimum value: -0.994353086595745
maximum value: 0.646233637037037
average: -0.645433416234092
median: -0.796377933461187

### mean_of_frequency_BodyGyro_Z_std
mean of standard deviation in frequency recorded for body gyroscope signal on Z axis

class: numeric
minimum value: -0.986725274871795
maximum value: 0.522454216314815
average: -0.657746585870822
median: -0.822400371451041

### mean_of_frequency_BodyAccMag_std
mean of standard deviation in frequency recorded for body acceleration magnitude

class: numeric
minimum value: -0.987648484461539
maximum value: 0.178684580868889
average: -0.620963293005196
median: -0.651262934905251

### mean_of_frequency_BodyAccJerkMag_std
mean of standard deviation in frequency recorded for body acceleration jerk magnitude

class: numeric
minimum value: -0.994366667681159
maximum value: 0.316346415348718
average: -0.599160868317743
median: -0.812618834107693

### mean_of_frequency_BodyGyroMag_std
mean of standard deviation in frequency recorded for body gyroscope magnitude

class: numeric
minimum value: -0.981468841692308
maximum value: 0.236659662496296
average: -0.672322349574843
median: -0.772728220624314

### mean_of_frequency_BodyGyroJerkMag_std
mean of standard deviation in frequency recorded for body gyroscope jerk magnitude

class: numeric
minimum value: -0.99758523057971
maximum value: 0.287834616098305
average: -0.771517051737343
median: -0.894068356326169

###Appendix:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

Template for this codebook was taken from - https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41 (by Joris Schut)

Coursera Getting and Cleaning Data staff, students and CTA like - David Hood - thank you all for your help and support.

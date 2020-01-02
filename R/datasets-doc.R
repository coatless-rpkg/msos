#' Birthrates throughout the day in four Hospitals
#'
#' The data on average number of births for each hour of the day for four hospitals.
#' @format
#'  A double matrix with 24 observations on the following 4 variables.
#'  \describe{
#'    \item{\code{Hospital1}}{Average number of births for each hour of the day within Hospital 1}
#'    \item{\code{Hospital2}}{Average number of births for each hour of the day within Hospital 2}
#'    \item{\code{Hospital3}}{Average number of births for each hour of the day within Hospital 3}
#'    \item{\code{Hospital4}}{Average number of births for each hour of the day within Hospital 4}
#'  }
#' @source To be determined
#' @keywords datasets
"births"

#' The Effects of Caffeine
#'
#' Henson et al. [1996] conducted an experiment to see whether caffeine has a
#' negative effect on short-term visual memory. High school students were
#' randomly chosen: 9 from eighth grade, 10 from tenth grade, and 9 from
#' twelfth grade. Each person was tested once after having caffeinated Coke,
#' and once after having decaffeinated Coke. After each drink, the person was
#' given ten seconds to try to memorize twenty small, common objects, then
#' allowed a minute to write down as many as could be remembered. The main
#' question of interest is whether people remembered more objects after the
#' Coke without caffeine than after the Coke with caffeine.
#'
#' @format A double matrix with 28 observations on the following 3 variables.
#' \describe{
#' \item{Grade}{Grade of the Student, which is either 8th, 10th, or 12th}
#' \item{Without}{Number of items remembered after drinking Coke without Caffine}
#' \item{With}{Number of items remembered after drinking Coke with Caffine}
#' }
#' @source Claire Henson, Claire Rogers, and Nadia Reynolds. Always Coca-Cola.
#' Technical report, University Laboratory High School, Urbana, IL, 1996.
#' @keywords datasets
"caffeine"

#' Automobile Data from Consumer Reports
#'
#' The data set cars [Consumers' Union, 1990] contains 111 models of
#' automobile. The original data can be found in the S-Plus? [TIBCO Software
#' Inc., 2009] data frame cu.dimensions. In cars, the variables have been
#' normalized to have medians of 0 and median absolute deviations (MAD) of
#' 1.4826 (the MAD for a N(0, 1)).
#'
#' @format A double matrix with 111 observations on the following 11 variables.
#' \describe{
#'  \item{Length}{Overall length, in inches, as supplied by manufacturer.}
#'  \item{Wheelbase}{Length of wheelbase, in inches, as supplied by
#'                   manufacturer.}
#'  \item{Width}{Width of car, in inches, as supplied by manufacturer.}
#'  \item{Height}{Height of car, in inches, as supplied by manufacturer}
#'  \item{FrontHd}{Distance between the car's head-liner and the head of
#'                 a 5 ft. 9 in. front seat passenger, in inches, as measured
#'                 by CU.}
#'  \item{RearHd}{Distance between the car's head-liner and the head of a
#'                5 ft 9 in. rear seat passenger, in inches, as measured by CU}
#'  \item{FrtLegRoom}{Maximum front leg room, in inches, as measured by CU.}
#'  \item{RearSeating}{Rear fore-and-aft seating room, in inches, as measured
#'                     by CU.}
#'  \item{FrtShld}{Front shoulder room, in inches, as measured by CU.}
#'  \item{RearShld}{Rear shoulder room, in inches, as measured by CU.}
#'  \item{Luggage}{Luggage Area in Car.}
#' }
#' @source Consumers' Union. Body dimensions. Consumer Reports, April 286 -
#' 288, 1990.
#' @keywords datasets
"cars"

#' Cereal
#'
#' Chakrapani and Ehrenberg [1981] analyzed people's attitudes towards a
#' variety of breakfast cereals. The data matrix cereal is 8 ? 11, with rows
#' corresponding to eight cereals, and columns corresponding to potential
#' attributes about cereals. The original data consisted of the percentage of
#' subjects who thought the given cereal possessed the given attribute. The
#' present matrix has been doubly centered, so that the row means and columns
#' means are all zero. (The original data can be found in the S-Plus [TIBCO
#' Software Inc., 2009] data set cereal.attitude.)
#'
#' @format A double matrix with 8 observations on the following 11 variables.
#' \describe{
#'   \item{Return}{A cereal one would come back to}
#'   \item{Tasty}{Tastes good}
#'   \item{Popular}{Popular with the entire family}
#'   \item{Nourishing}{Cereal is fulfilling}
#'   \item{NaturalFlavor}{Cereal lacks flavor additives}
#'   \item{Affordable}{Cereal is priced well for the content}
#'   \item{GoodValue}{Quantity for Price}
#'   \item{Crispy}{Stays crispy in milk}
#'   \item{Fit}{Keeps one fit}
#'   \item{Fun}{Fun for children}
#' }
#' @source T. K. Chakrapani and A. S. C. Ehrenberg. An alternative to factor
#' analysis in marketing research part 2: Between group analysis. Professional
#' Marketing Research Society Journal, 1:32-38, 1981.
#' @keywords datasets
"cereal"

#' Morphological Measurements on Leptograpsus Crabs
#'
#' The \code{crabs} data frame has 200 rows and 8 columns, describing 5
#' morphological measurements on 50 crabs each of two colour forms and both
#' sexes, of the species \emph{Leptograpsus variegatus} collected at Fremantle,
#' W. Australia.
#'
#' @format This data frame contains the following columns:
#' \describe{
#'   \item{sp}{\code{species} - \code{"B"} or \code{"O"} for blue or orange.}
#'   \item{sex}{\code{"M"} (Male) or \code{"F"} (Female).}
#'   \item{index}{index \code{1:50} within each of the four groups.}
#'   \item{FL}{frontal lobe size (mm).}
#'   \item{RW}{rear width (mm).}
#'   \item{CL}{carapace length (mm).}
#'   \item{CW}{carapace width (mm).}
#'   \item{BD}{body depth (mm).}
#' }
#' @references Venables, W. N. and Ripley, B. D. (2002) \emph{Modern Applied
#' Statistics with S.} Fourth edition.  Springer.
#' @source Campbell, N.A. and Mahon, R.J. (1974) A multivariate study of
#' variation in two species of rock crab of genus \emph{Leptograpsus.}
#' \emph{Australian Journal of Zoology} \bold{22}, 417--425.
#'
#' MASS, R-Package
#' @keywords datasets
"crabs"

#' Decathlon Event Data from 2008 Olympics.
#'
#' The decathlon data set has scores on the top 24 men in the decathlon (a set
#' of ten events) at the 2008 Olympics. The scores are the numbers of points
#' each participant received in each event, plus each person's total points.
#'
#' @format A double matrix with 24 observations on the following 11 variables.
#' \describe{
#'   \item{X_100meter}{Individual point score for 100 Meter event.}
#'   \item{LongJump}{Individual point score for Long Jump event.}
#'   \item{ShotPut}{Individual point score for Shot Put event.}
#'   \item{HighJump}{Individual point score for High Jump event.}
#'   \item{X_400meter}{Individual point score for 400 Meter event.}
#'   \item{Hurdles}{Individual point score for 110 Hurdles event.}
#'   \item{Discus}{Individual point score for Discus event.}
#'   \item{PoleVault}{Individual point score for Pole Vault event.}
#'   \item{Javelin}{Individual point score for Javelin event.}
#'   \item{X_1500meter}{Individual point score for 1500 Meter event.}
#'   \item{Total}{Individual total point score for events participated in.}
#' }
#' @source NBC's Olympic site
#' @keywords datasets
"decathlon08"

#' Decathlon Event Data from 2012 Olympics.
#'
#' The decathlon data set has scores on the top 26 men in the decathlon (a set
#' of ten events) at the 2012 Olympics. The scores are the numbers of points
#' each participant received in each event, plus each person's total points.
#'
#' @format A double matrix with 26 observations on the following 11 variables.
#' \describe{
#'   \item{Meter100}{Individual point score for 100 Meter event.}
#'   \item{LongJump}{Individual point score for Long Jump event.}
#'   \item{ShotPut}{Individual point score for Shot Put event.}
#'   \item{HighJump}{Individual point score for High Jump event.}
#'   \item{Meter400}{Individual point score for 400 Meter event.}
#'   \item{Hurdles110}{Individual point score for 110 Hurdles event.}
#'   \item{Discus}{Individual point score for Discus event.}
#'   \item{PoleVault}{Individual point score for Pole Vault event.}
#'   \item{Javelin}{Individual point score for Javelin event.}
#'   \item{Meter1500}{Individual point score for 1500 Meter event.}
#'   \item{Total}{Individual total point score for events participated in.} }
#' @source NBC's Olympic site
#' @keywords datasets
"decathlon12"

#' Presidential Election Data
#'
#' The data set election has the results of the first three US presidential
#' races of the 2000's (2000, 2004, 2008). The observations are the 50 states
#' plus the District of Columbia, and the values are the (D - R)/(D + R) for
#' each state and each year, where D is the number of votes the Democrat
#' received, and R is the number the Republican received.
#'
#' @format A double matrix with 51 observations on the following 3 variables.
#' \describe{
#' \item{2000}{Results for 51 States in Year 2000}
#' \item{2004}{Results for 51 States in Year 2004}
#' \item{2008}{Results for 51 States in Year 2008}
#' }
#' @source Calculated by Prof. John Marden, data source to be announced.
#' @keywords datasets
"election"


#' Statistics Students' Scores on Exams
#'
#' The exams matrix has data on 191 statistics students, giving their scores
#' (out of 100) on the three midterm exams, and the final exam.
#'
#'
#' @format A double matrix with 191 observations on the following 4 variables.
#' \describe{
#'   \item{Midterm1}{Student score on the first midterm out of 100.}
#'   \item{Midterm2}{Student score on the second midterm out of 100.}
#'   \item{Midterm3}{Student score on the third midterm out of 100.}
#'   \item{FinalExam}{Student score on the Final Exam out of 100.}
#' }
#' @source Data from one of Prof. John Marden's earlier classes
#' @keywords datasets
"exams"


#' Grades
#'
#' The data set contains grades of 107 students.
#'
#'
#' @format A double matrix with 107 observations on the following 7 variables.
#' \describe{
#'   \item{Gender}{Sex (0=Male, 1=Female)}
#'   \item{HW}{Student Score on all Homework.}
#'   \item{Labs}{Student Score on all Labs.}
#'   \item{InClass}{Student Score on all In Class work.}
#'   \item{Midterms}{Student Score on all Midterms.}
#'   \item{Final}{Student Score on the Final.}
#'   \item{Total}{Student's Total Score}
#' }
#' @source Data from one of Prof. John Marden's earlier classes
#' @keywords datasets
"grades"



#' Histamine in Dogs
#'
#' Sixteen dogs were treated with drugs to see the effects on their blood
#' histamine levels. The dogs were split into four groups: Two groups received
#' the drugmorphine, and two received the drug trimethaphan, both given
#' intravenously. For one group within each pair of drug groups, the dogs had
#' their supply of histamine depleted before treatment, while the other group
#' had histamine intact. (Measurements with the value "0.10" marked data that
#' was missing and, were filled with that value arbitrarily.)
#'
#'
#' @format A double matrix with 16 observations on the following 4 variables.
#' \describe{
#'   \item{Before}{Histamine levels (in micrograms per milliliter of blood)
#'                 before the inoculation.}
#'   \item{After1}{Histamine levels (in micrograms per milliliter of blood)
#'                 one minute after inoculation.}
#'   \item{After3}{Histamine levels (in micrograms per milliliter of blood)
#'                 three minute after inoculation.}
#'   \item{After5}{Histamine levels (in micrograms per milliliter of blood)
#'                 five minutes after inoculation.}
#' }
#' @source Kenny J.Morris and Robert Zeppa. Histamine-induced hypotension due
#' to morphine and arfonad in the dog. Journal of Surgical Research,
#' 3(6):313-317, 1963.
#' @keywords datasets
"histamine"

#' Leprosy Patients
#'
#' Dataset with leprosy patients found in Snedecor and Cochran [1989]. There
#' were 30 patients, randomly allocated to three groups of 10. The first group
#' received drug A, the second drug D, and the third group received a placebo.
#' Each person had their bacterial count taken before and after receiving the
#' treatment.
#'
#'
#' @format A double matrix with 30 observations on the following 3 variables.
#' \describe{
#'   \item{Before}{Bacterial count taken before receiving the treatment.}
#'   \item{After}{Bacterial count taken after receiving the treatment.}
#'   \item{Group}{Group Coding: 0 = Drug A, 1 = Drug B, 2 = Placebo}
#' }
#' @source George W. Snedecor and William G. Cochran. Statistical Methods. Iowa
#' State University Press, Ames, Iowa, eighth edition, 1989.
#' @keywords datasets
"leprosy"


#' Mouth Sizes
#'
#' Measurements were made on the size of mouths of 27 children at four ages: 8,
#' 10, 12, and 14. The measurement is the distance from the "center of the
#' pituitary to the pteryomaxillary fissure" in millimeters. These data can be
#' found in Potthoff and Roy [1964]. There are 11 girls (Sex=1) and 16 boys
#' (Sex=0).
#'
#' @format A data frame with 27 observations on the following 5 variables.
#' \describe{
#'   \item{Age8}{Measurement on child's month at age eight.}
#'   \item{Age10}{Measurement on child's month at age ten.}
#'   \item{Age12}{Measurement on child's month at age twelve.}
#'   \item{Age14}{Measurement on child's month at age fourteen.}
#'   \item{Sex}{Sex Coding: Girl=1 and Boys=0}
#' }
#' @source Richard F. Potthoff and S. N. Roy. A generalized multivariate
#' analysis of variance model useful especially for growth curve problems.
#' Biometrika, 51:313-326, 1964.
#' @keywords datasets
"mouths"


#' The Painter's Data of de Piles
#'
#' The subjective assessment, on a 0 to 20 integer scale, of 54 classical
#' painters.  The painters were assessed on four characteristics: composition,
#' drawing, colour and expression.  The data is due to the Eighteenth century
#' art critic, de Piles.
#'
#' @format The row names of the data frame are the painters. The components
#' are:
#' \describe{
#'   \item{Composition}{ Composition score.}
#'   \item{Drawing}{ Drawing score.}
#'   \item{Colour}{ Colour score.}
#'   \item{Expression}{ Expression score.}
#'   \item{School}{ The school to which a painter belongs, as indicated
#'                  by a factor level code as follows:
#'                  \code{"A"}: Renaissance;
#'                  \code{"B"}: Mannerist;
#'                  \code{"C"}: Seicento;
#'                  \code{"D"}: Venetian;
#'                  \code{"E"}: Lombard;
#'                  \code{"F"}: Sixteenth Century;
#'                  \code{"G"}: Seventeenth Century;
#'                  \code{"H"}: French.  }
#' }
#' @references Venables, W. N. and Ripley, B. D. (2002) \emph{Modern Applied
#' Statistics with S.} Fourth edition.  Springer.
#' @source A. J. Weekes (1986) \emph{A Genstat Primer.} Edward Arnold.
#'
#' M. Davenport and G. Studdert-Kennedy (1972) The statistical analysis of
#' aesthetic judgement: an exploration.  \emph{Applied Statistics} \bold{21},
#' 324--333.
#'
#' I. T. Jolliffe (1986) \emph{Principal Component Analysis.} Springer.
#'
#' MASS, R-Package
#' @keywords datasets
"painters"


#' Planets
#'
#' Six astronomical variables are given on each of the historical nine planets
#' (or eight planets, plus Pluto).
#'
#'
#' @format A double matrix with 9 observations on the following 6 variables.
#' \describe{
#'   \item{Distance}{Average distance in millions of miles the planet is from
#'                  the sun.}
#'   \item{Day}{The length of the planet's day in Earth days}
#'   \item{Year}{The length of year in Earth days}
#'   \item{Diameter}{The planet's diameter in miles}
#'   \item{Temperature}{The planet's temperature in degrees Fahrenheit}
#'   \item{Moons}{Number of moons}
#' }
#' @source John W. Wright, editor. The Universal Almanac. Andrews McMeel
#' Publishing, Kansas City, MO, 1997.
#' @keywords datasets
"planets"

#' Prostaglandin
#'
#' Data from Ware and Bowden [1977] taken at six four-hour intervals (labelled
#' T1 to T6) over the course of a day for 10 individuals. The measurements are
#' prostaglandin contents in their urine.
#'
#' @format A double matrix with 10 observations on the following 6 variables.
#' \describe{
#'   \item{T1}{First four-hour interval measurement of prostaglandin.}
#'   \item{T2}{Second four-hour interval measurement of prostaglandin.}
#'   \item{T3}{Third four-hour interval measurement of prostaglandin.}
#'   \item{T4}{Fourth four-hour interval measurement of prostaglandin.}
#'   \item{T5}{Fifth four-hour interval measurement of prostaglandin.}
#'   \item{T6}{Sixth four-hour interval measurement of prostaglandin.}
#' }
#' @source J H Ware and R E Bowden. Circadian rhythm analysis when output is
#' collected at intervals. Biometrics, 33(3):566-571, 1977.
#' @keywords datasets
"prostaglandin"

#' South African Hearth Disease Data
#'
#' A retrospective sample of males in a heart-disease high-risk region of the
#' Western Cape, South Africa.
#'
#' A retrospective sample of males in a heart-disease high-risk region of the
#' Western Cape, South Africa. There are roughly two controls per case of CHD.
#' Many of the CHD positive men have undergone blood pressure reduction
#' treatment and other programs to reduce their risk factors after their CHD
#' event. In some cases the measurements were made after these treatments.
#' These data are taken from a larger dataset, described in Rousseauw et al,
#' 1983, South African Medical Journal.
#'
#' @format A data frame with 462 observations on the following 10 variables.
#' \describe{
#'  \item{sbp}{systolic blood pressure}
#'  \item{tobacco}{cumulative tobacco (kg)}
#'  \item{ldl}{low density lipoprotein cholesterol}
#'  \item{adiposity}{a numeric vector}
#'  \item{famhist}{family history of heart disease, a factor with levels
#'                 \code{"Absent"} and \code{"Present"}}
#'  \item{typea}{type-A behavior}
#'  \item{obesity}{a numeric vector}
#'  \item{alcohol}{current alcohol consumption}
#'  \item{age}{age at onset}
#'  \item{chd}{response, coronary heart disease}
#' }
#' @source Rousseauw, J., du Plessis, J., Benade, A., Jordaan, P., Kotze, J.
#' and Ferreira, J. (1983). Coronary risk factor screening in three rural
#' communities, South African Medical Journal 64: 430--436.
#'
#' ElemStatLearn, R-Package
#' @keywords datasets
"SAheart"

#' Egyptian Skulls
#'
#' The data concern the sizes of Egyptian skulls over time, from Thomson and
#' Randall-MacIver [1905]. There are 30 skulls from each of five time periods,
#' so that n = 150 all together.
#'
#' @format A double matrix with 150 observations on the following 5 variables.
#' \describe{
#'   \item{MaximalBreadth}{Maximum length in millimeters}
#'   \item{BasibregmaticHeight}{Basibregmatic Height in millimeters}
#'   \item{BasialveolarLength}{Basialveolar Length in millimeters}
#'   \item{NasalHeight}{Nasal Height in millimeters}
#'   \item{TimePeriod}{Time groupings}
#' }
#' @source A. Thomson and R. Randall-MacIver. Ancient Races of the Thebaid.
#' Oxford University Press, 1905.
#' @keywords datasets
"skulls"

#' Soft Drinks
#'
#' A data set that contains 23 peoples' ranking of 8 soft drinks: Coke, Pepsi,
#' Sprite, 7-up, and their diet equivalents
#'
#' @format A double matrix with 23 observations on the following 8 variables.
#' \describe{
#'   \item{Coke}{Ranking given to Coke}
#'   \item{Pepsi}{Ranking given to Pepsi}
#'   \item{7up}{Ranking given to 7-up}
#'   \item{Sprite}{Ranking given to Sprite}
#'   \item{DietCoke}{Ranking given to Diet Coke}
#'   \item{DietPepsi}{Ranking given to Diet Pepsi}
#'   \item{Diet7up}{Ranking given to Diet 7-up}
#'   \item{DietSprite}{Ranking given to Diet Sprite}
#' }
#' @source Data from one of Prof. John Marden's earlier classes
#' @keywords datasets
"softdrinks"


#' Spam
#'
#' In the Hewlett-Packard spam data, a set of n = 4601 emails were classified
#' according to whether they were spam, where "0" means not spam, "1" means
#' spam. Fifty-seven explanatory variables based on the content of the emails
#' were recorded, including various word and symbol frequencies. The emails
#' were sent to George Forman (not the boxer) at Hewlett-Packard labs, hence
#' emails with the words "George" or "hp" would likely indicate non-spam, while
#' "credit" or "!" would suggest spam. The data were collected by Hopkins et
#' al. [1999], and are in the data matrix Spam. ( They are also in the R data
#' frame spam from the ElemStatLearn package [Halvorsen, 2009], as well as at
#' the UCI Machine Learning Repository [Frank and Asuncion, 2010].)
#'
#' @format A double matrix with 4601 observations on the following 58
#' variables.
#' \describe{
#'   \item{WFmake}{Percentage of words in the e-mail that match make.}
#'   \item{WFaddress}{Percentage of words in the e-mail that match address.}
#'   \item{WFall}{Percentage of words in the e-mail that match all.}
#'   \item{WF3d}{Percentage of words in the e-mail that match 3d.}
#'   \item{WFour}{Percentage of words in the e-mail that match our.}
#'   \item{WFover}{Percentage of words in the e-mail that match over.}
#'   \item{WFremove}{Percentage of words in the e-mail that match remove.}
#'   \item{WFinternet}{Percentage of words in the e-mail that match internet.}
#'   \item{WForder}{Percentage of words in the e-mail that match order.}
#'   \item{WFmail}{Percentage of words in the e-mail that match mail.}
#'   \item{WFreceive}{Percentage of words in the e-mail that match receive.}
#'   \item{WFwill}{Percentage of words in the e-mail that match will.}
#'   \item{WFpeople}{Percentage of words in the e-mail that match people.}
#'   \item{WFreport}{Percentage of words in the e-mail that match report.}
#'   \item{WFaddresses}{Percentage of words in the e-mail that match
#'                      addresses.}
#'   \item{WFfree}{Percentage of words in the e-mail that match free.}
#'   \item{WFbusiness}{Percentage of words in the e-mail that match business.}
#'   \item{WFemail}{Percentage of words in the e-mail that match email.}
#'   \item{WFyou}{Percentage of words in the e-mail that match you.}
#'   \item{WFcredit}{Percentage of words in the e-mail that match credit.}
#'   \item{WFyour}{Percentage of words in the e-mail that match your.}
#'   \item{WFfont}{Percentage of words in the e-mail that match font.}
#'   \item{WF000}{Percentage of words in the e-mail that match 000.}
#'   \item{WFmoney}{Percentage of words in the e-mail that match money.}
#'   \item{WFhp}{Percentage of words in the e-mail that match hp.}
#'   \item{WFgeorge}{Percentage of words in the e-mail that match george.}
#'   \item{WF650}{Percentage of words in the e-mail that match 650.}
#'   \item{WFlab}{Percentage of words in the e-mail that match lab.}
#'   \item{WFlabs}{Percentage of words in the e-mail that match labs.}
#'   \item{WFtelnet}{Percentage of words in the e-mail that match telnet.}
#'   \item{WF857}{Percentage of words in the e-mail that match 857.}
#'   \item{WFdata}{Percentage of words in the e-mail that match data.}
#'   \item{WF415}{Percentage of words in the e-mail that match 415.}
#'   \item{WF85}{Percentage of words in the e-mail that match 85.}
#'   \item{WFtechnology}{Percentage of words in the e-mail that match technology.}
#'   \item{WF1999}{Percentage of words in the e-mail that match 1999.}
#'   \item{WFparts}{Percentage of words in the e-mail that match parts.}
#'   \item{WFpm}{Percentage of words in the e-mail that match pm.}
#'   \item{WFdirect}{Percentage of words in the e-mail that match direct.}
#'   \item{WFcs}{Percentage of words in the e-mail that match cs.}
#'   \item{WFmeeting}{Percentage of words in the e-mail that match meeting.}
#'   \item{WForiginal}{Percentage of words in the e-mail that match original.}
#'   \item{WFproject}{Percentage of words in the e-mail that match
#'                    project.}
#'   \item{WFre}{Percentage of words in the e-mail that match re.}
#'   \item{WFedu}{Percentage of words in the e-mail that match edu.}
#'   \item{WFtable}{Percentage of words in the e-mail that match table.}
#'   \item{WFconference}{Percentage of words in the e-mail that match conference.}
#'   \item{CFsemicolon}{Percentage of characters in the e-mail that match
#'                      SEMICOLON.}
#'   \item{CFparen}{Percentage of characters in the e-mail that match PARENTHESES.}
#'   \item{CFbracket}{Percentage of characters in the e-mail that match BRACKET.}
#'   \item{CFexclam}{Percentage of characters in the e-mail that match EXCLAMATION.}
#'   \item{CFdollar}{Percentage of characters in the e-mail that match DOLLAR.}
#'   \item{CFpound}{Percentage of characters in the e-mail that match POUND.}
#'   \item{CRLaverage}{Average length of uninterrupted sequences of capital letters.}
#'   \item{CRLlongest}{Length of longest uninterrupted sequence of capital letters. }
#'   \item{CRLtotal}{Total number of capital letters in the e-mail}
#'   \item{spam}{Denotes whether the e-mail was considered spam (1) or not (0),
#'               i.e. unsolicited commercial e-mail.}
#' }
#' @source Mark Hopkins, Erik Reeber, George Forman, and Jaap Suermondt. Spam
#' data. Hewlett-Packard Labs, 1501 Page Mill Rd., Palo Alto, CA 94304, 1999.
#' @keywords datasets
"Spam"

#' Sports ranking
#'
#' Louis Roussos asked n = 130 people to rank seven sports, assigning #1 to the
#' sport they most wish to participate in, and #7 to the one they least wish to
#' participate in. The sports are baseball, football, basketball, tennis,
#' cycling, swimming and jogging.
#'
#' @format A double matrix with 130 observations on the following 7 variables.
#' \describe{
#'   \item{Baseball}{Baseball's ranking out of seven sports.}
#'   \item{Football}{Football's ranking out of seven sports.}
#'   \item{Basketball}{Basketball's ranking out of seven sports.}
#'   \item{Tennis}{Tennis' ranking out of seven sports.}
#'   \item{Cycling}{Cycling's ranking out of seven sports.}
#'   \item{Swimming}{Swimming's ranking out of seven sports.}
#'   \item{Jogging}{Jogging's ranking out of seven sports.}
#' }
#' @source Data from one of Prof. John Marden's earlier classes
#' @keywords datasets
"sportsranks"


#' States
#'
#' A data set containing several demographic variables on the 50 United States,
#' plus D.C.
#'
#' @format A double matrix with 51 observations on the following 11 variables.
#' \describe{
#'   \item{Population}{In thousands}
#'   \item{PctCities}{The percentage of the population that lives in
#'                    metripolitan areas.}
#'   \item{Doctors}{Number per 100,000 people.}
#'   \item{SchoolEnroll}{The percentage enrollment in primary and
#'   secondary schools.}
#'   \item{TeacherSalary}{The average salary of primary and secondary school
#'                        teachers.}
#'   \item{CollegeEnroll}{The percentage full-time enrollment at college}
#'   \item{Crime}{Violent crimes per 100,000 people}
#'   \item{Prisoners}{Number of people in prison per 10,000 people.}
#'   \item{Poverty}{Percentage of people below the poverty line.}
#'   \item{Employment}{Percentage of people employed}
#'   \item{Income}{Median household income}
#' }
#' @references http://www.census.gov/statab/www/ranks.html
#' @source United States (1996) Statistical Abstract of the United States.
#' Bureau of the Census.
#' @keywords datasets
"states"

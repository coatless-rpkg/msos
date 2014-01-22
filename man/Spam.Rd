\name{Spam}
\alias{Spam}
\docType{data}
\title{Spam}
\description{
In the Hewlett-Packard spam data, a set of n = 4601 emails were classified according to whether they were spam, where "0" means not spam, "1" means spam. Fifty-seven explanatory variables based on the content of the emails were recorded, including various word and symbol frequencies. The emails were sent to George Forman (not the boxer) at Hewlett-Packard labs, hence emails with the words "George" or "hp" would likely indicate non-spam, while "credit" or "!" would suggest spam. The data were collected by Hopkins et al. [1999], and are in the data matrix Spam. ( They are also in the R data frame spam from the ElemStatLearn package [Halvorsen, 2009], as well as at the UCI Machine Learning Repository [Frank and Asuncion, 2010].)
}
\usage{data(Spam)}					
\format{
 A double matrix with 4601 observations on the following 58 variables.
  \describe{
    \item{\code{WFmake}}{Percentage of words in the e-mail that match make.}
    \item{\code{WFaddress}}{Percentage of words in the e-mail that match address.}
    \item{\code{WFall}}{Percentage of words in the e-mail that match all.}
    \item{\code{WF3d}}{Percentage of words in the e-mail that match 3d.}
    \item{\code{WFour}}{Percentage of words in the e-mail that match our.}
    \item{\code{WFover}}{Percentage of words in the e-mail that match over.}
    \item{\code{WFremove}}{Percentage of words in the e-mail that match remove.}
    \item{\code{WFinternet}}{Percentage of words in the e-mail that match internet.}
    \item{\code{WForder}}{Percentage of words in the e-mail that match order.}
    \item{\code{WFmail}}{Percentage of words in the e-mail that match mail.}
    \item{\code{WFreceive}}{Percentage of words in the e-mail that match receive.}
    \item{\code{WFwill}}{Percentage of words in the e-mail that match will.}
    \item{\code{WFpeople}}{Percentage of words in the e-mail that match people.}
    \item{\code{WFreport}}{Percentage of words in the e-mail that match report.}
    \item{\code{WFaddresses}}{Percentage of words in the e-mail that match addresses.}
    \item{\code{WFfree}}{Percentage of words in the e-mail that match free.}
    \item{\code{WFbusiness}}{Percentage of words in the e-mail that match business.}
    \item{\code{WFemail}}{Percentage of words in the e-mail that match email.}
    \item{\code{WFyou}}{Percentage of words in the e-mail that match you.}
    \item{\code{WFcredit}}{Percentage of words in the e-mail that match credit.}
    \item{\code{WFyour}}{Percentage of words in the e-mail that match your.}
    \item{\code{WFfont}}{Percentage of words in the e-mail that match font.}
    \item{\code{WF000}}{Percentage of words in the e-mail that match 000.}
    \item{\code{WFmoney}}{Percentage of words in the e-mail that match money.}
    \item{\code{WFhp}}{Percentage of words in the e-mail that match hp.}
    \item{\code{WFgeorge}}{Percentage of words in the e-mail that match george.}
    \item{\code{WF650}}{Percentage of words in the e-mail that match 650.}
    \item{\code{WFlab}}{Percentage of words in the e-mail that match lab.}
    \item{\code{WFlabs}}{Percentage of words in the e-mail that match labs.}
    \item{\code{WFtelnet}}{Percentage of words in the e-mail that match telnet.}
    \item{\code{WF857}}{Percentage of words in the e-mail that match 857.}
    \item{\code{WFdata}}{Percentage of words in the e-mail that match data.}
    \item{\code{WF415}}{Percentage of words in the e-mail that match 415.}
    \item{\code{WF85}}{Percentage of words in the e-mail that match 85.}
    \item{\code{WFtechnology}}{Percentage of words in the e-mail that match technology.}
    \item{\code{WF1999}}{Percentage of words in the e-mail that match 1999.}
    \item{\code{WFparts}}{Percentage of words in the e-mail that match parts.}
    \item{\code{WFpm}}{Percentage of words in the e-mail that match pm.}
    \item{\code{WFdirect}}{Percentage of words in the e-mail that match direct.}
    \item{\code{WFcs}}{Percentage of words in the e-mail that match cs.}
    \item{\code{WFmeeting}}{Percentage of words in the e-mail that match meeting.}
    \item{\code{WForiginal}}{Percentage of words in the e-mail that match original.}
    \item{\code{WFproject}}{Percentage of words in the e-mail that match project.}
    \item{\code{WFre}}{Percentage of words in the e-mail that match re.}		
    \item{\code{WFedu}}{Percentage of words in the e-mail that match edu.}
    \item{\code{WFtable}}{Percentage of words in the e-mail that match table.}
    \item{\code{WFconference}}{Percentage of words in the e-mail that match conference.}
    \item{\code{CFsemicolon}}{Percentage of characters in the e-mail that match SEMICOLON}
    \item{\code{CFparen}}{Percentage of characters in the e-mail that match PARENTHESES}  	
    \item{\code{CFbracket}}{Percentage of characters in the e-mail that match BRACKET}
    \item{\code{CFexclam}}{Percentage of characters in the e-mail that match EXCLAMATION}
    \item{\code{CFdollar}}{Percentage of characters in the e-mail that match DOLLAR}
    \item{\code{CFpound}}{Percentage of characters in the e-mail that match POUND}      			
    \item{\code{CRLaverage}}{Average length of uninterrupted sequences of capital letters}
    \item{\code{CRLlongest}}{Length of longest uninterrupted sequence of capital letters }
    \item{\code{CRLtotal}}{Total number of capital letters in the e-mail}
    \item{\code{spam}}{Denotes whether the e-mail was considered spam (1) or not (0), i.e. unsolicited commercial e-mail.}        
    }
}  							
\source{
Mark Hopkins, Erik Reeber, George Forman, and Jaap Suermondt. Spam data. Hewlett-Packard Labs, 1501 Page Mill Rd., Palo Alto, CA 94304, 1999.
}
\keyword{datasets}

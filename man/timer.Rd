\name{timer}
\alias{timer}
\title{Time measurements of a time wave}
\description{
This functions computes and shows the duration of signal periods, 
pause periods and their ratio.
}
\usage{
timer(wave, f, threshold, smooth = 0, plot = TRUE,
plotthreshold = TRUE, col = "black", colval = "red", 
xlab = "Time (s)", ylab = "Absolute amplitude", ...)
}
\arguments{
  \item{wave}{data describing a time wave.}
  \item{f}{sampling frequency of \code{wave}.}
  \item{threshold}{amplitude threshold for signal detection (in \%).}
  \item{smooth}{smoothes the envelope by averaging the number of points selected}
  \item{plot}{logical, if \code{TRUE} plots the envelope and the measurements 
      (by default \code{TRUE}).}
  \item{plotthreshold}{logical, if \code{TRUE} plots the threshold
      as an horizontal line on the graph (by default \code{TRUE}).}  
  \item{col}{colour of the envelope.}
  \item{colval}{colour of plotted measurements.}
  \item{xlab}{title of the x-axis.}
  \item{ylab}{title of the y-axis.}
  \item{\dots}{other \code{\link{plot}} graphical parameters.}
}
\value{
If \code{plot} is \code{FALSE}, \code{timer} returns a list containing three
     components:
  \item{s}{duration of signal periods in seconds}
  \item{p}{duration of pause periods in seconds}
  \item{r}{ratio between the silence and periods}.
}
\author{J�r�me Sueur \email{jerome.sueur@ibaic.u-psud.fr}}
\seealso{\code{\link{oscillo}}, \code{\link{cutw}},  \code{\link{pastew}}.}
\examples{
data(tico)
timer(tico,f=22050,threshold=5,smooth=50)
# to compare with an oscillographic representation
data(orni)
op<-par(mfrow=c(2,1))
timer(orni,f=22050,threshold=5,smooth=40,tck=0.05,
        bty="l",xaxs="i",colval="blue")
title(main="A cicada song made of five echemes",col="blue")
oscillo(orni,f=22050,k=1,j=1)
par(op)
}
\keyword{dplot}
\keyword{ts}
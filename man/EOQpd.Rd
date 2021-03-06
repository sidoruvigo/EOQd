% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EOQpd.R
\name{EOQpd}
\alias{EOQpd}
\title{EOQ model with progressive discount for amounts.}
\usage{
EOQpd(l, k, I, q, c)
}
\arguments{
\item{l}{Demand of the product (per unit of time).}

\item{k}{Preparation cost (per order).}

\item{I}{Storage cost (per article).}

\item{q}{Product quantities where the price changes. Vector of quantites within the discounts are applied.}

\item{c}{Vector of costs of the good.}
}
\value{
A list containing:
\itemize{
\item{Q: }{Optimal order quantity.}
\item{Z: }{Total cost.}
\item{T: }{Cycle length.}
\item{N: }{Number of orders.}
}
}
\description{
This function provides an EOQ with discounts where the discount occurs for units purchased when a certain amount is reached. When the amount of
order increases, the cost price decreases in the additional units ordered, not in all units.
}
\details{
This function implements the deterministic EOQ (Economic Order Quantity) model with discounts where the discount occurs for units purchased when a certain amount is reached.
}
\examples{
\donttest{

l <- 50000
k <- 10
I <- 0.25
c <- c(0.6, 0.55)
q <- c(0, 1000)
dat <- EOQpd(l = 50000, k = 10, I = 0.25, c = c, q = q)
dat
}

}
\author{
José Carlos Soage González \email{jsoage@uvigo.es}
}

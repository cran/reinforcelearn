% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/valuefunction.R
\name{ValueNetwork}
\alias{ValueNetwork}
\alias{neural.network}
\title{Value Network}
\arguments{
\item{model}{[\code{keras model}] \cr A keras model.
Make sure that the model has been compiled.}
}
\description{
Neural network representing the action value function Q.
}
\section{Usage}{

\code{makeValueFunction("neural.network", model)}
}

\examples{
\dontrun{
library(keras)
model = keras_model_sequential()
model \%>\% layer_dense(20, input_shape = 10, activation = "relu")
model \%>\% layer_dense(4, activation = "softmax")
keras::compile(model, loss = "mae", optimizer = keras::optimizer_sgd(lr = 0.4))

val = makeValueFunction("neural.network", model = model)
}
}

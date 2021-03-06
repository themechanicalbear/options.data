# title: "tidyoptions.R"
# author: "Jason Taylor"

# todos:
# - need to modify and run the earnings.open.R file to create the necessary .Rdata
# files

#' tidyoptions: Processed option chain data from iVolatility.com
#'
#' tidyoptions creates tidy option chain data from iVolatility.com.  It's
#' the starting point to performing quantatative options trading analysis and
#' research. Utilities to create the data and utility functions to run studies
#' are included in the package.
#'
#' It has three main goals:
#'
#' \itemize{
#' \item Provide tidy option data that is in a standardized complete
#'   format to allow for easy analysis
#' \item Allow the data to be quickly loaded using the data() function
#' \item Provide data packaged to be portable and easily shared
#' }
#'
#' The tidy_options function performs the following actions to produce tidy data:
#'
#' \itemize{
#' \item gathers list of files from folder ie. "data/raw_files/options".
#' \item reads in files from list and combine with \code{bind_rows} from dplyr.
#' \item reads in IV data from file ie. "data/volatility/vx.xle.daily.prices.RData"
#' data can be retrieved from \href{http://www.cboe.com/micro/equityvix/introduction.aspx}{http://www.cboe.com/micro/equityvix/introduction.aspx}
#' \item uses \code{mrkt_closed()} dates to remove entries that can not be used in backtests.
#' \item uses \code{third_friday()} to calculate monthly expiration dates.
#' \item moves weekend dates from raw files to adjusted weekday \code{(date, expiration)}.
#' \item calculates \code{DTE} (days to expiration) for each option contract.
#' \item calcualtes \code{rsi_14, iv_rank_90, iv_rank_252} for each date in dataset.
#' \item returns complete cases of tidy data (missing data is removed rather than adjusted)
#' }
#'
#' To learn more about tidyoptions, start with the vignettes:
#' \code{browseVignettes(package = "tidyoptions")}
#'
#' @docType package
#' @name tidyoptions
NULL

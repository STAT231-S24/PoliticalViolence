#' PoliticalViolence
#'
#' A data set containing information regarding
#' 532,590 recorded instances of political violence
#' across Asia between January 1, 2010 and February 9, 2024.
#'
#' @source \url{https://acleddata.com/curated-data-files/}
#' @format A dataframe with 532,590 rows and 30 columns
#' @details 
#' \describe{
#'   \item{event_id_cnty}{A unique identifier for each event, based on country code and case number}
#'   \item{event_date}{The date of the event in YYYY-MM-DD format}
#'   \item{year}{The year in which the event took place}
#'   \item{time_precision}{A code that indicates the precision of the date of the event, with 1 being the most precise and 3 being the least}
#'   \item{disorder_type}{Type of disorder: political violence, demonstrations, or strategic developments}
#'   \item{event_type}{A more specific categorization for the event (i.e. battles, riots, protests)}
#'   \item{sub_event_type}{An even more specific categorization for the event (i.e. armed clashes, mob violence, protest with intervention)}
#'   \item{actor1}{One of the main actors involved in the incident}
#'   \item{assoc_actor_1}{Actor(s) who worked alongside the group designated as `actor1`, separated by semicolons}
#'   \item{inter1}{A numerical code indicating the type of `actor1`, ranging from 1 to 8. Information on each code can be found on pages 25-29 of the codebook}
#'   \item{actor2}{The other main actor involved in the incident}
#'   \item{assoc_actor_2}{Actor(s) who worked alongside the group designated as `actor2`, separated by semicolons}
#'   \item{inter2}{A numerical code indicating the type of `actor2`, ranging from 1 to 8. Information on each code can be found on pages 25-29 of the codebook}
#'   \item{interaction}{A concatenation of `inter1` and `inter2`, indicating the two types of actors interacting in the event. Specific descriptions of each interaction can be found on pages 30-34 of the codebook}
#'   \item{civilian_targeting}{A boolean indicating whether civilians were targeted or not}
#'   \item{iso}{The ISO code of the country in which the event took place}
#'   \item{region}{The global region in which the event took place}
#'   \item{country}{The name of the country in which the event took place}
#'   \item{admin1}{The first-level administrative subdivision (i.e. U.S. state, Canadian province) in which the event took place}
#'   \item{admin2}{The second-level administrative subdivision (i.e. U.S. county) in which the event took place}
#'   \item{location}{The location at which the event took place}
#'   \item{latitude}{The latitude of `location` to four decimal points under the EPSG:3857 standard}
#'   \item{longitude}{The longitude of `location` to four decimal points under the EPSG:3857 standard}
#'   \item{geo_precision}{A code that indicates the precision of the location of the event, with 1 being the most precise and 3 being the least}
#'   \item{source}{The names of the sources from which the information about the event was derived, separated by semicolons}
#'   \item{source_scale}{The scale (i.e. local, national) of the source(s) used}
#'   \item{notes}{A brief description of the event}
#'   \item{fatalities}{The number of fatalities resulting from the event; if there are multiple reports, the lowest estimate is used}
#'   \item{tags}{Additional information about the event, separated by semicolons}
#'   \item{crowd_size}{The size of the crowd, parsed from `tags`. If `tags` contains a range, the lower end of the range is used}
#' The codebook can be found at this link: \url{https://acleddata.com/acleddatanew/wp-content/uploads/dlm_uploads/2023/06/ACLED_Codebook_2023.pdf}
#' }
"PoliticalViolence"

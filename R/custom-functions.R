# Read in data ------------------------------------------------------------
read_data_excel <- function(rel_directory, pattern) {
    files <- dir(paste0(dirname(getwd()),"/", rel_directory), pattern = pattern, full.names = FALSE)
    df_list <- vector("list", length(files))
    for (fname in files) {
        df_list[[fname]] <- read_excel(paste0(dirname(getwd()),"/", rel_directory ,fname))
    }
    names(df_list) <- paste0("", gsub(pattern,"",names(df_list)))
    return(df_list)
}


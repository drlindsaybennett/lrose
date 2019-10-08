/**********************************************************************
 * TDRP params for NetCDF2Spdb
 **********************************************************************/

//======================================================================
//
// NetCDF2Spdb reads met data in netCDF, interprets it and writes it to 
//   SPDB.
//
//======================================================================
 
//======================================================================
//
// DEBUGGING AND PROCESS CONTROL.
//
//======================================================================
 
///////////// debug ///////////////////////////////////
//
// Debug option.
// If set, debug messages will be printed appropriately.
//
// Type: enum
// Options:
//     DEBUG_OFF
//     DEBUG_NORM
//     DEBUG_VERBOSE
//     DEBUG_EXTRA
//

debug = DEBUG_OFF;

///////////// instance ////////////////////////////////
//
// Process instance.
// Used for registration with procmap.
// Type: string
//

instance = "iced";

//======================================================================
//
// DATA INPUT.
//
//======================================================================
 
///////////// mode ////////////////////////////////////
//
// Operating mode.
// 	REALTIME: files are read and processed as they arrive in the 
//   input_dir. 
// 	ARCHIVE: files between the start and end times are read in and 
//   processed. 
// 	FILELIST: files listed on the command line are read in and 
//   processed.
//
// Type: enum
// Options:
//     REALTIME
//     ARCHIVE
//     FILELIST
//

mode = ARCHIVE;

///////////// input_dir ///////////////////////////////
//
// Input directory.
// Directory where input data files can be found.
// Type: string
//

input_dir = "$(DATA_DIR)/faam";

///////////// latest_data_info_avail //////////////////
//
// Set to true if there is a latest_data_info file available in the 
//   input directory.
// REALTIME mode only.
// Type: boolean
//

latest_data_info_avail = TRUE;

///////////// latest_file_only ////////////////////////
//
// Process the latest available file only.
// REALTIME mode only, and if latest_data_info_avail is FALSE.
// Type: boolean
//

latest_file_only = TRUE;

///////////// max_realtime_valid_age //////////////////
//
// Max valid age of rdata input files in realtime mode (secs).
// This the max valid age for an incoming file. The program will wait 
//   for a data file more recent than this age.
// Minimum val: 1
// Type: int
//

max_realtime_valid_age = 3600;

///////////// strict_dir_scan /////////////////////////
//
// When set, only checks input_dir for subdirs of the form YYYYMMDD.
// Only in REALTIME mode with latest_data_info_avail FALSE.
// Type: boolean
//

strict_dir_scan = FALSE;

///////////// file_name_substr ////////////////////////
//
// Input filename match sub-string.
// If not empty, file names must contain this string to be processed.
// Type: string
//

file_name_substr = "";

//======================================================================
//
// NETCDF fields details.
//
//======================================================================
 
///////////// time_var_name ///////////////////////////
//
// Name of time variable.
// If possible, get the units from the attribute.
// Type: string
//

time_var_name = "Time";

///////////// latitude_var_name ///////////////////////
//
// Name of latitude variable.
// Set to empty string if not available. Assumes units are deg N.
// Type: string
//

latitude_var_name = "LAT_GIN";

///////////// longitude_var_name //////////////////////
//
// Name of longitude variable.
// Set to empty string if not available. Assumes units are deg E.
// Type: string
//

longitude_var_name = "LON_GIN";

///////////// altitude_var_name ///////////////////////
//
// Name of altitude variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

altitude_var_name = "ALT_GIN";

///////////// pressure_var_name ///////////////////////
//
// Name of temperature variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

pressure_var_name = "PS_RVSM";

///////////// temp_var_name ///////////////////////////
//
// Name of temperature variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

temp_var_name = "TAT_DI_R";

///////////// dewpt_var_name //////////////////////////
//
// Name of dewpt variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

dewpt_var_name = "TDEW_GE";

///////////// rh_var_name /////////////////////////////
//
// Name of relative himidity variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

rh_var_name = "";

///////////// mixing_ratio_var_name ///////////////////
//
// Name of mixing ratio variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

mixing_ratio_var_name = "";

///////////// liquid_water_var_name ///////////////////
//
// Name of liquid water content variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

liquid_water_var_name = "LWC_JW_U";

///////////// wind_dirn_var_name //////////////////////
//
// Name of wind direction variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

wind_dirn_var_name = "";

///////////// wind_speed_var_name /////////////////////
//
// Name of wind speed variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

wind_speed_var_name = "";

///////////// wind_gust_var_name //////////////////////
//
// Name of wind gust speed variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

wind_gust_var_name = "";

//======================================================================
//
// AIRCRAFT data fields.
//
//======================================================================
 
///////////// true_airspeed_var_name //////////////////
//
// Name of true airspeed variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

true_airspeed_var_name = "TAS_RVSM";

///////////// ground_speed_var_name ///////////////////
//
// Name of ground speed variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

ground_speed_var_name = "GSPD_GIN";

//======================================================================
//
// SURFACE data fields.
//
//======================================================================
 
///////////// precip_rate_var_name ////////////////////
//
// Name of precip rate variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

precip_rate_var_name = "";

///////////// precip_accum_var_name ///////////////////
//
// Name of precip accumulation variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

precip_accum_var_name = "";

///////////// visibility_var_name /////////////////////
//
// Name of visibility variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

visibility_var_name = "";

///////////// ceiling_var_name ////////////////////////
//
// Name of ceiling variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

ceiling_var_name = "";

///////////// rvr_var_name ////////////////////////////
//
// Name of runway visual range variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

rvr_var_name = "";

//======================================================================
//
// LIGHTNING data fields.
//
//======================================================================
 
///////////// ltg_amplitude_var_name //////////////////
//
// Name of current amplitude variable.
// Set to empty string if not available. If possible, get the units from 
//   the attribute.
// Type: string
//

ltg_amplitude_var_name = "";

//======================================================================
//
// OUTPUT FORMAT STRUCTURE.
//
// Specify the type of storage structure to be used in SPDB.
//
//======================================================================
 
///////////// output_format ///////////////////////////
//
// Output data format structure.
// Only AIRCRAFT supported so far.
//
// Type: enum
// Options:
//     SURFACE
//     SOUNDING
//     LIGHTNING
//     AIRCRAFT
//     GEN_PT
//

output_format = AIRCRAFT;

//======================================================================
//
// DATA OUTPUT.
//
//======================================================================
 
///////////// output_url //////////////////////////////
//
// Output SPDB URL.
// This is the path to the output data directory. You can use full URL 
//   sytnax and optionally put the data to a remote machine.
// Type: string
//

output_url = "$(DATA_DIR)/spdb/faam";

///////////// valid_period_secs ///////////////////////
//
// Valid period (secs).
// Time period over which the data is considered valid.
// Minimum val: 1
// Type: int
//

valid_period_secs = 120;


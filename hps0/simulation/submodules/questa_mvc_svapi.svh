//****************************************************************************
//
// Copyright 2007-2022 Mentor Graphics Corporation 
// All Rights Reserved.
//
// THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS THE PROPERTY OF 
// MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS SUBJECT TO LICENSE TERMS.
//
//*****************************************************************************
//
/*
Title: Questa MVC base types and functions
  Definition of base types and functions which may be used for interfacing
  between SystemVerilog and Questa MVC. To use these, import the QUESTA_MVC package.
*/

package QUESTA_MVC;

/* Group: Base Types */

/* Enum: questa_mvc_timecale_enum

An enum for specifying time-units, used by <questa_mvc_sv_convert_to_precision> and <questa_mvc_sv_convert_real_to_precision>.

QUESTA_MVC_TIME_AS   - Atto-seconds
QUESTA_MVC_TIME_FS   - Femto-seconds
QUESTA_MVC_TIME_PS   - Pico-seconds
QUESTA_MVC_TIME_NS   - Nano-seconds
QUESTA_MVC_TIME_US   - Micro-seconds
QUESTA_MVC_TIME_MS   - Milli-seconds
QUESTA_MVC_TIME_S    - Seconds
QUESTA_MVC_TIME_MIN  - Minutes
QUESTA_MVC_TIME_HR   - Hours
QUESTA_MVC_TIME_DY   - Days
QUESTA_MVC_TIME_WK   - Weeks
QUESTA_MVC_TIME_MTH  - Months
QUESTA_MVC_TIME_YR   - Years
QUESTA_MVC_TIME_X    - Unspecified time unit (equates to the simulator precision i.e. the smallest of the precision declarations in the design compilation units)
*/
typedef enum
{
    QUESTA_MVC_TIME_NULL = 0,
    QUESTA_MVC_TIME_AS   = 1,
    QUESTA_MVC_TIME_FS   = 2,
    QUESTA_MVC_TIME_PS   = 3,
    QUESTA_MVC_TIME_NS   = 4,
    QUESTA_MVC_TIME_US   = 5,
    QUESTA_MVC_TIME_MS   = 6,
    QUESTA_MVC_TIME_S    = 7,
    QUESTA_MVC_TIME_MIN  = 8,
    QUESTA_MVC_TIME_HR   = 9,
    QUESTA_MVC_TIME_DY   = 10,
    QUESTA_MVC_TIME_WK   = 11,
    QUESTA_MVC_TIME_MTH  = 12,
    QUESTA_MVC_TIME_YR   = 13,
    QUESTA_MVC_TIME_X    = 14
} questa_mvc_timecale_enum;


/* Enum: questa_mvc_item_comms_semantic

An enum for specifying a required communication semantic. For a complete explanation of the communication semantics, please see <Questa Verification IP Communication Semantics>.
*/
typedef enum
{
    QUESTA_MVC_COMMS_SENT                    = 'h1,
    QUESTA_MVC_COMMS_SEND                    = 'h2,
    QUESTA_MVC_COMMS_SENDING                 = 'h4,
    QUESTA_MVC_COMMS_ACTIVATE                = 'h8,
    QUESTA_MVC_COMMS_ACTIVATING              = 'h10,
    QUESTA_MVC_COMMS_ACTIVATES               = 'h20,
    QUESTA_MVC_COMMS_ACTIVATED               = 'h40,
    QUESTA_MVC_COMMS_RECEIVE                 = 'h80,
    QUESTA_MVC_COMMS_RECEIVED                = 'h100,
    QUESTA_MVC_COMMS_RECEIVING               = 'h200,
    QUESTA_MVC_COMMS_RECEIVE_CONSUMING       = 'h480,
    QUESTA_MVC_COMMS_RECEIVED_CONSUMING      = 'h500,
    QUESTA_MVC_COMMS_RECEIVING_CONSUMING     = 'h600,
    QUESTA_MVC_COMMS_SENDCONC                = 'h4002,
    QUESTA_MVC_COMMS_RECEIVE_VIRTUAL         = 'h4080,
    QUESTA_MVC_COMMS_SENT_TOP                = 'h8001,
    QUESTA_MVC_COMMS_SEND_TOP                = 'h8002,
    QUESTA_MVC_COMMS_SENDING_TOP             = 'h8004,
    QUESTA_MVC_COMMS_ACTIVATE_TOP            = 'h8008,
    QUESTA_MVC_COMMS_ACTIVATING_TOP          = 'h8010,
    QUESTA_MVC_COMMS_ACTIVATES_TOP           = 'h8020,
    QUESTA_MVC_COMMS_ACTIVATED_TOP           = 'h8040,
    QUESTA_MVC_COMMS_RECEIVE_TOP             = 'h8080,
    QUESTA_MVC_COMMS_RECEIVED_TOP            = 'h8100,
    QUESTA_MVC_COMMS_RECEIVING_TOP           = 'h8200,
    QUESTA_MVC_COMMS_RECEIVE_TOP_CONSUMING   = 'h8480,
    QUESTA_MVC_COMMS_RECEIVED_TOP_CONSUMING  = 'h8500,
    QUESTA_MVC_COMMS_RECEIVING_TOP_CONSUMING = 'h8600
} questa_mvc_item_comms_semantic;

/* Enum: questa_mvc_edge

An enum for specifying edge sensitivity.

QUESTA_MVC_POSEDGE      - Positive edge of the wire.
QUESTA_MVC_NEGEDGE      - Negative edge of the wire.
QUESTA_MVC_ANYEDGE      - Positive or Negative edge of the wire.
QUESTA_MVC_0_TO_1_EDGE  - A Transition from 0 to 1.
QUESTA_MVC_1_TO_0_EDGE  - A Transition from 1 to 0.
*/
typedef enum
{
    QUESTA_MVC_POSEDGE      = 0,
    QUESTA_MVC_NEGEDGE      = 1,
    QUESTA_MVC_ANYEDGE      = 2,
    QUESTA_MVC_0_TO_1_EDGE  = 3,
    QUESTA_MVC_1_TO_0_EDGE  = 4
} questa_mvc_edge;


/* Enum: questa_mvc_interface_config

An enum for specifying what is to be configured in the interface.

QUESTA_MVC_INTERFACE_CONFIG_NONE                     - Nothing.
QUESTA_MVC_INTERFACE_CONFIG_ALIVE                    - Turn the interface on / off. On by default
QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_SEVERITY       - Change the severity of an assertion (see questa_mvc_severity).
QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_MAX_COUNT      - Limit the number of times the given assertion is output to the transcript.
QUESTA_MVC_INTERFACE_CONFIG_ASSERTIONS_ON            - Turn all the assertions in the interface on / off. On by default
QUESTA_MVC_INTERFACE_CONFIG_ERROR_OUTPUT_ON          - Turn error output in the interface on / off. On by default
QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_HALT_COUNT     - Halt simulation after the number of times the given assertion is output to the transcript.
QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_ANY_HALT_COUNT - Halt simulation after the number of times any assertion is output to the transcript.
QUESTA_MVC_INTERFACE_CONFIG_USE_TIME_PRECISION       - Return time values in time-precision rather than time-units
QUESTA_MVC_INTERFACE_CONFIG_CALC_START_TIME          - Calculate the start time of timeless transactions based on their initiator
QUESTA_MVC_INTERFACE_CONFIG_GET_TIME_SCALE           - Obtain the time scale used for time values
QUESTA_MVC_INTERFACE_CONFIG_GET_TIME_PRECISION_SCALE - Obtain the time scale used for time precision values
QUESTA_MVC_INTERFACE_CONFIG_GET_TIME_UNIT_SCALE      - Obtain the time scale used for time unit values
QUESTA_MVC_INTERFACE_CONFIG_GET_ASSERTION_FAILS      - Obtain the number of fails for the given (or all) assertions
QUESTA_MVC_INTERFACE_CONFIG_ERROR_SEVERITY           - Change the severity of an automatic error.
QUESTA_MVC_INTERFACE_CONFIG_ZERO_ACTIVITY_DELAY      - For zero delay from the activity
QUESTA_MVC_INTERFACE_CONFIG_ZERO_INTERFACE_DELAY     - For new delta
*/
typedef enum
{
    QUESTA_MVC_INTERFACE_CONFIG_NONE = 0,
    QUESTA_MVC_INTERFACE_CONFIG_ALIVE = 1,
    QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_SEVERITY = 2,
    QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_MAX_COUNT = 3,
    QUESTA_MVC_INTERFACE_CONFIG_ASSERTIONS_ON = 4,
    QUESTA_MVC_INTERFACE_CONFIG_ERROR_OUTPUT_ON = 5,
    QUESTA_MVC_INTERFACE_CONFIG_ERROR_ON = 6,
    QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_HALT_COUNT = 7,
    QUESTA_MVC_INTERFACE_CONFIG_ASSERTION_ANY_HALT_COUNT = 8,
    QUESTA_MVC_INTERFACE_CONFIG_USE_TIME_PRECISION = 9,
    QUESTA_MVC_INTERFACE_CONFIG_CALC_START_TIME = 10,
    QUESTA_MVC_INTERFACE_CONFIG_GET_TIME_SCALE = 11,
    QUESTA_MVC_INTERFACE_CONFIG_GET_TIME_PRECISION_SCALE = 12,
    QUESTA_MVC_INTERFACE_CONFIG_GET_TIME_UNIT_SCALE = 13,
    QUESTA_MVC_INTERFACE_CONFIG_GET_ASSERTION_FAILS = 14,
    QUESTA_MVC_INTERFACE_CONFIG_ERROR_SEVERITY = 15,
    QUESTA_MVC_INTERFACE_CONFIG_ZERO_ACTIVITY_DELAY = 16,
    QUESTA_MVC_INTERFACE_CONFIG_ZERO_INTERFACE_DELAY = 17,
    QUESTA_MVC_INTERFACE_CONFIG_PRINT_CONFIGURATION_BASIC = 101,
    QUESTA_MVC_INTERFACE_CONFIG_PRINT_CONFIGURATION_ADVANCED = 102,
    QUESTA_MVC_INTERFACE_CONFIG_PRINT_CONFIGURATION_ALL = 103,
    QUESTA_MVC_INTERFACE_CONFIG_PRINT_SIMULATION_STATS_BASIC = 111,
    QUESTA_MVC_INTERFACE_CONFIG_PRINT_SIMULATION_STATS_ADVANCED = 112,
    QUESTA_MVC_INTERFACE_CONFIG_PRINT_SIMULATION_STATS_ALL = 113,
    QUESTA_MVC_INTERFACE_CONFIG_PRINT_STATUS_BASIC = 114,
    QUESTA_MVC_INTERFACE_CONFIG_PRINT_STATUS_ADVANCED = 115,
    QUESTA_MVC_INTERFACE_CONFIG_PRINT_STATUS_ALL = 116,
    QUESTA_MVC_INTERFACE_CONFIG_LOGGER_ENABLE = 117,
    QUESTA_MVC_INTERFACE_CONFIG_LOGGER_FILE = 118,
    QUESTA_MVC_INTERFACE_CONFIG_LOGGER_DIRECTORY = 119,
    QUESTA_MVC_INTERFACE_CONFIG_LOGGER_STYLE = 120,
    QUESTA_MVC_INTERFACE_CONFIG_GET_PROTOCOL_NAME = 121,
    QUESTA_MVC_INTERFACE_CONFIG_GET_PROTOCOL_ROLE = 122,
    QUESTA_MVC_INTERFACE_CONFIG_GET_PROTOCOL_VARIANT = 123
} questa_mvc_interface_config;


/* Enum: questa_mvc_severity

An enum for specifying the severity of any assertion.

QUESTA_MVC_SEVERITY_INFO    - The equivalent of $info.
QUESTA_MVC_SEVERITY_WARNING - The equivalent of $warning.
QUESTA_MVC_SEVERITY_ERROR   - The equivalent of $error.
QUESTA_MVC_SEVERITY_FATAL   - The equivalent of $fatal.
*/
typedef enum
{
    QUESTA_MVC_SEVERITY_INFO    = 0,
    QUESTA_MVC_SEVERITY_WARNING = 1,
    QUESTA_MVC_SEVERITY_ERROR   = 2,
    QUESTA_MVC_SEVERITY_FATAL   = 3
} questa_mvc_severity;

/* Enum: questa_mvc_assertions

An enum for specifying severity for all assertions.

QUESTA_MVC_ALL_ASSERTIONS    - All assertions selected.
*/
typedef enum
{
    QUESTA_MVC_ALL_ASSERTIONS    = 10000
} questa_mvc_assertions;

/* Group: Global Functions */

// Function for printing a summary of the state of Questa MVC.
import "DPI-C"  questa_mvc_sv_show = function void questa_mvc_show( string show_command );

// Function to run a command.
import "DPI-C"  questa_mvc_sv_do_cmd = function void questa_mvc_do_cmd( string command );

`ifndef XCELIUM
/* Function: questa_mvc_sv_convert_to_precision

A function for calculating the number of simulator time-steps (the smallest of all timeprecision declarations in the design) 
corresponding to an absolute time interval. See <Configuration of Time-Units> for a description of the use of this function.

time_value - a 64-bit signed integer giving the number of time-units required
time_unit - an enum (of type <questa_mvc_timecale_enum>), specifying the time-unit 
*/
import "DPI-C"  questa_mvc_sv_convert_to_precision = function longint questa_mvc_sv_convert_to_precision( longint time_value, questa_mvc_timecale_enum time_unit );

/* Function: questa_mvc_sv_convert_real_to_precision

A function for calculating the number of simulator time-steps (the smallest of all timeprecision declarations in the design) 
corresponding to an absolute time interval. See <Configuration of Time-Units> for a description of the use of this function.

time_value - a real giving the number of time-units required
time_unit - an enum (of type <questa_mvc_timecale_enum>), specifying the time-unit 
*/
import "DPI-C"  questa_mvc_sv_convert_real_to_precision = function real questa_mvc_sv_convert_real_to_precision( real time_value, questa_mvc_timecale_enum time_unit );

`else
import "DPI-C"  questa_mvc_sv_convert_to_precision = function longint questa_mvc_sv_convert_to_precision( longint time_value, int time_unit );
import "DPI-C"  questa_mvc_sv_convert_real_to_precision = function real questa_mvc_sv_convert_real_to_precision( real time_value, int time_unit );
`endif

// Function for getting the version of the Questa Verification IP.
import "DPI-C"  questa_vip_get_version = function string questa_vip_get_version(input string version);

// Function for getting the current platform for the Questa Verification IP.
import "DPI-C"  questa_vip_get_platform = function string questa_vip_get_platform();

// Function for getting the installation path for the Questa Verification IP. NOTE - If QVIP_HOME is defined in the environment, then that is returned, irrespective of the actual location.
import "DPI-C"  questa_mvc_sv_home = function string questa_mvc_home();


/* Group: Deprecated functions
 *
 * These are left to allow existing test benches to compile, but they do nothing beyond return a default value.
 */

function bit              questa_mvc_hist_record_pattern(input string pattern,input int hist_number);  return 1'b0; endfunction
function longint unsigned questa_mvc_item_create(input string name,input string hierarchy);            return 0;    endfunction
function string           questa_mvc_item_name(input longint unsigned handle);                         return "";   endfunction
function string           questa_mvc_item_params(input longint unsigned handle);                       return "";   endfunction
function longint unsigned questa_mvc_item_begin(input longint unsigned handle, input string inst_name, input longint begin_time); return 0; endfunction
function bit              questa_mvc_item_history(input longint unsigned handle,input string history); return 1'b0; endfunction
function bit              questa_mvc_item_end(input longint unsigned handle,input longint end_time);   return 1'b0; endfunction
function bit              questa_mvc_item_finish(input longint unsigned handle);                       return 1'b0; endfunction
function bit              questa_mvc_item_link(input longint unsigned src_handle,input longint unsigned dst_handle); return 1'b0; endfunction
function int              questa_mvc_item_linked_count(input longint unsigned handle);                 return 0;    endfunction
function bit              questa_mvc_item_linked_handles(input longint unsigned handle, inout longint unsigned handles[]); return 1'b0; endfunction
function longint          questa_mvc_item_time_begin(input longint unsigned handle);                   return 0;    endfunction
function longint          questa_mvc_item_time_end(input longint unsigned handle);                     return 0;    endfunction

// Static class, to print the Questa Verification IP Copyright Banner.
// DO NOT MODIFY.
class Questa_Verification_IP_Banner #( string lib_version = "DEV" , string build_date = "__DATE__" );
  (* elab_init *)static bit version_string = banner_display();
  static function bit banner_display();
    bit ret_val = 1;
    string sim_version = questa_vip_get_version( lib_version );
    string platform    = questa_vip_get_platform();
    $display("");
    $display("//  Questa Verification IP");
    $display("//  Version %s%s %s %s", lib_version, sim_version, platform, build_date);
    $display("//");
    $display("//  Copyright 2007-2022 Mentor Graphics Corporation");
    $display("//  All Rights Reserved.");
    $display("//");
    $display("//  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION");
    $display("//  WHICH IS THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS");
    $display("//  LICENSORS AND IS SUBJECT TO LICENSE TERMS.");
    $display("");
    return ret_val;
  endfunction
endclass


/* 
Class: questa_mvc_reporter
    A base class for supporting user-specific behaviour in response to a report from the MVC.
    See <Customizing Error-Reporting> for an explanation of this class and its use.
*/
class questa_mvc_reporter;

    // Variable: name
    //
    // A string holding the name of this reporter
    string name;
    
    // Variable: reporters
    //
    // An array of questa_mvc_reporters, used to allow multiple reporters to be accessed
    // from a single registration of a reporter with QVIP BFM interface
    questa_mvc_reporter reporters[];

    // Function: new
    //
    // The constructor for the reporter object
    //
    // n - A string giving the name for this object
    function new(string n = "QUESTA_MVC");
        name = n;
    endfunction

    // Function: report_message
    // 
    // This function will be called when a report is available.  Overload this virtual method in a sub-class if you want to do something else with the report.
    //
    // category     - A string giving a category for the report. 
    // fileName     - Unused parameter - left in for backward compatibility.
    // lineNo       - Unused parameter - left in for backward compatibility.
    // objectName   - The name of the Questa MVC object which emitted the report (or which the report is about).
    // instanceName - The design instance containing the source of the report.
    // error_no     - A Questa MVC specific error string, usually containing an error number specific to the protocol (may be the empty string).
    // typ          - The severity of the report. One of CONTINUE | NOTE | MESSAGE | WARNING | ERROR | FATAL.
    // mess         - The text of the report message.
    //
    virtual function void report_message(string category, string fileName, int lineNo, string objectName, string instanceName, string error_no, string typ, string mess);
        $display("%s %s-%s %s %s %s", typ, category, error_no, objectName, instanceName, mess);
    endfunction

    // Function: do_report_message
    //
    // This function will be called by the default implementation of report_message in mvc_reporter.
    // It should be overloaded in order to customise the specific reporter behaviour
    // 
    virtual function void do_report_message(string category, string fileName, int lineNo, string objectName, string instanceName, string error_no, string typ, string mess);
      report_message(category, fileName, lineNo, objectName, instanceName, error_no, typ, mess);
    endfunction

    // Function: add_reporter
    // 
    // This function is used to add a questa_mvc_reporter extension reporter to 
    // the array of reporters. 
    // 
    virtual function void add_reporter(questa_mvc_reporter reporter);
    
    endfunction
    
endclass

endpackage:QUESTA_MVC

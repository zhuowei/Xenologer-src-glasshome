package com.google.glass.logging;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMap.Builder;
import java.util.EnumSet;
import java.util.Iterator;

public enum UserEventAction
{
  public static final String ACCOUNT_RELOGIN_FAILURE = "2";
  public static final String ACCOUNT_RELOGIN_STARTED = "0";
  public static final String ACCOUNT_RELOGIN_SUCCESS = "1";
  public static final String ACTIVATED_CAMERA_LONG = "4";
  public static final String ACTIVATED_CAMERA_SHORT = "3";
  public static final String ACTIVATED_DON = "11";
  public static final String ACTIVATED_GLOBAL_LOOK_UP = "7";
  public static final String ACTIVATED_LONG_PRESS = "1";
  public static final String ACTIVATED_POWER_CONNECTED = "6";
  public static final String ACTIVATED_POWER_SHORT = "5";
  public static final String ACTIVATED_RELATIVE_LOOK_UP = "10";
  public static final String ACTIVATED_SWIPE_LISTEN = "2";
  public static final String ACTIVATED_TAP = "9";
  public static final String ACTIVATED_WINK = "8";
  public static final String BARCODE_PICTURE_EMAIL = "7";
  public static final String BARCODE_PICTURE_GEO = "3";
  public static final String BARCODE_PICTURE_GLASSCAST = "2";
  public static final String BARCODE_PICTURE_HANGOUT = "1";
  public static final String BARCODE_PICTURE_LINK = "6";
  public static final String BARCODE_PICTURE_PHONE = "5";
  public static final String BARCODE_PICTURE_SMS = "8";
  public static final String BARCODE_PICTURE_SPEAK = "4";
  public static final String BATTERY_STATE_KEY_ACTION = "a";
  public static final String BATTERY_STATE_KEY_CHARGED = "cd";
  public static final String BATTERY_STATE_KEY_CHARGING = "cg";
  public static final String BATTERY_STATE_KEY_PERCENT = "p";
  public static final String BATTERY_STATE_KEY_POWERED = "ip";
  public static final String BATTERY_STATE_KEY_TIME_TO_EMPTY = "t";
  public static final String BATTERY_STATE_VALUE_ACTION_LOW = "low";
  public static final String BATTERY_STATE_VALUE_ACTION_OKAY = "ok";
  public static final String BATTERY_STATE_VALUE_ACTION_PLUGGED = "plugged";
  public static final String BATTERY_STATE_VALUE_ACTION_UNPLUGGED = "unplugged";
  public static final String BUGREPORT_BT_DHCP = "11";
  public static final String BUGREPORT_CAMERA = "9";
  public static final String BUGREPORT_HEAP_ADDR = "13";
  public static final String BUGREPORT_MEM_HEAP = "12";
  public static final String BUGREPORT_TOUCHPAD = "10";
  public static final String BUNDLE_NUM_TOTAL = "n";
  public static final String BUNDLE_NUM_VIEWED = "v";
  public static final String CAMERA_TIMINGS_CAPTURED = "c";
  public static final String CAMERA_TIMINGS_GCAM = "g";
  public static final String CAMERA_TIMINGS_REQUEST_JPEG = "j";
  public static final String CAMERA_TIMINGS_REQUEST_SHUTTER = "s";
  public static final String CAMERA_TIMINGS_REQUEST_THUMBNAIL = "t";
  public static final String COMPANION_SCREENCAST_CONNECTED = "2";
  public static final String COMPANION_SCREENCAST_QRCODE = "1";
  public static final String DEVICE_STORAGE_FULL = "3";
  public static final String DEVICE_STORAGE_FULL_BLOCKED_PHOTO = "1";
  public static final String DEVICE_STORAGE_FULL_BLOCKED_VIDEO = "2";
  public static final String DEVICE_STORAGE_FULL_DURING_VIDEO = "3";
  public static final String DEVICE_STORAGE_LOW = "2";
  public static final String DEVICE_STORAGE_OK = "1";
  public static final String DISMISSED_DOWNSWIPE = "1";
  public static final String DISMISSED_NUDGE = "2";
  public static final String DISMISSED_QUICK_TIMEOUT = "4";
  public static final String DISMISSED_SYSTEM_TIMEOUT = "3";
  public static final String DOFFED_DON_TIME_MS_KEY = "don_time_ms";
  public static final String DOFFED_OHD_ACTIVE_KEY = "ohd_active";
  public static final String FAILED_TO_UPLOAD_ALL_ATTACHMENTS = "1";
  public static final String HANGOUTS_ENDED_CONNECTIVITY_BLUETOOTH = "1";
  public static final String HANGOUTS_ENDED_CONNECTIVITY_OTHER = "3";
  public static final String HANGOUTS_ENDED_CONNECTIVITY_WIFI = "2";
  public static final String HANGOUTS_ENDED_ERROR_KEY = "e";
  public static final String HANGOUTS_ENDED_EXPERT_KEY = "ex";
  public static final String HANGOUTS_ENDED_LOG_ACTUAL_ENC_BITRATE_KEY = "abr";
  public static final String HANGOUTS_ENDED_LOG_CONNECTIVITY_KEY = "c";
  public static final String HANGOUTS_ENDED_LOG_DURATION_KEY = "d";
  public static final String HANGOUTS_ENDED_LOG_FIRST_PARTICIPANT_JOIN_KEY = "t";
  public static final String HANGOUTS_ENDED_LOG_INITIATION_KEY = "i";
  public static final String HANGOUTS_ENDED_LOG_NUM_PARTICIPANTS_KEY = "n";
  public static final String HANGOUTS_ENDED_LOG_OUTGOING_FRAMERATE_KEY = "f";
  public static final String HANGOUTS_ENDED_LOG_PACKETS_LOST_KEY = "l";
  public static final String HANGOUTS_ENDED_LOG_PACKETS_SENT_KEY = "o";
  public static final String HANGOUTS_ENDED_LOG_ROOM_KEY = "r";
  public static final String HANGOUTS_ENDED_LOG_RTT_KEY = "p";
  public static final String HANGOUTS_ENDED_LOG_RX_BANDWIDTH_KEY = "x";
  public static final String HANGOUTS_ENDED_LOG_TARGET_ENC_BITRATE_KEY = "tbr";
  public static final String HANGOUTS_ENDED_LOG_TX_BANDWIDTH_KEY = "s";
  public static final String HANGOUTS_ENDED_LOG_TX_BITRATE_KEY = "b";
  public static final String HANGOUTS_ENDED_NO_ERROR = "-1";
  public static final String HANGOUTS_ENDED_ROOM_CREATED = "0";
  public static final String HANGOUTS_ENDED_ROOM_EXISTING = "1";
  public static final String HANGOUTS_ENTERED_TIMELINE = "2";
  public static final String HANGOUTS_ENTERED_VOICE = "1";
  public static final String HANGOUTS_ERROR_FAILURE = "3";
  public static final String HANGOUTS_ERROR_MEETING_ENTER = "1";
  public static final String HANGOUTS_ERROR_SIGNIN = "2";
  public static final String HANGOUTS_INCOMING_HANGOUT_ACTION_ANSWERED = "0";
  public static final String HANGOUTS_INCOMING_HANGOUT_ACTION_IGNORED = "2";
  public static final String HANGOUTS_INCOMING_HANGOUT_ACTION_KEY = "a";
  public static final String HANGOUTS_INCOMING_HANGOUT_ACTION_REJECTED = "1";
  public static final String HANGOUTS_INCOMING_HANGOUT_SOURCE_KEY = "s";
  public static final String HANGOUTS_INCOMING_HANGOUT_TYPE_KEY = "t";
  public static final String HANGOUTS_INVITE_CIRCLE = "2";
  public static final String HANGOUTS_INVITE_PERSON = "1";
  public static final String HANGOUTS_PARTICIPANT_STYLE_PHOTO_AND_NAME = "1";
  public static final String HANGOUTS_PARTICIPANT_STYLE_PHOTO_ONLY = "2";
  public static final String HANGOUTS_PARTICIPANT_STYLE_VIDEO_AND_NAME = "3";
  public static final String HANGOUTS_PARTICIPANT_STYLE_VIDEO_ONLY = "4";
  private static final ImmutableMap<String, UserEventAction> NAME_TO_ACTION = localBuilder.build();
  public static final String PHONE_CALL_CONNECTED = "6";
  public static final String PHONE_CALL_ERROR = "8";
  public static final String PHONE_CALL_INCOMING_CALL_ACCEPTED = "1";
  public static final String PHONE_CALL_INCOMING_CALL_IGNORED = "3";
  public static final String PHONE_CALL_INCOMING_CALL_REJECTED = "2";
  public static final String PHONE_CALL_MISSED_CALL = "4";
  public static final String PHONE_CALL_MUTED = "7";
  public static final String PHONE_CALL_OUTGOING_CALL = "5";
  public static final String PRD_BYTES_REQUEST = "breq";
  public static final String PRD_BYTES_RESPONSE = "bres";
  public static final String PRD_ERROR = "e";
  public static final String PRD_LATENCY_MS = "l";
  public static final String PRD_PATH = "p";
  public static final String PRD_REQUESTS = "r";
  public static final String RECORD_VIDEO_END_CANCELED = "c";
  public static final String RECORD_VIDEO_END_EXTENDED = "e";
  public static final String RECORD_VIDEO_END_LENGTH = "l";
  public static final String SHARED_PHOTO = "1";
  public static final String SHARED_UNKNOWN = "0";
  public static final String SHARED_VIDEO = "2";
  public static final String TIMELINE_SYNC_BYTES = "b";
  public static final String TIMELINE_SYNC_DURATION = "l";
  public static final String TIMELINE_SYNC_IS_POWERED = "p";
  public static final String TIMELINE_SYNC_IS_SCREEN_ON = "s";
  public static final String TIMELINE_SYNC_IS_WIFI_CONNECTED = "w";
  public static final String UI_PERFORMANCE_AVERAGE = "a";
  public static final String UI_PERFORMANCE_VARIANCE = "v";
  public static final String VIDEO_TIMINGS_REQUEST_START = "st";
  public static final String VOICE_MENU_COMMAND_GET_DIRECTIONS_TO = "5";
  public static final String VOICE_MENU_COMMAND_GOOGLE = "2";
  public static final String VOICE_MENU_COMMAND_HANG_OUT_WITH = "8";
  public static final String VOICE_MENU_COMMAND_MAKE_A_CALL_TO = "7";
  public static final String VOICE_MENU_COMMAND_OK_GLASS = "1";
  public static final String VOICE_MENU_COMMAND_READ_ALOUD = "9";
  public static final String VOICE_MENU_COMMAND_RECORD_A_VIDEO = "4";
  public static final String VOICE_MENU_COMMAND_REPLY = "10";
  public static final String VOICE_MENU_COMMAND_SEND_A_MESSAGE_TO = "6";
  public static final String VOICE_MENU_COMMAND_TAKE_A_PICTURE = "3";
  public final String action;

  static
  {
    BUGREPORT_SENT = new UserEventAction("BUGREPORT_SENT", 1, "3001");
    SETUP_ACCOUNT_FAILED = new UserEventAction("SETUP_ACCOUNT_FAILED", 2, "3002");
    ACCOUNT_RELOGIN = new UserEventAction("ACCOUNT_RELOGIN", 3, "3003");
    SHUTDOWN_IN_SETUP = new UserEventAction("SHUTDOWN_IN_SETUP", 4, "3004");
    BLUETOOTH_DISCOVERABLE = new UserEventAction("BLUETOOTH_DISCOVERABLE", 5, "3014");
    HOME_ACTIVATED = new UserEventAction("HOME_ACTIVATED", 6, "3017");
    HOME_DISMISSED = new UserEventAction("HOME_DISMISSED", 7, "3018");
    SCREEN_ON = new UserEventAction("SCREEN_ON", 8, "3019");
    SCREEN_ON_DURATION = new UserEventAction("SCREEN_ON_DURATION", 9, "3020");
    USER_INITIATED_SCREEN_ON = new UserEventAction("USER_INITIATED_SCREEN_ON", 10, "3040");
    HANDSFREE_VOICE_ACTION = new UserEventAction("HANDSFREE_VOICE_ACTION", 11, "3041");
    VOICE_SEARCH_STARTED = new UserEventAction("VOICE_SEARCH_STARTED", 12, "3021");
    VOICE_SEARCH_RECOGNITION = new UserEventAction("VOICE_SEARCH_RECOGNITION", 13, "3022");
    VOICE_SEARCH_MAJEL_RESULT = new UserEventAction("VOICE_SEARCH_MAJEL_RESULT", 14, "3023");
    VOICE_SEARCH_END_OF_SPEECH = new UserEventAction("VOICE_SEARCH_END_OF_SPEECH", 15, "3024");
    VOICE_SEARCH_FIRST_RECOGNITION = new UserEventAction("VOICE_SEARCH_FIRST_RECOGNITION", 16, "3025");
    VOICE_SEARCH_ERROR = new UserEventAction("VOICE_SEARCH_ERROR", 17, "3026");
    VOICE_SEARCH_DISMISS = new UserEventAction("VOICE_SEARCH_DISMISS", 18, "3005");
    VOICE_MESSAGE_DISMISS = new UserEventAction("VOICE_MESSAGE_DISMISS", 19, "3006");
    VOICE_SEARCH_NO_ANSWER = new UserEventAction("VOICE_SEARCH_NO_ANSWER", 20, "3007");
    VOICE_SEARCH_FROM_TIMELINE = new UserEventAction("VOICE_SEARCH_FROM_TIMELINE", 21, "3008");
    VOICE_SEARCH_SWIPE = new UserEventAction("VOICE_SEARCH_SWIPE", 22, "3009");
    VOICE_SEARCH_NO_SPEECH_DETECTED = new UserEventAction("VOICE_SEARCH_NO_SPEECH_DETECTED", 23, "3010");
    TIMELINE_ITEM_INSERTED = new UserEventAction("TIMELINE_ITEM_INSERTED", 24, "3027");
    TIMELINE_ITEM_SHARED = new UserEventAction("TIMELINE_ITEM_SHARED", 25, "3028");
    PHONE_CALL = new UserEventAction("PHONE_CALL", 26, "3029");
    DEVICE_STORAGE_BLOCK_USER_ACTION = new UserEventAction("DEVICE_STORAGE_BLOCK_USER_ACTION", 27, "3120");
    VIEWED_BUNDLE = new UserEventAction("VIEWED_BUNDLE", 28, "3121");
    BATTERY_STATE = new UserEventAction("BATTERY_STATE", 29, "3122");
    TWO_FINGER_ZOOM_OUT = new UserEventAction("TWO_FINGER_ZOOM_OUT", 30, "3123");
    PRESS_TO_SEARCH_DISMISSED = new UserEventAction("PRESS_TO_SEARCH_DISMISSED", 31, "3124");
    WIFI_BARCODE_SCANNED = new UserEventAction("WIFI_BARCODE_SCANNED", 32, "3012");
    WIFI_SCAN_RESULT_TAPPED = new UserEventAction("WIFI_SCAN_RESULT_TAPPED", 33, "14001");
    WIFI_SETUP_VIA_COMPANION = new UserEventAction("WIFI_SETUP_VIA_COMPANION", 34, "14002");
    WIFI_CONNECTED = new UserEventAction("WIFI_CONNECTED", 35, "3013");
    SEND_MESSAGE_INITIATED = new UserEventAction("SEND_MESSAGE_INITIATED", 36, "3030");
    SEND_MESSAGE_COMPLETED = new UserEventAction("SEND_MESSAGE_COMPLETED", 37, "3031");
    REPLY_INITIATED = new UserEventAction("REPLY_INITIATED", 38, "3032");
    REPLY_COMPLETED = new UserEventAction("REPLY_COMPLETED", 39, "3033");
    REPLY_ALL_INITIATED = new UserEventAction("REPLY_ALL_INITIATED", 40, "3034");
    REPLY_ALL_COMPLETED = new UserEventAction("REPLY_ALL_COMPLETED", 41, "3035");
    DELETE_INITIATED = new UserEventAction("DELETE_INITIATED", 42, "3036");
    DELETE_COMPLETED = new UserEventAction("DELETE_COMPLETED", 43, "3037");
    RETRY_REPLY = new UserEventAction("RETRY_REPLY", 44, "3038");
    TIMELINE_DOWNSTREAM_SYNC_STARTED = new UserEventAction("TIMELINE_DOWNSTREAM_SYNC_STARTED", 45, "3050");
    TIMELINE_DOWNSTREAM_SYNC_FINISHED = new UserEventAction("TIMELINE_DOWNSTREAM_SYNC_FINISHED", 46, "3051");
    TIMELINE_DOWNSTREAM_SYNC_BACKOFF = new UserEventAction("TIMELINE_DOWNSTREAM_SYNC_BACKOFF", 47, "3052");
    TIMELINE_UPSTREAM_SYNC_STARTED = new UserEventAction("TIMELINE_UPSTREAM_SYNC_STARTED", 48, "3055");
    TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY = new UserEventAction("TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY", 49, "3056");
    TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR = new UserEventAction("TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR", 50, "3057");
    TIMELINE_UPSTREAM_SYNC_BACKOFF = new UserEventAction("TIMELINE_UPSTREAM_SYNC_BACKOFF", 51, "3058");
    TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY = new UserEventAction("TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY", 52, "3059");
    RESUMABLE_UPLOADER_UPLOAD_STARTED = new UserEventAction("RESUMABLE_UPLOADER_UPLOAD_STARTED", 53, "3060");
    RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR = new UserEventAction("RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR", 54, "3061");
    RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR = new UserEventAction("RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR", 55, "3062");
    RESUMABLE_UPLOADER_UPLOAD_RESUMED = new UserEventAction("RESUMABLE_UPLOADER_UPLOAD_RESUMED", 56, "3063");
    RESUMABLE_UPLOADER_UPLOAD_FINISHED = new UserEventAction("RESUMABLE_UPLOADER_UPLOAD_FINISHED", 57, "3064");
    ENTITY_SYNC_STARTED = new UserEventAction("ENTITY_SYNC_STARTED", 58, "3070");
    ENTITY_SYNC_FINISHED = new UserEventAction("ENTITY_SYNC_FINISHED", 59, "3071");
    ENTITY_SYNC_BACKOFF = new UserEventAction("ENTITY_SYNC_BACKOFF", 60, "3072");
    DON_DETECTOR_ENABLED = new UserEventAction("DON_DETECTOR_ENABLED", 61, "3080");
    DON_DETECTOR_DISABLED = new UserEventAction("DON_DETECTOR_DISABLED", 62, "3081");
    DONNED = new UserEventAction("DONNED", 63, "3082");
    DOFFED = new UserEventAction("DOFFED", 64, "3083");
    VOICE_MENU_COMMAND_SPOKEN = new UserEventAction("VOICE_MENU_COMMAND_SPOKEN", 65, "3090");
    VOICE_MENU_COMMAND_TAPPED = new UserEventAction("VOICE_MENU_COMMAND_TAPPED", 66, "3091");
    VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF = new UserEventAction("VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF", 67, "3092");
    BARCODE_SUCCESSFUL_SCAN = new UserEventAction("BARCODE_SUCCESSFUL_SCAN", 68, "3100");
    BARCODE_FAILED_SCAN = new UserEventAction("BARCODE_FAILED_SCAN", 69, "3101");
    BARCODE_PICTURE_SCAN = new UserEventAction("BARCODE_PICTURE_SCAN", 70, "3102");
    NAVIGATION_START = new UserEventAction("NAVIGATION_START", 71, "4001");
    NAVIGATION_END = new UserEventAction("NAVIGATION_END", 72, "4002");
    NAVIGATION_TRAVEL_MODE_CHANGE = new UserEventAction("NAVIGATION_TRAVEL_MODE_CHANGE", 73, "4003");
    RECORD_VIDEO_START = new UserEventAction("RECORD_VIDEO_START", 74, "4100");
    RECORD_VIDEO_END = new UserEventAction("RECORD_VIDEO_END", 75, "4101");
    PROTO_REQUEST_DISPATCHER_BATCH = new UserEventAction("PROTO_REQUEST_DISPATCHER_BATCH", 76, "5000");
    COMPANION_CONNECTION = new UserEventAction("COMPANION_CONNECTION", 77, "5002");
    ANDROID_CHECK_IN = new UserEventAction("ANDROID_CHECK_IN", 78, "5003");
    DEVICE_STORAGE_STATE_CHANGED = new UserEventAction("DEVICE_STORAGE_STATE_CHANGED", 79, "5004");
    USER_EVENT_QUEUE_FULL = new UserEventAction("USER_EVENT_QUEUE_FULL", 80, "5005");
    PROTO_REQUEST_DISPATCHER_REQUEST_SIZE = new UserEventAction("PROTO_REQUEST_DISPATCHER_REQUEST_SIZE", 81, "5006");
    HANGOUTS_ERROR = new UserEventAction("HANGOUTS_ERROR", 82, "6001");
    HANGOUTS_ENTERED = new UserEventAction("HANGOUTS_ENTERED", 83, "6002");
    HANGOUTS_CREATED = new UserEventAction("HANGOUTS_CREATED", 84, "6003");
    HANGOUTS_CHAT_MESSAGE_RECEIVED = new UserEventAction("HANGOUTS_CHAT_MESSAGE_RECEIVED", 85, "6004");
    HANGOUTS_MUTE_REMOTE = new UserEventAction("HANGOUTS_MUTE_REMOTE", 86, "6005");
    HANGOUTS_MUTE_MY_VIDEO = new UserEventAction("HANGOUTS_MUTE_MY_VIDEO", 87, "6006");
    HANGOUTS_UNMUTE_MY_VIDEO = new UserEventAction("HANGOUTS_UNMUTE_MY_VIDEO", 88, "6007");
    HANGOUTS_MUTE_MY_AUDIO = new UserEventAction("HANGOUTS_MUTE_MY_AUDIO", 89, "6008");
    HANGOUTS_UNMUTE_MY_AUDIO = new UserEventAction("HANGOUTS_UNMUTE_MY_AUDIO", 90, "6009");
    HANGOUTS_SET_PARTICIPANT_AUTO = new UserEventAction("HANGOUTS_SET_PARTICIPANT_AUTO", 91, "6010");
    HANGOUTS_SET_PARTICIPANT_SPECIFIC = new UserEventAction("HANGOUTS_SET_PARTICIPANT_SPECIFIC", 92, "6011");
    HANGOUTS_INVITE = new UserEventAction("HANGOUTS_INVITE", 93, "6012");
    HANGOUTS_ENDED = new UserEventAction("HANGOUTS_ENDED", 94, "6013");
    HANGOUTS_WAITING_SCREEN_DISMISSED = new UserEventAction("HANGOUTS_WAITING_SCREEN_DISMISSED", 95, "6014");
    HANGOUTS_ENTERED_FROM_ACTIVE_CARD = new UserEventAction("HANGOUTS_ENTERED_FROM_ACTIVE_CARD", 96, "6015");
    HANGOUTS_ENDED_FROM_ACTIVE_CARD = new UserEventAction("HANGOUTS_ENDED_FROM_ACTIVE_CARD", 97, "6016");
    HANGOUTS_INCOMING_HANGOUT = new UserEventAction("HANGOUTS_INCOMING_HANGOUT", 98, "6017");
    WAKE_UP_DELAY = new UserEventAction("WAKE_UP_DELAY", 99, "7001");
    CAMERA_TIMINGS = new UserEventAction("CAMERA_TIMINGS", 100, "7002");
    UI_THREAD_QUEUE = new UserEventAction("UI_THREAD_QUEUE", 101, "7003");
    UI_TIME_BETWEEN_RENDERS = new UserEventAction("UI_TIME_BETWEEN_RENDERS", 102, "7004");
    UI_TIME_TO_RENDER = new UserEventAction("UI_TIME_TO_RENDER", 103, "7005");
    VIDEO_TIMINGS = new UserEventAction("VIDEO_TIMINGS", 104, "7006");
    ARE_YOU_THERE_DIALOG_SHOWN = new UserEventAction("ARE_YOU_THERE_DIALOG_SHOWN", 105, "8001");
    USER_IS_THERE = new UserEventAction("USER_IS_THERE", 106, "8002");
    USER_IS_NOT_THERE = new UserEventAction("USER_IS_NOT_THERE", 107, "8003");
    CONNECTIVITY_BT_PAIRED = new UserEventAction("CONNECTIVITY_BT_PAIRED", 108, "9001");
    CONNECTIVITY_CHECKER = new UserEventAction("CONNECTIVITY_CHECKER", 109, "9002");
    CONNECTIVITY_BROKEN_NETWORK = new UserEventAction("CONNECTIVITY_BROKEN_NETWORK", 110, "9003");
    CONNECTIVITY_STATE_PERCENTAGE = new UserEventAction("CONNECTIVITY_STATE_PERCENTAGE", 111, "9004");
    CONNECTIVITY_STATE_TIME = new UserEventAction("CONNECTIVITY_STATE_TIME", 112, "9005");
    CONNECTIVITY_STATE_SCREEN_ON = new UserEventAction("CONNECTIVITY_STATE_SCREEN_ON", 113, "9006");
    CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL = new UserEventAction("CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL", 114, "9007");
    CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL = new UserEventAction("CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL", 115, "9008");
    HEAD_GESTURES_HEAD_WAKE_ENABLED = new UserEventAction("HEAD_GESTURES_HEAD_WAKE_ENABLED", 116, "10000");
    HEAD_GESTURES_HEAD_WAKE_DISABLED = new UserEventAction("HEAD_GESTURES_HEAD_WAKE_DISABLED", 117, "10001");
    HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING = new UserEventAction("HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING", 118, "10002");
    EYE_GESTURES_WINK_ENABLED = new UserEventAction("EYE_GESTURES_WINK_ENABLED", 119, "11000");
    EYE_GESTURES_WINK_DISABLED = new UserEventAction("EYE_GESTURES_WINK_DISABLED", 120, "11001");
    EYE_GESTURES_WINK_CALIBRATION_SUCCESS = new UserEventAction("EYE_GESTURES_WINK_CALIBRATION_SUCCESS", 121, "11002");
    EYE_GESTURES_WINK_CALIBRATION_FAILURE = new UserEventAction("EYE_GESTURES_WINK_CALIBRATION_FAILURE", 122, "11003");
    EYE_GESTURES_WINK_TAKE_PHOTO = new UserEventAction("EYE_GESTURES_WINK_TAKE_PHOTO", 123, "11010");
    BROWSER_PAGE_REQUESTED_EXPLICIT = new UserEventAction("BROWSER_PAGE_REQUESTED_EXPLICIT", 124, "12000");
    BROWSER_PAGE_REQUESTED_IMPLICIT = new UserEventAction("BROWSER_PAGE_REQUESTED_IMPLICIT", 125, "12001");
    BROWSER_PAGE_LOADED = new UserEventAction("BROWSER_PAGE_LOADED", 126, "12002");
    BROWSER_MENU_OPTION = new UserEventAction("BROWSER_MENU_OPTION", 127, "12003");
    BROWSER_TWO_FINGER_ZOOM = new UserEventAction("BROWSER_TWO_FINGER_ZOOM", 128, "12004");
    BROWSER_ERROR = new UserEventAction("BROWSER_ERROR", 129, "12005");
    GUEST_MODE_TURNED_ON = new UserEventAction("GUEST_MODE_TURNED_ON", 130, "13000");
    GUEST_MODE_TURNED_OFF = new UserEventAction("GUEST_MODE_TURNED_OFF", 131, "13001");
    COMPANION_SCREENCAST = new UserEventAction("COMPANION_SCREENCAST", 132, "14000");
    UserEventAction[] arrayOfUserEventAction = new UserEventAction[''];
    arrayOfUserEventAction[0] = SETUP_BARCODE_SCANNED;
    arrayOfUserEventAction[1] = BUGREPORT_SENT;
    arrayOfUserEventAction[2] = SETUP_ACCOUNT_FAILED;
    arrayOfUserEventAction[3] = ACCOUNT_RELOGIN;
    arrayOfUserEventAction[4] = SHUTDOWN_IN_SETUP;
    arrayOfUserEventAction[5] = BLUETOOTH_DISCOVERABLE;
    arrayOfUserEventAction[6] = HOME_ACTIVATED;
    arrayOfUserEventAction[7] = HOME_DISMISSED;
    arrayOfUserEventAction[8] = SCREEN_ON;
    arrayOfUserEventAction[9] = SCREEN_ON_DURATION;
    arrayOfUserEventAction[10] = USER_INITIATED_SCREEN_ON;
    arrayOfUserEventAction[11] = HANDSFREE_VOICE_ACTION;
    arrayOfUserEventAction[12] = VOICE_SEARCH_STARTED;
    arrayOfUserEventAction[13] = VOICE_SEARCH_RECOGNITION;
    arrayOfUserEventAction[14] = VOICE_SEARCH_MAJEL_RESULT;
    arrayOfUserEventAction[15] = VOICE_SEARCH_END_OF_SPEECH;
    arrayOfUserEventAction[16] = VOICE_SEARCH_FIRST_RECOGNITION;
    arrayOfUserEventAction[17] = VOICE_SEARCH_ERROR;
    arrayOfUserEventAction[18] = VOICE_SEARCH_DISMISS;
    arrayOfUserEventAction[19] = VOICE_MESSAGE_DISMISS;
    arrayOfUserEventAction[20] = VOICE_SEARCH_NO_ANSWER;
    arrayOfUserEventAction[21] = VOICE_SEARCH_FROM_TIMELINE;
    arrayOfUserEventAction[22] = VOICE_SEARCH_SWIPE;
    arrayOfUserEventAction[23] = VOICE_SEARCH_NO_SPEECH_DETECTED;
    arrayOfUserEventAction[24] = TIMELINE_ITEM_INSERTED;
    arrayOfUserEventAction[25] = TIMELINE_ITEM_SHARED;
    arrayOfUserEventAction[26] = PHONE_CALL;
    arrayOfUserEventAction[27] = DEVICE_STORAGE_BLOCK_USER_ACTION;
    arrayOfUserEventAction[28] = VIEWED_BUNDLE;
    arrayOfUserEventAction[29] = BATTERY_STATE;
    arrayOfUserEventAction[30] = TWO_FINGER_ZOOM_OUT;
    arrayOfUserEventAction[31] = PRESS_TO_SEARCH_DISMISSED;
    arrayOfUserEventAction[32] = WIFI_BARCODE_SCANNED;
    arrayOfUserEventAction[33] = WIFI_SCAN_RESULT_TAPPED;
    arrayOfUserEventAction[34] = WIFI_SETUP_VIA_COMPANION;
    arrayOfUserEventAction[35] = WIFI_CONNECTED;
    arrayOfUserEventAction[36] = SEND_MESSAGE_INITIATED;
    arrayOfUserEventAction[37] = SEND_MESSAGE_COMPLETED;
    arrayOfUserEventAction[38] = REPLY_INITIATED;
    arrayOfUserEventAction[39] = REPLY_COMPLETED;
    arrayOfUserEventAction[40] = REPLY_ALL_INITIATED;
    arrayOfUserEventAction[41] = REPLY_ALL_COMPLETED;
    arrayOfUserEventAction[42] = DELETE_INITIATED;
    arrayOfUserEventAction[43] = DELETE_COMPLETED;
    arrayOfUserEventAction[44] = RETRY_REPLY;
    arrayOfUserEventAction[45] = TIMELINE_DOWNSTREAM_SYNC_STARTED;
    arrayOfUserEventAction[46] = TIMELINE_DOWNSTREAM_SYNC_FINISHED;
    arrayOfUserEventAction[47] = TIMELINE_DOWNSTREAM_SYNC_BACKOFF;
    arrayOfUserEventAction[48] = TIMELINE_UPSTREAM_SYNC_STARTED;
    arrayOfUserEventAction[49] = TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY;
    arrayOfUserEventAction[50] = TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR;
    arrayOfUserEventAction[51] = TIMELINE_UPSTREAM_SYNC_BACKOFF;
    arrayOfUserEventAction[52] = TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY;
    arrayOfUserEventAction[53] = RESUMABLE_UPLOADER_UPLOAD_STARTED;
    arrayOfUserEventAction[54] = RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR;
    arrayOfUserEventAction[55] = RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR;
    arrayOfUserEventAction[56] = RESUMABLE_UPLOADER_UPLOAD_RESUMED;
    arrayOfUserEventAction[57] = RESUMABLE_UPLOADER_UPLOAD_FINISHED;
    arrayOfUserEventAction[58] = ENTITY_SYNC_STARTED;
    arrayOfUserEventAction[59] = ENTITY_SYNC_FINISHED;
    arrayOfUserEventAction[60] = ENTITY_SYNC_BACKOFF;
    arrayOfUserEventAction[61] = DON_DETECTOR_ENABLED;
    arrayOfUserEventAction[62] = DON_DETECTOR_DISABLED;
    arrayOfUserEventAction[63] = DONNED;
    arrayOfUserEventAction[64] = DOFFED;
    arrayOfUserEventAction[65] = VOICE_MENU_COMMAND_SPOKEN;
    arrayOfUserEventAction[66] = VOICE_MENU_COMMAND_TAPPED;
    arrayOfUserEventAction[67] = VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF;
    arrayOfUserEventAction[68] = BARCODE_SUCCESSFUL_SCAN;
    arrayOfUserEventAction[69] = BARCODE_FAILED_SCAN;
    arrayOfUserEventAction[70] = BARCODE_PICTURE_SCAN;
    arrayOfUserEventAction[71] = NAVIGATION_START;
    arrayOfUserEventAction[72] = NAVIGATION_END;
    arrayOfUserEventAction[73] = NAVIGATION_TRAVEL_MODE_CHANGE;
    arrayOfUserEventAction[74] = RECORD_VIDEO_START;
    arrayOfUserEventAction[75] = RECORD_VIDEO_END;
    arrayOfUserEventAction[76] = PROTO_REQUEST_DISPATCHER_BATCH;
    arrayOfUserEventAction[77] = COMPANION_CONNECTION;
    arrayOfUserEventAction[78] = ANDROID_CHECK_IN;
    arrayOfUserEventAction[79] = DEVICE_STORAGE_STATE_CHANGED;
    arrayOfUserEventAction[80] = USER_EVENT_QUEUE_FULL;
    arrayOfUserEventAction[81] = PROTO_REQUEST_DISPATCHER_REQUEST_SIZE;
    arrayOfUserEventAction[82] = HANGOUTS_ERROR;
    arrayOfUserEventAction[83] = HANGOUTS_ENTERED;
    arrayOfUserEventAction[84] = HANGOUTS_CREATED;
    arrayOfUserEventAction[85] = HANGOUTS_CHAT_MESSAGE_RECEIVED;
    arrayOfUserEventAction[86] = HANGOUTS_MUTE_REMOTE;
    arrayOfUserEventAction[87] = HANGOUTS_MUTE_MY_VIDEO;
    arrayOfUserEventAction[88] = HANGOUTS_UNMUTE_MY_VIDEO;
    arrayOfUserEventAction[89] = HANGOUTS_MUTE_MY_AUDIO;
    arrayOfUserEventAction[90] = HANGOUTS_UNMUTE_MY_AUDIO;
    arrayOfUserEventAction[91] = HANGOUTS_SET_PARTICIPANT_AUTO;
    arrayOfUserEventAction[92] = HANGOUTS_SET_PARTICIPANT_SPECIFIC;
    arrayOfUserEventAction[93] = HANGOUTS_INVITE;
    arrayOfUserEventAction[94] = HANGOUTS_ENDED;
    arrayOfUserEventAction[95] = HANGOUTS_WAITING_SCREEN_DISMISSED;
    arrayOfUserEventAction[96] = HANGOUTS_ENTERED_FROM_ACTIVE_CARD;
    arrayOfUserEventAction[97] = HANGOUTS_ENDED_FROM_ACTIVE_CARD;
    arrayOfUserEventAction[98] = HANGOUTS_INCOMING_HANGOUT;
    arrayOfUserEventAction[99] = WAKE_UP_DELAY;
    arrayOfUserEventAction[100] = CAMERA_TIMINGS;
    arrayOfUserEventAction[101] = UI_THREAD_QUEUE;
    arrayOfUserEventAction[102] = UI_TIME_BETWEEN_RENDERS;
    arrayOfUserEventAction[103] = UI_TIME_TO_RENDER;
    arrayOfUserEventAction[104] = VIDEO_TIMINGS;
    arrayOfUserEventAction[105] = ARE_YOU_THERE_DIALOG_SHOWN;
    arrayOfUserEventAction[106] = USER_IS_THERE;
    arrayOfUserEventAction[107] = USER_IS_NOT_THERE;
    arrayOfUserEventAction[108] = CONNECTIVITY_BT_PAIRED;
    arrayOfUserEventAction[109] = CONNECTIVITY_CHECKER;
    arrayOfUserEventAction[110] = CONNECTIVITY_BROKEN_NETWORK;
    arrayOfUserEventAction[111] = CONNECTIVITY_STATE_PERCENTAGE;
    arrayOfUserEventAction[112] = CONNECTIVITY_STATE_TIME;
    arrayOfUserEventAction[113] = CONNECTIVITY_STATE_SCREEN_ON;
    arrayOfUserEventAction[114] = CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL;
    arrayOfUserEventAction[115] = CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL;
    arrayOfUserEventAction[116] = HEAD_GESTURES_HEAD_WAKE_ENABLED;
    arrayOfUserEventAction[117] = HEAD_GESTURES_HEAD_WAKE_DISABLED;
    arrayOfUserEventAction[118] = HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING;
    arrayOfUserEventAction[119] = EYE_GESTURES_WINK_ENABLED;
    arrayOfUserEventAction[120] = EYE_GESTURES_WINK_DISABLED;
    arrayOfUserEventAction[121] = EYE_GESTURES_WINK_CALIBRATION_SUCCESS;
    arrayOfUserEventAction[122] = EYE_GESTURES_WINK_CALIBRATION_FAILURE;
    arrayOfUserEventAction[123] = EYE_GESTURES_WINK_TAKE_PHOTO;
    arrayOfUserEventAction[124] = BROWSER_PAGE_REQUESTED_EXPLICIT;
    arrayOfUserEventAction[125] = BROWSER_PAGE_REQUESTED_IMPLICIT;
    arrayOfUserEventAction[126] = BROWSER_PAGE_LOADED;
    arrayOfUserEventAction[127] = BROWSER_MENU_OPTION;
    arrayOfUserEventAction[''] = BROWSER_TWO_FINGER_ZOOM;
    arrayOfUserEventAction[''] = BROWSER_ERROR;
    arrayOfUserEventAction[''] = GUEST_MODE_TURNED_ON;
    arrayOfUserEventAction[''] = GUEST_MODE_TURNED_OFF;
    arrayOfUserEventAction[''] = COMPANION_SCREENCAST;
    $VALUES = arrayOfUserEventAction;
    EnumSet localEnumSet = EnumSet.allOf(UserEventAction.class);
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    Iterator localIterator = localEnumSet.iterator();
    while (localIterator.hasNext())
    {
      UserEventAction localUserEventAction = (UserEventAction)localIterator.next();
      localBuilder.put(localUserEventAction.action, localUserEventAction);
    }
  }

  private UserEventAction(String paramString)
  {
    this.action = paramString;
  }

  public static UserEventAction fromAction(String paramString)
  {
    return (UserEventAction)NAME_TO_ACTION.get(paramString);
  }

  public static enum TimelineItemInserted
  {
    private final String data;

    static
    {
      SMS_RECEIVED = new TimelineItemInserted("SMS_RECEIVED", 3, "4");
      CALENDAR = new TimelineItemInserted("CALENDAR", 4, "5");
      EMAIL = new TimelineItemInserted("EMAIL", 5, "6");
      PHONE_CALL = new TimelineItemInserted("PHONE_CALL", 6, "7");
      HANGOUT = new TimelineItemInserted("HANGOUT", 7, "8");
      VOICE_SEARCH = new TimelineItemInserted("VOICE_SEARCH", 8, "9");
      VOICE_MESSAGE = new TimelineItemInserted("VOICE_MESSAGE", 9, "10");
      NAVIGATION = new TimelineItemInserted("NAVIGATION", 10, "11");
      BUG_REPORT = new TimelineItemInserted("BUG_REPORT", 11, "12");
      SHARE = new TimelineItemInserted("SHARE", 12, "13");
      COMPANION_API = new TimelineItemInserted("COMPANION_API", 13, "14");
      LAUNCH = new TimelineItemInserted("LAUNCH", 14, "15");
      TimelineItemInserted[] arrayOfTimelineItemInserted = new TimelineItemInserted[15];
      arrayOfTimelineItemInserted[0] = PHOTO;
      arrayOfTimelineItemInserted[1] = TIMELAPSE_PHOTO;
      arrayOfTimelineItemInserted[2] = VIDEO;
      arrayOfTimelineItemInserted[3] = SMS_RECEIVED;
      arrayOfTimelineItemInserted[4] = CALENDAR;
      arrayOfTimelineItemInserted[5] = EMAIL;
      arrayOfTimelineItemInserted[6] = PHONE_CALL;
      arrayOfTimelineItemInserted[7] = HANGOUT;
      arrayOfTimelineItemInserted[8] = VOICE_SEARCH;
      arrayOfTimelineItemInserted[9] = VOICE_MESSAGE;
      arrayOfTimelineItemInserted[10] = NAVIGATION;
      arrayOfTimelineItemInserted[11] = BUG_REPORT;
      arrayOfTimelineItemInserted[12] = SHARE;
      arrayOfTimelineItemInserted[13] = COMPANION_API;
      arrayOfTimelineItemInserted[14] = LAUNCH;
    }

    private TimelineItemInserted(String paramString)
    {
      this.data = paramString;
    }

    public String getData()
    {
      return this.data;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.UserEventAction
 * JD-Core Version:    0.6.2
 */
.class public final enum Lcom/google/glass/logging/UserEventAction;
.super Ljava/lang/Enum;
.source "UserEventAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/logging/UserEventAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum ACCOUNT_RELOGIN:Lcom/google/glass/logging/UserEventAction; = null

.field public static final ACCOUNT_RELOGIN_FAILURE:Ljava/lang/String; = "2"

.field public static final ACCOUNT_RELOGIN_STARTED:Ljava/lang/String; = "0"

.field public static final ACCOUNT_RELOGIN_SUCCESS:Ljava/lang/String; = "1"

.field public static final ACTIVATED_CAMERA_LONG:Ljava/lang/String; = "4"

.field public static final ACTIVATED_CAMERA_SHORT:Ljava/lang/String; = "3"

.field public static final ACTIVATED_DON:Ljava/lang/String; = "11"

.field public static final ACTIVATED_GLOBAL_LOOK_UP:Ljava/lang/String; = "7"

.field public static final ACTIVATED_LONG_PRESS:Ljava/lang/String; = "1"

.field public static final ACTIVATED_POWER_CONNECTED:Ljava/lang/String; = "6"

.field public static final ACTIVATED_POWER_SHORT:Ljava/lang/String; = "5"

.field public static final ACTIVATED_RELATIVE_LOOK_UP:Ljava/lang/String; = "10"

.field public static final ACTIVATED_SWIPE_LISTEN:Ljava/lang/String; = "2"

.field public static final ACTIVATED_TAP:Ljava/lang/String; = "9"

.field public static final ACTIVATED_WINK:Ljava/lang/String; = "8"

.field public static final enum ANDROID_CHECK_IN:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum ARE_YOU_THERE_DIALOG_SHOWN:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum BARCODE_FAILED_SCAN:Lcom/google/glass/logging/UserEventAction; = null

.field public static final BARCODE_PICTURE_EMAIL:Ljava/lang/String; = "7"

.field public static final BARCODE_PICTURE_GEO:Ljava/lang/String; = "3"

.field public static final BARCODE_PICTURE_GLASSCAST:Ljava/lang/String; = "2"

.field public static final BARCODE_PICTURE_HANGOUT:Ljava/lang/String; = "1"

.field public static final BARCODE_PICTURE_LINK:Ljava/lang/String; = "6"

.field public static final BARCODE_PICTURE_PHONE:Ljava/lang/String; = "5"

.field public static final enum BARCODE_PICTURE_SCAN:Lcom/google/glass/logging/UserEventAction; = null

.field public static final BARCODE_PICTURE_SMS:Ljava/lang/String; = "8"

.field public static final BARCODE_PICTURE_SPEAK:Ljava/lang/String; = "4"

.field public static final enum BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum BATTERY_STATE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final BATTERY_STATE_KEY_ACTION:Ljava/lang/String; = "a"

.field public static final BATTERY_STATE_KEY_CHARGED:Ljava/lang/String; = "cd"

.field public static final BATTERY_STATE_KEY_CHARGING:Ljava/lang/String; = "cg"

.field public static final BATTERY_STATE_KEY_PERCENT:Ljava/lang/String; = "p"

.field public static final BATTERY_STATE_KEY_POWERED:Ljava/lang/String; = "ip"

.field public static final BATTERY_STATE_KEY_TIME_TO_EMPTY:Ljava/lang/String; = "t"

.field public static final BATTERY_STATE_VALUE_ACTION_LOW:Ljava/lang/String; = "low"

.field public static final BATTERY_STATE_VALUE_ACTION_OKAY:Ljava/lang/String; = "ok"

.field public static final BATTERY_STATE_VALUE_ACTION_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final BATTERY_STATE_VALUE_ACTION_UNPLUGGED:Ljava/lang/String; = "unplugged"

.field public static final enum BLUETOOTH_DISCOVERABLE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum BROWSER_ERROR:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum BROWSER_MENU_OPTION:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum BROWSER_PAGE_LOADED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum BROWSER_PAGE_REQUESTED_EXPLICIT:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum BROWSER_PAGE_REQUESTED_IMPLICIT:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum BROWSER_TWO_FINGER_ZOOM:Lcom/google/glass/logging/UserEventAction; = null

.field public static final BUGREPORT_BT_DHCP:Ljava/lang/String; = "11"

.field public static final BUGREPORT_CAMERA:Ljava/lang/String; = "9"

.field public static final BUGREPORT_HEAP_ADDR:Ljava/lang/String; = "13"

.field public static final BUGREPORT_MEM_HEAP:Ljava/lang/String; = "12"

.field public static final enum BUGREPORT_SENT:Lcom/google/glass/logging/UserEventAction; = null

.field public static final BUGREPORT_TOUCHPAD:Ljava/lang/String; = "10"

.field public static final BUNDLE_NUM_TOTAL:Ljava/lang/String; = "n"

.field public static final BUNDLE_NUM_VIEWED:Ljava/lang/String; = "v"

.field public static final enum CAMERA_TIMINGS:Lcom/google/glass/logging/UserEventAction; = null

.field public static final CAMERA_TIMINGS_CAPTURED:Ljava/lang/String; = "c"

.field public static final CAMERA_TIMINGS_GCAM:Ljava/lang/String; = "g"

.field public static final CAMERA_TIMINGS_REQUEST_JPEG:Ljava/lang/String; = "j"

.field public static final CAMERA_TIMINGS_REQUEST_SHUTTER:Ljava/lang/String; = "s"

.field public static final CAMERA_TIMINGS_REQUEST_THUMBNAIL:Ljava/lang/String; = "t"

.field public static final enum COMPANION_CONNECTION:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum COMPANION_SCREENCAST:Lcom/google/glass/logging/UserEventAction; = null

.field public static final COMPANION_SCREENCAST_CONNECTED:Ljava/lang/String; = "2"

.field public static final COMPANION_SCREENCAST_QRCODE:Ljava/lang/String; = "1"

.field public static final enum CONNECTIVITY_BROKEN_NETWORK:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum CONNECTIVITY_BT_PAIRED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum CONNECTIVITY_CHECKER:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum CONNECTIVITY_STATE_PERCENTAGE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum CONNECTIVITY_STATE_SCREEN_ON:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum CONNECTIVITY_STATE_TIME:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum DELETE_COMPLETED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum DELETE_INITIATED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/logging/UserEventAction; = null

.field public static final DEVICE_STORAGE_FULL:Ljava/lang/String; = "3"

.field public static final DEVICE_STORAGE_FULL_BLOCKED_PHOTO:Ljava/lang/String; = "1"

.field public static final DEVICE_STORAGE_FULL_BLOCKED_VIDEO:Ljava/lang/String; = "2"

.field public static final DEVICE_STORAGE_FULL_DURING_VIDEO:Ljava/lang/String; = "3"

.field public static final DEVICE_STORAGE_LOW:Ljava/lang/String; = "2"

.field public static final DEVICE_STORAGE_OK:Ljava/lang/String; = "1"

.field public static final enum DEVICE_STORAGE_STATE_CHANGED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final DISMISSED_DOWNSWIPE:Ljava/lang/String; = "1"

.field public static final DISMISSED_NUDGE:Ljava/lang/String; = "2"

.field public static final DISMISSED_QUICK_TIMEOUT:Ljava/lang/String; = "4"

.field public static final DISMISSED_SYSTEM_TIMEOUT:Ljava/lang/String; = "3"

.field public static final enum DOFFED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final DOFFED_DON_TIME_MS_KEY:Ljava/lang/String; = "don_time_ms"

.field public static final DOFFED_OHD_ACTIVE_KEY:Ljava/lang/String; = "ohd_active"

.field public static final enum DONNED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum DON_DETECTOR_DISABLED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum DON_DETECTOR_ENABLED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum ENTITY_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum ENTITY_SYNC_FINISHED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum ENTITY_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum EYE_GESTURES_WINK_CALIBRATION_FAILURE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum EYE_GESTURES_WINK_CALIBRATION_SUCCESS:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/logging/UserEventAction; = null

.field public static final FAILED_TO_UPLOAD_ALL_ATTACHMENTS:Ljava/lang/String; = "1"

.field public static final enum GUEST_MODE_TURNED_OFF:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum GUEST_MODE_TURNED_ON:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANDSFREE_VOICE_ACTION:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANGOUTS_CHAT_MESSAGE_RECEIVED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANGOUTS_CREATED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANGOUTS_ENDED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final HANGOUTS_ENDED_CONNECTIVITY_BLUETOOTH:Ljava/lang/String; = "1"

.field public static final HANGOUTS_ENDED_CONNECTIVITY_OTHER:Ljava/lang/String; = "3"

.field public static final HANGOUTS_ENDED_CONNECTIVITY_WIFI:Ljava/lang/String; = "2"

.field public static final HANGOUTS_ENDED_ERROR_KEY:Ljava/lang/String; = "e"

.field public static final HANGOUTS_ENDED_EXPERT_KEY:Ljava/lang/String; = "ex"

.field public static final enum HANGOUTS_ENDED_FROM_ACTIVE_CARD:Lcom/google/glass/logging/UserEventAction; = null

.field public static final HANGOUTS_ENDED_LOG_ACTUAL_ENC_BITRATE_KEY:Ljava/lang/String; = "abr"

.field public static final HANGOUTS_ENDED_LOG_CONNECTIVITY_KEY:Ljava/lang/String; = "c"

.field public static final HANGOUTS_ENDED_LOG_DURATION_KEY:Ljava/lang/String; = "d"

.field public static final HANGOUTS_ENDED_LOG_FIRST_PARTICIPANT_JOIN_KEY:Ljava/lang/String; = "t"

.field public static final HANGOUTS_ENDED_LOG_INITIATION_KEY:Ljava/lang/String; = "i"

.field public static final HANGOUTS_ENDED_LOG_NUM_PARTICIPANTS_KEY:Ljava/lang/String; = "n"

.field public static final HANGOUTS_ENDED_LOG_OUTGOING_FRAMERATE_KEY:Ljava/lang/String; = "f"

.field public static final HANGOUTS_ENDED_LOG_PACKETS_LOST_KEY:Ljava/lang/String; = "l"

.field public static final HANGOUTS_ENDED_LOG_PACKETS_SENT_KEY:Ljava/lang/String; = "o"

.field public static final HANGOUTS_ENDED_LOG_ROOM_KEY:Ljava/lang/String; = "r"

.field public static final HANGOUTS_ENDED_LOG_RTT_KEY:Ljava/lang/String; = "p"

.field public static final HANGOUTS_ENDED_LOG_RX_BANDWIDTH_KEY:Ljava/lang/String; = "x"

.field public static final HANGOUTS_ENDED_LOG_TARGET_ENC_BITRATE_KEY:Ljava/lang/String; = "tbr"

.field public static final HANGOUTS_ENDED_LOG_TX_BANDWIDTH_KEY:Ljava/lang/String; = "s"

.field public static final HANGOUTS_ENDED_LOG_TX_BITRATE_KEY:Ljava/lang/String; = "b"

.field public static final HANGOUTS_ENDED_NO_ERROR:Ljava/lang/String; = "-1"

.field public static final HANGOUTS_ENDED_ROOM_CREATED:Ljava/lang/String; = "0"

.field public static final HANGOUTS_ENDED_ROOM_EXISTING:Ljava/lang/String; = "1"

.field public static final enum HANGOUTS_ENTERED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANGOUTS_ENTERED_FROM_ACTIVE_CARD:Lcom/google/glass/logging/UserEventAction; = null

.field public static final HANGOUTS_ENTERED_TIMELINE:Ljava/lang/String; = "2"

.field public static final HANGOUTS_ENTERED_VOICE:Ljava/lang/String; = "1"

.field public static final enum HANGOUTS_ERROR:Lcom/google/glass/logging/UserEventAction; = null

.field public static final HANGOUTS_ERROR_FAILURE:Ljava/lang/String; = "3"

.field public static final HANGOUTS_ERROR_MEETING_ENTER:Ljava/lang/String; = "1"

.field public static final HANGOUTS_ERROR_SIGNIN:Ljava/lang/String; = "2"

.field public static final enum HANGOUTS_INCOMING_HANGOUT:Lcom/google/glass/logging/UserEventAction; = null

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_ANSWERED:Ljava/lang/String; = "0"

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_IGNORED:Ljava/lang/String; = "2"

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_KEY:Ljava/lang/String; = "a"

.field public static final HANGOUTS_INCOMING_HANGOUT_ACTION_REJECTED:Ljava/lang/String; = "1"

.field public static final HANGOUTS_INCOMING_HANGOUT_SOURCE_KEY:Ljava/lang/String; = "s"

.field public static final HANGOUTS_INCOMING_HANGOUT_TYPE_KEY:Ljava/lang/String; = "t"

.field public static final enum HANGOUTS_INVITE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final HANGOUTS_INVITE_CIRCLE:Ljava/lang/String; = "2"

.field public static final HANGOUTS_INVITE_PERSON:Ljava/lang/String; = "1"

.field public static final enum HANGOUTS_MUTE_MY_AUDIO:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANGOUTS_MUTE_MY_VIDEO:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANGOUTS_MUTE_REMOTE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final HANGOUTS_PARTICIPANT_STYLE_PHOTO_AND_NAME:Ljava/lang/String; = "1"

.field public static final HANGOUTS_PARTICIPANT_STYLE_PHOTO_ONLY:Ljava/lang/String; = "2"

.field public static final HANGOUTS_PARTICIPANT_STYLE_VIDEO_AND_NAME:Ljava/lang/String; = "3"

.field public static final HANGOUTS_PARTICIPANT_STYLE_VIDEO_ONLY:Ljava/lang/String; = "4"

.field public static final enum HANGOUTS_SET_PARTICIPANT_AUTO:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANGOUTS_SET_PARTICIPANT_SPECIFIC:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANGOUTS_UNMUTE_MY_AUDIO:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANGOUTS_UNMUTE_MY_VIDEO:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HANGOUTS_WAITING_SCREEN_DISMISSED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HOME_ACTIVATED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum HOME_DISMISSED:Lcom/google/glass/logging/UserEventAction; = null

.field private static final NAME_TO_ACTION:Lcom/google/common/collect/ImmutableMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/logging/UserEventAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NAVIGATION_END:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum NAVIGATION_START:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum NAVIGATION_TRAVEL_MODE_CHANGE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum PHONE_CALL:Lcom/google/glass/logging/UserEventAction; = null

.field public static final PHONE_CALL_CONNECTED:Ljava/lang/String; = "6"

.field public static final PHONE_CALL_ERROR:Ljava/lang/String; = "8"

.field public static final PHONE_CALL_INCOMING_CALL_ACCEPTED:Ljava/lang/String; = "1"

.field public static final PHONE_CALL_INCOMING_CALL_IGNORED:Ljava/lang/String; = "3"

.field public static final PHONE_CALL_INCOMING_CALL_REJECTED:Ljava/lang/String; = "2"

.field public static final PHONE_CALL_MISSED_CALL:Ljava/lang/String; = "4"

.field public static final PHONE_CALL_MUTED:Ljava/lang/String; = "7"

.field public static final PHONE_CALL_OUTGOING_CALL:Ljava/lang/String; = "5"

.field public static final PRD_BYTES_REQUEST:Ljava/lang/String; = "breq"

.field public static final PRD_BYTES_RESPONSE:Ljava/lang/String; = "bres"

.field public static final PRD_ERROR:Ljava/lang/String; = "e"

.field public static final PRD_LATENCY_MS:Ljava/lang/String; = "l"

.field public static final PRD_PATH:Ljava/lang/String; = "p"

.field public static final PRD_REQUESTS:Ljava/lang/String; = "r"

.field public static final enum PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum RECORD_VIDEO_END:Lcom/google/glass/logging/UserEventAction; = null

.field public static final RECORD_VIDEO_END_CANCELED:Ljava/lang/String; = "c"

.field public static final RECORD_VIDEO_END_EXTENDED:Ljava/lang/String; = "e"

.field public static final RECORD_VIDEO_END_LENGTH:Ljava/lang/String; = "l"

.field public static final enum RECORD_VIDEO_START:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum REPLY_ALL_COMPLETED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum REPLY_ALL_INITIATED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum REPLY_COMPLETED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum REPLY_INITIATED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_FINISHED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_RESUMED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum RESUMABLE_UPLOADER_UPLOAD_STARTED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum RETRY_REPLY:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum SCREEN_ON:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum SCREEN_ON_DURATION:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum SEND_MESSAGE_COMPLETED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum SEND_MESSAGE_INITIATED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum SETUP_ACCOUNT_FAILED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum SETUP_BARCODE_SCANNED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final SHARED_PHOTO:Ljava/lang/String; = "1"

.field public static final SHARED_UNKNOWN:Ljava/lang/String; = "0"

.field public static final SHARED_VIDEO:Ljava/lang/String; = "2"

.field public static final enum SHUTDOWN_IN_SETUP:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum TIMELINE_DOWNSTREAM_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum TIMELINE_ITEM_INSERTED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum TIMELINE_ITEM_SHARED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final TIMELINE_SYNC_BYTES:Ljava/lang/String; = "b"

.field public static final TIMELINE_SYNC_DURATION:Ljava/lang/String; = "l"

.field public static final TIMELINE_SYNC_IS_POWERED:Ljava/lang/String; = "p"

.field public static final TIMELINE_SYNC_IS_SCREEN_ON:Ljava/lang/String; = "s"

.field public static final TIMELINE_SYNC_IS_WIFI_CONNECTED:Ljava/lang/String; = "w"

.field public static final enum TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum TWO_FINGER_ZOOM_OUT:Lcom/google/glass/logging/UserEventAction; = null

.field public static final UI_PERFORMANCE_AVERAGE:Ljava/lang/String; = "a"

.field public static final UI_PERFORMANCE_VARIANCE:Ljava/lang/String; = "v"

.field public static final enum UI_THREAD_QUEUE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum UI_TIME_TO_RENDER:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum USER_EVENT_QUEUE_FULL:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum USER_INITIATED_SCREEN_ON:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum USER_IS_NOT_THERE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum USER_IS_THERE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum VIDEO_TIMINGS:Lcom/google/glass/logging/UserEventAction; = null

.field public static final VIDEO_TIMINGS_REQUEST_START:Ljava/lang/String; = "st"

.field public static final enum VIEWED_BUNDLE:Lcom/google/glass/logging/UserEventAction; = null

.field public static final VOICE_MENU_COMMAND_GET_DIRECTIONS_TO:Ljava/lang/String; = "5"

.field public static final VOICE_MENU_COMMAND_GOOGLE:Ljava/lang/String; = "2"

.field public static final VOICE_MENU_COMMAND_HANG_OUT_WITH:Ljava/lang/String; = "8"

.field public static final VOICE_MENU_COMMAND_MAKE_A_CALL_TO:Ljava/lang/String; = "7"

.field public static final VOICE_MENU_COMMAND_OK_GLASS:Ljava/lang/String; = "1"

.field public static final VOICE_MENU_COMMAND_READ_ALOUD:Ljava/lang/String; = "9"

.field public static final VOICE_MENU_COMMAND_RECORD_A_VIDEO:Ljava/lang/String; = "4"

.field public static final VOICE_MENU_COMMAND_REPLY:Ljava/lang/String; = "10"

.field public static final VOICE_MENU_COMMAND_SEND_A_MESSAGE_TO:Ljava/lang/String; = "6"

.field public static final enum VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction; = null

.field public static final enum VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/logging/UserEventAction; = null

.field public static final VOICE_MENU_COMMAND_TAKE_A_PICTURE:Ljava/lang/String; = "3"

.field public static final enum VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_MESSAGE_DISMISS:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_DISMISS:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_END_OF_SPEECH:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_ERROR:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_FIRST_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_MAJEL_RESULT:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_NO_SPEECH_DETECTED:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_STARTED:Lcom/google/glass/logging/UserEventAction;

.field public static final enum VOICE_SEARCH_SWIPE:Lcom/google/glass/logging/UserEventAction;

.field public static final enum WAKE_UP_DELAY:Lcom/google/glass/logging/UserEventAction;

.field public static final enum WIFI_BARCODE_SCANNED:Lcom/google/glass/logging/UserEventAction;

.field public static final enum WIFI_CONNECTED:Lcom/google/glass/logging/UserEventAction;

.field public static final enum WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/logging/UserEventAction;

.field public static final enum WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/logging/UserEventAction;


# instance fields
.field public final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 20
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "SETUP_BARCODE_SCANNED"

    const-string v6, "3000"

    invoke-direct {v4, v5, v8, v6}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->SETUP_BARCODE_SCANNED:Lcom/google/glass/logging/UserEventAction;

    .line 21
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BUGREPORT_SENT"

    const-string v6, "3001"

    invoke-direct {v4, v5, v9, v6}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BUGREPORT_SENT:Lcom/google/glass/logging/UserEventAction;

    .line 22
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "SETUP_ACCOUNT_FAILED"

    const-string v6, "3002"

    invoke-direct {v4, v5, v10, v6}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->SETUP_ACCOUNT_FAILED:Lcom/google/glass/logging/UserEventAction;

    .line 23
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "ACCOUNT_RELOGIN"

    const-string v6, "3003"

    invoke-direct {v4, v5, v11, v6}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->ACCOUNT_RELOGIN:Lcom/google/glass/logging/UserEventAction;

    .line 24
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "SHUTDOWN_IN_SETUP"

    const-string v6, "3004"

    invoke-direct {v4, v5, v12, v6}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->SHUTDOWN_IN_SETUP:Lcom/google/glass/logging/UserEventAction;

    .line 25
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BLUETOOTH_DISCOVERABLE"

    const/4 v6, 0x5

    const-string v7, "3014"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BLUETOOTH_DISCOVERABLE:Lcom/google/glass/logging/UserEventAction;

    .line 26
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HOME_ACTIVATED"

    const/4 v6, 0x6

    const-string v7, "3017"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HOME_ACTIVATED:Lcom/google/glass/logging/UserEventAction;

    .line 27
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HOME_DISMISSED"

    const/4 v6, 0x7

    const-string v7, "3018"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HOME_DISMISSED:Lcom/google/glass/logging/UserEventAction;

    .line 28
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "SCREEN_ON"

    const/16 v6, 0x8

    const-string v7, "3019"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    .line 29
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "SCREEN_ON_DURATION"

    const/16 v6, 0x9

    const-string v7, "3020"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->SCREEN_ON_DURATION:Lcom/google/glass/logging/UserEventAction;

    .line 30
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "USER_INITIATED_SCREEN_ON"

    const/16 v6, 0xa

    const-string v7, "3040"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    .line 31
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANDSFREE_VOICE_ACTION"

    const/16 v6, 0xb

    const-string v7, "3041"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANDSFREE_VOICE_ACTION:Lcom/google/glass/logging/UserEventAction;

    .line 32
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_STARTED"

    const/16 v6, 0xc

    const-string v7, "3021"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_STARTED:Lcom/google/glass/logging/UserEventAction;

    .line 33
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_RECOGNITION"

    const/16 v6, 0xd

    const-string v7, "3022"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

    .line 34
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_MAJEL_RESULT"

    const/16 v6, 0xe

    const-string v7, "3023"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_MAJEL_RESULT:Lcom/google/glass/logging/UserEventAction;

    .line 35
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_END_OF_SPEECH"

    const/16 v6, 0xf

    const-string v7, "3024"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_END_OF_SPEECH:Lcom/google/glass/logging/UserEventAction;

    .line 36
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_FIRST_RECOGNITION"

    const/16 v6, 0x10

    const-string v7, "3025"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_FIRST_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

    .line 37
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_ERROR"

    const/16 v6, 0x11

    const-string v7, "3026"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_ERROR:Lcom/google/glass/logging/UserEventAction;

    .line 38
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_DISMISS"

    const/16 v6, 0x12

    const-string v7, "3005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_DISMISS:Lcom/google/glass/logging/UserEventAction;

    .line 39
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_MESSAGE_DISMISS"

    const/16 v6, 0x13

    const-string v7, "3006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/logging/UserEventAction;

    .line 40
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_NO_ANSWER"

    const/16 v6, 0x14

    const-string v7, "3007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/logging/UserEventAction;

    .line 41
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_FROM_TIMELINE"

    const/16 v6, 0x15

    const-string v7, "3008"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/logging/UserEventAction;

    .line 42
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_SWIPE"

    const/16 v6, 0x16

    const-string v7, "3009"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_SWIPE:Lcom/google/glass/logging/UserEventAction;

    .line 43
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_SEARCH_NO_SPEECH_DETECTED"

    const/16 v6, 0x17

    const-string v7, "3010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_SPEECH_DETECTED:Lcom/google/glass/logging/UserEventAction;

    .line 44
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TIMELINE_ITEM_INSERTED"

    const/16 v6, 0x18

    const-string v7, "3027"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/logging/UserEventAction;

    .line 45
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TIMELINE_ITEM_SHARED"

    const/16 v6, 0x19

    const-string v7, "3028"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_ITEM_SHARED:Lcom/google/glass/logging/UserEventAction;

    .line 46
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "PHONE_CALL"

    const/16 v6, 0x1a

    const-string v7, "3029"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->PHONE_CALL:Lcom/google/glass/logging/UserEventAction;

    .line 47
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "DEVICE_STORAGE_BLOCK_USER_ACTION"

    const/16 v6, 0x1b

    const-string v7, "3120"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/logging/UserEventAction;

    .line 48
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VIEWED_BUNDLE"

    const/16 v6, 0x1c

    const-string v7, "3121"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VIEWED_BUNDLE:Lcom/google/glass/logging/UserEventAction;

    .line 49
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BATTERY_STATE"

    const/16 v6, 0x1d

    const-string v7, "3122"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BATTERY_STATE:Lcom/google/glass/logging/UserEventAction;

    .line 50
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TWO_FINGER_ZOOM_OUT"

    const/16 v6, 0x1e

    const-string v7, "3123"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TWO_FINGER_ZOOM_OUT:Lcom/google/glass/logging/UserEventAction;

    .line 51
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "PRESS_TO_SEARCH_DISMISSED"

    const/16 v6, 0x1f

    const-string v7, "3124"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/logging/UserEventAction;

    .line 54
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "WIFI_BARCODE_SCANNED"

    const/16 v6, 0x20

    const-string v7, "3012"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->WIFI_BARCODE_SCANNED:Lcom/google/glass/logging/UserEventAction;

    .line 55
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "WIFI_SCAN_RESULT_TAPPED"

    const/16 v6, 0x21

    const-string v7, "14001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/logging/UserEventAction;

    .line 56
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "WIFI_SETUP_VIA_COMPANION"

    const/16 v6, 0x22

    const-string v7, "14002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/logging/UserEventAction;

    .line 57
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "WIFI_CONNECTED"

    const/16 v6, 0x23

    const-string v7, "3013"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->WIFI_CONNECTED:Lcom/google/glass/logging/UserEventAction;

    .line 61
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "SEND_MESSAGE_INITIATED"

    const/16 v6, 0x24

    const-string v7, "3030"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/logging/UserEventAction;

    .line 62
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "SEND_MESSAGE_COMPLETED"

    const/16 v6, 0x25

    const-string v7, "3031"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    .line 63
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "REPLY_INITIATED"

    const/16 v6, 0x26

    const-string v7, "3032"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/logging/UserEventAction;

    .line 64
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "REPLY_COMPLETED"

    const/16 v6, 0x27

    const-string v7, "3033"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    .line 65
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "REPLY_ALL_INITIATED"

    const/16 v6, 0x28

    const-string v7, "3034"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/logging/UserEventAction;

    .line 66
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "REPLY_ALL_COMPLETED"

    const/16 v6, 0x29

    const-string v7, "3035"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->REPLY_ALL_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    .line 67
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "DELETE_INITIATED"

    const/16 v6, 0x2a

    const-string v7, "3036"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/logging/UserEventAction;

    .line 68
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "DELETE_COMPLETED"

    const/16 v6, 0x2b

    const-string v7, "3037"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->DELETE_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    .line 69
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "RETRY_REPLY"

    const/16 v6, 0x2c

    const-string v7, "3038"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->RETRY_REPLY:Lcom/google/glass/logging/UserEventAction;

    .line 72
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TIMELINE_DOWNSTREAM_SYNC_STARTED"

    const/16 v6, 0x2d

    const-string v7, "3050"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    .line 73
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TIMELINE_DOWNSTREAM_SYNC_FINISHED"

    const/16 v6, 0x2e

    const-string v7, "3051"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/logging/UserEventAction;

    .line 74
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TIMELINE_DOWNSTREAM_SYNC_BACKOFF"

    const/16 v6, 0x2f

    const-string v7, "3052"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    .line 75
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TIMELINE_UPSTREAM_SYNC_STARTED"

    const/16 v6, 0x30

    const-string v7, "3055"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    .line 76
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY"

    const/16 v6, 0x31

    const-string v7, "3056"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/logging/UserEventAction;

    .line 77
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR"

    const/16 v6, 0x32

    const-string v7, "3057"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/logging/UserEventAction;

    .line 78
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TIMELINE_UPSTREAM_SYNC_BACKOFF"

    const/16 v6, 0x33

    const-string v7, "3058"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    .line 79
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY"

    const/16 v6, 0x34

    const-string v7, "3059"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY:Lcom/google/glass/logging/UserEventAction;

    .line 80
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "RESUMABLE_UPLOADER_UPLOAD_STARTED"

    const/16 v6, 0x35

    const-string v7, "3060"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_STARTED:Lcom/google/glass/logging/UserEventAction;

    .line 81
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR"

    const/16 v6, 0x36

    const-string v7, "3061"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/logging/UserEventAction;

    .line 82
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR"

    const/16 v6, 0x37

    const-string v7, "3062"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/logging/UserEventAction;

    .line 83
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "RESUMABLE_UPLOADER_UPLOAD_RESUMED"

    const/16 v6, 0x38

    const-string v7, "3063"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RESUMED:Lcom/google/glass/logging/UserEventAction;

    .line 84
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "RESUMABLE_UPLOADER_UPLOAD_FINISHED"

    const/16 v6, 0x39

    const-string v7, "3064"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FINISHED:Lcom/google/glass/logging/UserEventAction;

    .line 85
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "ENTITY_SYNC_STARTED"

    const/16 v6, 0x3a

    const-string v7, "3070"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->ENTITY_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    .line 86
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "ENTITY_SYNC_FINISHED"

    const/16 v6, 0x3b

    const-string v7, "3071"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->ENTITY_SYNC_FINISHED:Lcom/google/glass/logging/UserEventAction;

    .line 87
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "ENTITY_SYNC_BACKOFF"

    const/16 v6, 0x3c

    const-string v7, "3072"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->ENTITY_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    .line 90
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "DON_DETECTOR_ENABLED"

    const/16 v6, 0x3d

    const-string v7, "3080"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->DON_DETECTOR_ENABLED:Lcom/google/glass/logging/UserEventAction;

    .line 91
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "DON_DETECTOR_DISABLED"

    const/16 v6, 0x3e

    const-string v7, "3081"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->DON_DETECTOR_DISABLED:Lcom/google/glass/logging/UserEventAction;

    .line 92
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "DONNED"

    const/16 v6, 0x3f

    const-string v7, "3082"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->DONNED:Lcom/google/glass/logging/UserEventAction;

    .line 93
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "DOFFED"

    const/16 v6, 0x40

    const-string v7, "3083"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->DOFFED:Lcom/google/glass/logging/UserEventAction;

    .line 96
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_MENU_COMMAND_SPOKEN"

    const/16 v6, 0x41

    const-string v7, "3090"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction;

    .line 97
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_MENU_COMMAND_TAPPED"

    const/16 v6, 0x42

    const-string v7, "3091"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/logging/UserEventAction;

    .line 98
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF"

    const/16 v6, 0x43

    const-string v7, "3092"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/logging/UserEventAction;

    .line 101
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BARCODE_SUCCESSFUL_SCAN"

    const/16 v6, 0x44

    const-string v7, "3100"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/logging/UserEventAction;

    .line 102
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BARCODE_FAILED_SCAN"

    const/16 v6, 0x45

    const-string v7, "3101"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BARCODE_FAILED_SCAN:Lcom/google/glass/logging/UserEventAction;

    .line 103
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BARCODE_PICTURE_SCAN"

    const/16 v6, 0x46

    const-string v7, "3102"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BARCODE_PICTURE_SCAN:Lcom/google/glass/logging/UserEventAction;

    .line 106
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "NAVIGATION_START"

    const/16 v6, 0x47

    const-string v7, "4001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->NAVIGATION_START:Lcom/google/glass/logging/UserEventAction;

    .line 107
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "NAVIGATION_END"

    const/16 v6, 0x48

    const-string v7, "4002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->NAVIGATION_END:Lcom/google/glass/logging/UserEventAction;

    .line 108
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "NAVIGATION_TRAVEL_MODE_CHANGE"

    const/16 v6, 0x49

    const-string v7, "4003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->NAVIGATION_TRAVEL_MODE_CHANGE:Lcom/google/glass/logging/UserEventAction;

    .line 111
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "RECORD_VIDEO_START"

    const/16 v6, 0x4a

    const-string v7, "4100"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->RECORD_VIDEO_START:Lcom/google/glass/logging/UserEventAction;

    .line 112
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "RECORD_VIDEO_END"

    const/16 v6, 0x4b

    const-string v7, "4101"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->RECORD_VIDEO_END:Lcom/google/glass/logging/UserEventAction;

    .line 115
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "PROTO_REQUEST_DISPATCHER_BATCH"

    const/16 v6, 0x4c

    const-string v7, "5000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/logging/UserEventAction;

    .line 116
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "COMPANION_CONNECTION"

    const/16 v6, 0x4d

    const-string v7, "5002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/logging/UserEventAction;

    .line 117
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "ANDROID_CHECK_IN"

    const/16 v6, 0x4e

    const-string v7, "5003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->ANDROID_CHECK_IN:Lcom/google/glass/logging/UserEventAction;

    .line 118
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "DEVICE_STORAGE_STATE_CHANGED"

    const/16 v6, 0x4f

    const-string v7, "5004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->DEVICE_STORAGE_STATE_CHANGED:Lcom/google/glass/logging/UserEventAction;

    .line 119
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "USER_EVENT_QUEUE_FULL"

    const/16 v6, 0x50

    const-string v7, "5005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/logging/UserEventAction;

    .line 120
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "PROTO_REQUEST_DISPATCHER_REQUEST_SIZE"

    const/16 v6, 0x51

    const-string v7, "5006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/logging/UserEventAction;

    .line 123
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_ERROR"

    const/16 v6, 0x52

    const-string v7, "6001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_ERROR:Lcom/google/glass/logging/UserEventAction;

    .line 124
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_ENTERED"

    const/16 v6, 0x53

    const-string v7, "6002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_ENTERED:Lcom/google/glass/logging/UserEventAction;

    .line 125
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_CREATED"

    const/16 v6, 0x54

    const-string v7, "6003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_CREATED:Lcom/google/glass/logging/UserEventAction;

    .line 126
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_CHAT_MESSAGE_RECEIVED"

    const/16 v6, 0x55

    const-string v7, "6004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_CHAT_MESSAGE_RECEIVED:Lcom/google/glass/logging/UserEventAction;

    .line 127
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_MUTE_REMOTE"

    const/16 v6, 0x56

    const-string v7, "6005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_MUTE_REMOTE:Lcom/google/glass/logging/UserEventAction;

    .line 128
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_MUTE_MY_VIDEO"

    const/16 v6, 0x57

    const-string v7, "6006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_MUTE_MY_VIDEO:Lcom/google/glass/logging/UserEventAction;

    .line 129
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_UNMUTE_MY_VIDEO"

    const/16 v6, 0x58

    const-string v7, "6007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_UNMUTE_MY_VIDEO:Lcom/google/glass/logging/UserEventAction;

    .line 130
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_MUTE_MY_AUDIO"

    const/16 v6, 0x59

    const-string v7, "6008"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_MUTE_MY_AUDIO:Lcom/google/glass/logging/UserEventAction;

    .line 131
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_UNMUTE_MY_AUDIO"

    const/16 v6, 0x5a

    const-string v7, "6009"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_UNMUTE_MY_AUDIO:Lcom/google/glass/logging/UserEventAction;

    .line 132
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_SET_PARTICIPANT_AUTO"

    const/16 v6, 0x5b

    const-string v7, "6010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_SET_PARTICIPANT_AUTO:Lcom/google/glass/logging/UserEventAction;

    .line 133
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_SET_PARTICIPANT_SPECIFIC"

    const/16 v6, 0x5c

    const-string v7, "6011"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_SET_PARTICIPANT_SPECIFIC:Lcom/google/glass/logging/UserEventAction;

    .line 134
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_INVITE"

    const/16 v6, 0x5d

    const-string v7, "6012"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_INVITE:Lcom/google/glass/logging/UserEventAction;

    .line 135
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_ENDED"

    const/16 v6, 0x5e

    const-string v7, "6013"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_ENDED:Lcom/google/glass/logging/UserEventAction;

    .line 136
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_WAITING_SCREEN_DISMISSED"

    const/16 v6, 0x5f

    const-string v7, "6014"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_WAITING_SCREEN_DISMISSED:Lcom/google/glass/logging/UserEventAction;

    .line 137
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_ENTERED_FROM_ACTIVE_CARD"

    const/16 v6, 0x60

    const-string v7, "6015"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_ENTERED_FROM_ACTIVE_CARD:Lcom/google/glass/logging/UserEventAction;

    .line 138
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_ENDED_FROM_ACTIVE_CARD"

    const/16 v6, 0x61

    const-string v7, "6016"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_ENDED_FROM_ACTIVE_CARD:Lcom/google/glass/logging/UserEventAction;

    .line 139
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HANGOUTS_INCOMING_HANGOUT"

    const/16 v6, 0x62

    const-string v7, "6017"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_INCOMING_HANGOUT:Lcom/google/glass/logging/UserEventAction;

    .line 142
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "WAKE_UP_DELAY"

    const/16 v6, 0x63

    const-string v7, "7001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->WAKE_UP_DELAY:Lcom/google/glass/logging/UserEventAction;

    .line 143
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "CAMERA_TIMINGS"

    const/16 v6, 0x64

    const-string v7, "7002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->CAMERA_TIMINGS:Lcom/google/glass/logging/UserEventAction;

    .line 144
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "UI_THREAD_QUEUE"

    const/16 v6, 0x65

    const-string v7, "7003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->UI_THREAD_QUEUE:Lcom/google/glass/logging/UserEventAction;

    .line 145
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "UI_TIME_BETWEEN_RENDERS"

    const/16 v6, 0x66

    const-string v7, "7004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/logging/UserEventAction;

    .line 146
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "UI_TIME_TO_RENDER"

    const/16 v6, 0x67

    const-string v7, "7005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->UI_TIME_TO_RENDER:Lcom/google/glass/logging/UserEventAction;

    .line 147
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "VIDEO_TIMINGS"

    const/16 v6, 0x68

    const-string v7, "7006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->VIDEO_TIMINGS:Lcom/google/glass/logging/UserEventAction;

    .line 150
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "ARE_YOU_THERE_DIALOG_SHOWN"

    const/16 v6, 0x69

    const-string v7, "8001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->ARE_YOU_THERE_DIALOG_SHOWN:Lcom/google/glass/logging/UserEventAction;

    .line 151
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "USER_IS_THERE"

    const/16 v6, 0x6a

    const-string v7, "8002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->USER_IS_THERE:Lcom/google/glass/logging/UserEventAction;

    .line 152
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "USER_IS_NOT_THERE"

    const/16 v6, 0x6b

    const-string v7, "8003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->USER_IS_NOT_THERE:Lcom/google/glass/logging/UserEventAction;

    .line 155
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "CONNECTIVITY_BT_PAIRED"

    const/16 v6, 0x6c

    const-string v7, "9001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_BT_PAIRED:Lcom/google/glass/logging/UserEventAction;

    .line 156
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "CONNECTIVITY_CHECKER"

    const/16 v6, 0x6d

    const-string v7, "9002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_CHECKER:Lcom/google/glass/logging/UserEventAction;

    .line 157
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "CONNECTIVITY_BROKEN_NETWORK"

    const/16 v6, 0x6e

    const-string v7, "9003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_BROKEN_NETWORK:Lcom/google/glass/logging/UserEventAction;

    .line 158
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "CONNECTIVITY_STATE_PERCENTAGE"

    const/16 v6, 0x6f

    const-string v7, "9004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_STATE_PERCENTAGE:Lcom/google/glass/logging/UserEventAction;

    .line 159
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "CONNECTIVITY_STATE_TIME"

    const/16 v6, 0x70

    const-string v7, "9005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_STATE_TIME:Lcom/google/glass/logging/UserEventAction;

    .line 160
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "CONNECTIVITY_STATE_SCREEN_ON"

    const/16 v6, 0x71

    const-string v7, "9006"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_STATE_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    .line 161
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL"

    const/16 v6, 0x72

    const-string v7, "9007"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL:Lcom/google/glass/logging/UserEventAction;

    .line 162
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL"

    const/16 v6, 0x73

    const-string v7, "9008"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL:Lcom/google/glass/logging/UserEventAction;

    .line 165
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HEAD_GESTURES_HEAD_WAKE_ENABLED"

    const/16 v6, 0x74

    const-string v7, "10000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/logging/UserEventAction;

    .line 166
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HEAD_GESTURES_HEAD_WAKE_DISABLED"

    const/16 v6, 0x75

    const-string v7, "10001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/logging/UserEventAction;

    .line 167
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING"

    const/16 v6, 0x76

    const-string v7, "10002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/logging/UserEventAction;

    .line 170
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "EYE_GESTURES_WINK_ENABLED"

    const/16 v6, 0x77

    const-string v7, "11000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/logging/UserEventAction;

    .line 171
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "EYE_GESTURES_WINK_DISABLED"

    const/16 v6, 0x78

    const-string v7, "11001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/logging/UserEventAction;

    .line 172
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "EYE_GESTURES_WINK_CALIBRATION_SUCCESS"

    const/16 v6, 0x79

    const-string v7, "11002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_SUCCESS:Lcom/google/glass/logging/UserEventAction;

    .line 173
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "EYE_GESTURES_WINK_CALIBRATION_FAILURE"

    const/16 v6, 0x7a

    const-string v7, "11003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_FAILURE:Lcom/google/glass/logging/UserEventAction;

    .line 174
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "EYE_GESTURES_WINK_TAKE_PHOTO"

    const/16 v6, 0x7b

    const-string v7, "11010"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/logging/UserEventAction;

    .line 177
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BROWSER_PAGE_REQUESTED_EXPLICIT"

    const/16 v6, 0x7c

    const-string v7, "12000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BROWSER_PAGE_REQUESTED_EXPLICIT:Lcom/google/glass/logging/UserEventAction;

    .line 178
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BROWSER_PAGE_REQUESTED_IMPLICIT"

    const/16 v6, 0x7d

    const-string v7, "12001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BROWSER_PAGE_REQUESTED_IMPLICIT:Lcom/google/glass/logging/UserEventAction;

    .line 179
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BROWSER_PAGE_LOADED"

    const/16 v6, 0x7e

    const-string v7, "12002"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BROWSER_PAGE_LOADED:Lcom/google/glass/logging/UserEventAction;

    .line 180
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BROWSER_MENU_OPTION"

    const/16 v6, 0x7f

    const-string v7, "12003"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BROWSER_MENU_OPTION:Lcom/google/glass/logging/UserEventAction;

    .line 181
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BROWSER_TWO_FINGER_ZOOM"

    const/16 v6, 0x80

    const-string v7, "12004"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BROWSER_TWO_FINGER_ZOOM:Lcom/google/glass/logging/UserEventAction;

    .line 182
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "BROWSER_ERROR"

    const/16 v6, 0x81

    const-string v7, "12005"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->BROWSER_ERROR:Lcom/google/glass/logging/UserEventAction;

    .line 185
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "GUEST_MODE_TURNED_ON"

    const/16 v6, 0x82

    const-string v7, "13000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->GUEST_MODE_TURNED_ON:Lcom/google/glass/logging/UserEventAction;

    .line 186
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "GUEST_MODE_TURNED_OFF"

    const/16 v6, 0x83

    const-string v7, "13001"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->GUEST_MODE_TURNED_OFF:Lcom/google/glass/logging/UserEventAction;

    .line 189
    new-instance v4, Lcom/google/glass/logging/UserEventAction;

    const-string v5, "COMPANION_SCREENCAST"

    const/16 v6, 0x84

    const-string v7, "14000"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/glass/logging/UserEventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->COMPANION_SCREENCAST:Lcom/google/glass/logging/UserEventAction;

    .line 19
    const/16 v4, 0x85

    new-array v4, v4, [Lcom/google/glass/logging/UserEventAction;

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->SETUP_BARCODE_SCANNED:Lcom/google/glass/logging/UserEventAction;

    aput-object v5, v4, v8

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->BUGREPORT_SENT:Lcom/google/glass/logging/UserEventAction;

    aput-object v5, v4, v9

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->SETUP_ACCOUNT_FAILED:Lcom/google/glass/logging/UserEventAction;

    aput-object v5, v4, v10

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->ACCOUNT_RELOGIN:Lcom/google/glass/logging/UserEventAction;

    aput-object v5, v4, v11

    sget-object v5, Lcom/google/glass/logging/UserEventAction;->SHUTDOWN_IN_SETUP:Lcom/google/glass/logging/UserEventAction;

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BLUETOOTH_DISCOVERABLE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HOME_ACTIVATED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HOME_DISMISSED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->SCREEN_ON_DURATION:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->USER_INITIATED_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANDSFREE_VOICE_ACTION:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_STARTED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_MAJEL_RESULT:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0xf

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_END_OF_SPEECH:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x10

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_FIRST_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x11

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_ERROR:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x12

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_DISMISS:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x13

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x14

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x15

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_FROM_TIMELINE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x16

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_SWIPE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x17

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_SPEECH_DETECTED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x18

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x19

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_ITEM_SHARED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->PHONE_CALL:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VIEWED_BUNDLE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BATTERY_STATE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TWO_FINGER_ZOOM_OUT:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->PRESS_TO_SEARCH_DISMISSED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x20

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->WIFI_BARCODE_SCANNED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x21

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->WIFI_SCAN_RESULT_TAPPED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x22

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->WIFI_SETUP_VIA_COMPANION:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x23

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->WIFI_CONNECTED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x24

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x25

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->SEND_MESSAGE_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x26

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x27

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->REPLY_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x28

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x29

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->REPLY_ALL_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->DELETE_COMPLETED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->RETRY_REPLY:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_FINISHED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_DOWNSTREAM_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x30

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x31

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x32

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_WITH_ERROR:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x33

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_UPSTREAM_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x34

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->TIMELINE_SYNC_TRIGGERED_WITH_NO_CONNECTIVITY:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x35

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_STARTED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x36

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x37

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x38

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_RESUMED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x39

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->RESUMABLE_UPLOADER_UPLOAD_FINISHED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->ENTITY_SYNC_STARTED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3b

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->ENTITY_SYNC_FINISHED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3c

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->ENTITY_SYNC_BACKOFF:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3d

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->DON_DETECTOR_ENABLED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3e

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->DON_DETECTOR_DISABLED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x3f

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->DONNED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x40

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->DOFFED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x41

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x42

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x43

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN_SCREEN_OFF:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x44

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x45

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BARCODE_FAILED_SCAN:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x46

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BARCODE_PICTURE_SCAN:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x47

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->NAVIGATION_START:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x48

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->NAVIGATION_END:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x49

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->NAVIGATION_TRAVEL_MODE_CHANGE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4a

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->RECORD_VIDEO_START:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4b

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->RECORD_VIDEO_END:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4c

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4d

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4e

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->ANDROID_CHECK_IN:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x4f

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->DEVICE_STORAGE_STATE_CHANGED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x50

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x51

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x52

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_ERROR:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x53

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_ENTERED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x54

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_CREATED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x55

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_CHAT_MESSAGE_RECEIVED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x56

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_MUTE_REMOTE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x57

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_MUTE_MY_VIDEO:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x58

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_UNMUTE_MY_VIDEO:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x59

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_MUTE_MY_AUDIO:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5a

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_UNMUTE_MY_AUDIO:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5b

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_SET_PARTICIPANT_AUTO:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5c

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_SET_PARTICIPANT_SPECIFIC:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5d

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_INVITE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5e

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_ENDED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x5f

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_WAITING_SCREEN_DISMISSED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x60

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_ENTERED_FROM_ACTIVE_CARD:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x61

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_ENDED_FROM_ACTIVE_CARD:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x62

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HANGOUTS_INCOMING_HANGOUT:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x63

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->WAKE_UP_DELAY:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x64

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->CAMERA_TIMINGS:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x65

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->UI_THREAD_QUEUE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x66

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x67

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->UI_TIME_TO_RENDER:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x68

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->VIDEO_TIMINGS:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x69

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->ARE_YOU_THERE_DIALOG_SHOWN:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6a

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->USER_IS_THERE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6b

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->USER_IS_NOT_THERE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6c

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_BT_PAIRED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6d

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_CHECKER:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6e

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_BROKEN_NETWORK:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x6f

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_STATE_PERCENTAGE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x70

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_STATE_TIME:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x71

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_STATE_SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x72

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x73

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->CONNECTIVITY_BT_PAIRING_REMOTE_CANCEL:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x74

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ENABLED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x75

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_DISABLED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x76

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x77

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x78

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_DISABLED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x79

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_SUCCESS:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7a

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_FAILURE:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7b

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->EYE_GESTURES_WINK_TAKE_PHOTO:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7c

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BROWSER_PAGE_REQUESTED_EXPLICIT:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7d

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BROWSER_PAGE_REQUESTED_IMPLICIT:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7e

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BROWSER_PAGE_LOADED:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x7f

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BROWSER_MENU_OPTION:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x80

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BROWSER_TWO_FINGER_ZOOM:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x81

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->BROWSER_ERROR:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x82

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->GUEST_MODE_TURNED_ON:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x83

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->GUEST_MODE_TURNED_OFF:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    const/16 v5, 0x84

    sget-object v6, Lcom/google/glass/logging/UserEventAction;->COMPANION_SCREENCAST:Lcom/google/glass/logging/UserEventAction;

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->$VALUES:[Lcom/google/glass/logging/UserEventAction;

    .line 427
    const-class v4, Lcom/google/glass/logging/UserEventAction;

    invoke-static {v4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 428
    .local v1, actionEnumSet:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/glass/logging/UserEventAction;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    .line 429
    .local v3, nameToActionBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/google/glass/logging/UserEventAction;>;"
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/UserEventAction;

    .line 430
    .local v0, actionEnum:Lcom/google/glass/logging/UserEventAction;
    iget-object v4, v0, Lcom/google/glass/logging/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 432
    .end local v0           #actionEnum:Lcom/google/glass/logging/UserEventAction;
    :cond_0
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    sput-object v4, Lcom/google/glass/logging/UserEventAction;->NAME_TO_ACTION:Lcom/google/common/collect/ImmutableMap;

    .line 433
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 421
    iput-object p3, p0, Lcom/google/glass/logging/UserEventAction;->action:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public static fromAction(Ljava/lang/String;)Lcom/google/glass/logging/UserEventAction;
    .locals 1
    .parameter "action"

    .prologue
    .line 440
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->NAME_TO_ACTION:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/UserEventAction;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/logging/UserEventAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/logging/UserEventAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/UserEventAction;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/logging/UserEventAction;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/logging/UserEventAction;->$VALUES:[Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v0}, [Lcom/google/glass/logging/UserEventAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/logging/UserEventAction;

    return-object v0
.end method

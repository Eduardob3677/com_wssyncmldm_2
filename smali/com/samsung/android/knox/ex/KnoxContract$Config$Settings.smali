.class public Lcom/samsung/android/knox/ex/KnoxContract$Config$Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/KnoxContract$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_URI_STRING:Ljava/lang/String; = "content://com.samsung.android.knox.sdk/config/settings"

.field public static final ID:Ljava/lang/String; = "settings"

.field public static final KEY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final KEY_HWKEY:Ljava/lang/String; = "hardware-key"

.field public static final KEY_INPUT_METHOD:Ljava/lang/String; = "input-method"

.field public static final KEY_NAVIBAR_BUTTON_ORDER:Ljava/lang/String; = "button-order"

.field public static final KEY_POWER_SAVING_MODE:Ljava/lang/String; = "power-saving-mode"

.field public static final KEY_SYSTEM_LOCALE:Ljava/lang/String; = "system-locale"

.field public static final KEY_TOUCH_SENSITIVITY:Ljava/lang/String; = "touch-sensitivity"

.field public static final KEY_WIFI_STATE:Ljava/lang/String; = "wifi-state"

.field public static final PARAM_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final PARAM_HWKEY_ACTION:Ljava/lang/String; = "action"

.field public static final PARAM_HWKEY_ACTION_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final PARAM_HWKEY_ACTION_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final PARAM_HWKEY_ACTION_COMPONENTNAME:Ljava/lang/String; = "component-name"

.field public static final PARAM_HWKEY_ACTION_INTENT:Ljava/lang/String; = "intent"

.field public static final PARAM_HWKEY_ACTIVITY_EVENT:Ljava/lang/String; = "event"

.field public static final PARAM_HWKEY_ACTIVITY_EVENT_DOUBLE_PRESS:Ljava/lang/String; = "double-press"

.field public static final PARAM_HWKEY_ACTIVITY_EVENT_LONG_PRESS:Ljava/lang/String; = "long-press"

.field public static final PARAM_HWKEY_ACTIVITY_EVENT_SHORT_PRESS:Ljava/lang/String; = "press"

.field public static final PARAM_HWKEY_BROADCAST_DEFAULT_INTENT_ACTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

.field public static final PARAM_HWKEY_BROADCAST_DEVICE_WIDE:Ljava/lang/String; = "device-wide"

.field public static final PARAM_HWKEY_BROADCAST_DISPATCH:Ljava/lang/String; = "dispatch"

.field public static final PARAM_HWKEY_BROADCAST_INTENT_EXTRA_KEY_ACTION_DOWN:I = 0x1

.field public static final PARAM_HWKEY_BROADCAST_INTENT_EXTRA_KEY_ACTION_UP:I = 0x2

.field public static final PARAM_HWKEY_BROADCAST_INTENT_EXTRA_KEY_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEY_CODE"

.field public static final PARAM_HWKEY_BROADCAST_INTENT_EXTRA_REPORT_TYPE_NEW:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

.field public static final PARAM_HWKEY_BROADCAST_TARGET_PACKAGE:Ljava/lang/String; = "target-package"

.field public static final PARAM_HWKEY_CODE:Ljava/lang/String; = "key-code"

.field public static final PARAM_HWKEY_GRAY_OUT:Ljava/lang/String; = "gray-out"

.field public static final PARAM_INPUT_METHOD:Ljava/lang/String; = "input-method"

.field public static final PARAM_INPUT_METHOD_FORCE:Ljava/lang/String; = "force"

.field public static final PARAM_LOCALE_COUNTRY:Ljava/lang/String; = "locale-country"

.field public static final PARAM_LOCALE_LANGUAGE:Ljava/lang/String; = "locale-language"

.field public static final PARAM_NAVIBAR_BUTTON_ORDER:Ljava/lang/String; = "button-order"

.field public static final PARAM_PASSWORD:Ljava/lang/String; = "password"

.field public static final PARAM_POWER_SAVING_MODE:Ljava/lang/String; = "power-saving-mode"

.field public static final PARAM_SSID:Ljava/lang/String; = "ssid"

.field public static final PARAM_STATE:Ljava/lang/String; = "state"

.field public static final PARAM_USERNAME:Ljava/lang/String; = "username"

.field public static final PARAM_USE_AUTO:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

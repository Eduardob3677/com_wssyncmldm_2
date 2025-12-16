.class public Lcom/samsung/android/knox/accounts/Account;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAGS_NOTIFY_NEW_MAIL:I = 0x1

.field public static final FLAGS_VIBRATE_ALWAYS:I = 0x2

.field public static final FLAGS_VIBRATE_WHEN_SILENT:I = 0x40


# instance fields
.field public compatibilityUuid:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;

.field public emailBodyTruncationSize:I

.field public emailNotificationVibrateAlways:Z

.field public emailRoamingBodyTruncationSize:I

.field public flags:I

.field public hostAuthKeyRecv:J

.field public hostAuthKeySend:J

.field public hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

.field public hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

.field public id:I

.field public isDefault:Z

.field public newMessageCount:I

.field public offPeakSyncSchedule:I

.field public peakDays:I

.field public peakEndMinute:I

.field public peakStartMinute:I

.field public peakSyncSchedule:I

.field public protocolVersion:Ljava/lang/String;

.field public ringtoneUri:Ljava/lang/String;

.field public roamingSyncSchedule:I

.field public securityFlags:I

.field public securitySyncKey:Ljava/lang/String;

.field public senderName:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public syncCalendar:Z

.field public syncCalendarAge:I

.field public syncContacts:Z

.field public syncInterval:I

.field public syncKey:Ljava/lang/String;

.field public syncLookback:I

.field public syncNotes:Z

.field public syncTasks:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

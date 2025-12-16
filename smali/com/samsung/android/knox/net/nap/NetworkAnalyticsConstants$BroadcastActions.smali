.class public Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$BroadcastActions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BroadcastActions"
.end annotation


# static fields
.field public static final ACTION_NPA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NPA_STATUS"

.field public static final EXTRA_PROFILE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PROFILE_NAME"

.field public static final EXTRA_REGISTRATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.REGISTRATION_STATUS"

.field public static final PROFILE_REGISTERED:I = 0x0

.field public static final PROFILE_UNREGISTERED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$BroadcastActions;->this$0:Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

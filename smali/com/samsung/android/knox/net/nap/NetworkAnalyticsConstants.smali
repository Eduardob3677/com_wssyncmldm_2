.class public Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$BroadcastActions;,
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$DataPoints;,
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$ErrorValues;,
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$ActivationState;,
        Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$JSONConstants;
    }
.end annotation


# static fields
.field public static final ALL_REGISTERED_PROFILES:Ljava/lang/String; = "ALL_REGISTERED_PROFILES_FOR_CLIENT"

.field public static final VENDOR_BIND_ACTION:Ljava/lang/String; = "_namonitoraction"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

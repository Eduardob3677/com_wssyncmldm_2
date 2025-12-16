.class public Lcom/samsung/android/knox/application/AppInfoLastUsage;
.super Lcom/samsung/android/knox/application/AppInfo;
.source "SourceFile"


# instance fields
.field public lastAppUsage:J

.field public lastLaunchTime:J

.field public launchCountPerMonth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/application/AppInfo;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

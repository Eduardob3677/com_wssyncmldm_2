.class public Lcom/samsung/android/knox/kiosk/KioskSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public airCommand:Z

.field public airView:Z

.field public blockedEdgeFunctions:I

.field public clearAllNotifications:Z

.field public hardwareKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public homeKey:Z

.field public multiWindow:Z

.field public navigationBar:Z

.field public settingsChanges:Z

.field public smartClip:Z

.field public statusBar:Z

.field public statusBarExpansion:Z

.field public systemBar:Z

.field public taskManager:Z

.field public wipeRecentTasks:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

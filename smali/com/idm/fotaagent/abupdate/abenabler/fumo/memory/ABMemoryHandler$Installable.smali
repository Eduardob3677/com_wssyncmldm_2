.class public Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler$Installable;
.super Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Installable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;-><init>(Ljava/lang/String;)V

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/fumo/memory/ABMemoryHandler;->checkStorage()V

    const-string p0, "available to apply update"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

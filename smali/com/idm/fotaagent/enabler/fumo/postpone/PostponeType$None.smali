.class public Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$None;
.super Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "None"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x26118acca934e136L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$None;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 0

    const-string p0, "should not be called"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void
.end method

.method public onAlarm(Ljava/lang/String;)V
    .locals 0

    const-string p0, "should not be called"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void
.end method

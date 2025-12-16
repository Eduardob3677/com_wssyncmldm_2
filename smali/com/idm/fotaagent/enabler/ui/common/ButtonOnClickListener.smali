.class public Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;
    }
.end annotation


# static fields
.field private static final MIN_CLICK_INTERVAL_IN_MILLIS:J = 0x96L


# instance fields
.field private final buttonAction:Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;

.field private lastClickTime:J


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;->lastClickTime:J

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;->buttonAction:Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;

    return-void
.end method

.method private isDuplicateClick()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;->lastClickTime:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;->lastClickTime:J

    const-wide/16 v0, 0x96

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "btn id: "

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;->isDuplicateClick()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "duplicate click - ignored"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    check-cast p1, Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", btn title: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener;->buttonAction:Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;->onClick()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

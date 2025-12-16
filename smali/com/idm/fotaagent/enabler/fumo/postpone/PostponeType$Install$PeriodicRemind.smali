.class public Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$PeriodicRemind;
.super Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeriodicRemind"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7d9e9c376a4eaee5L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->accept(Ljava/lang/String;)V

    return-void
.end method

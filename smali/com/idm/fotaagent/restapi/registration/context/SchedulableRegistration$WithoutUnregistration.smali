.class public Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithoutUnregistration;
.super Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithoutUnregistration"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x2d580e79

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public unregisterIfNeeded()V
    .locals 0

    return-void
.end method

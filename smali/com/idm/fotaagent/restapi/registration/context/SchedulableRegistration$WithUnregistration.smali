.class public Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithUnregistration;
.super Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithUnregistration"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x2d580e7b

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public unregisterIfNeeded()V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/restapi/registration/RegistrationHelper;->unregister()V

    return-void
.end method

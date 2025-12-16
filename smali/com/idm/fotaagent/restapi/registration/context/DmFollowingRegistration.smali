.class public Lcom/idm/fotaagent/restapi/registration/context/DmFollowingRegistration;
.super Lcom/idm/fotaagent/restapi/registration/context/Registration;
.source "SourceFile"


# instance fields
.field private final fallback:Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/restapi/registration/context/Registration;-><init>(Landroid/content/Context;Z)V

    new-instance p2, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithoutUnregistration;

    invoke-direct {p2, p1}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration$WithoutUnregistration;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/registration/context/DmFollowingRegistration;->fallback:Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;

    return-void
.end method


# virtual methods
.method public getFallback()Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/registration/context/DmFollowingRegistration;->fallback:Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;

    return-object p0
.end method

.method public unregisterIfNeeded()V
    .locals 0

    return-void
.end method

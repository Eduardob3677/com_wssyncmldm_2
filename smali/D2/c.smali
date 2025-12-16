.class public final synthetic LD2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    iput p1, p0, LD2/c;->a:I

    iput-wide p2, p0, LD2/c;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LD2/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, LD2/c;->b:J

    check-cast p1, Landroid/app/admin/SystemUpdatePolicy;

    invoke-static {v0, v1, p1}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->a(JLandroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-wide v0, p0, LD2/c;->b:J

    check-cast p1, Landroid/app/job/JobInfo$Builder;

    invoke-static {v0, v1, p1}, Lcom/idm/fotaagent/restapi/registration/context/SchedulableRegistration;->c(JLandroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-wide v0, p0, LD2/c;->b:J

    check-cast p1, Landroid/app/job/JobInfo$Builder;

    invoke-static {v0, v1, p1}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->b(JLandroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

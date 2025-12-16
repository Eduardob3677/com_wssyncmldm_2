.class public final synthetic Lcom/idm/fotaagent/enabler/ui/notification/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/b;->c:I

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/b;->d:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/b;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/b;->d:Landroid/app/PendingIntent;

    check-cast p1, Landroid/app/AlarmManager;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;->b(Landroid/app/PendingIntent;Landroid/app/AlarmManager;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->b(Landroid/app/PendingIntent;Landroid/app/AlarmManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

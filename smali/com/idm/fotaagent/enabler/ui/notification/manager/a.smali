.class public final synthetic Lcom/idm/fotaagent/enabler/ui/notification/manager/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    iput p3, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;->e:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;->e:Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/utils/storage/FileManager;

    invoke-static {p0, v0, p1}, Lcom/idm/fotaagent/utils/storage/FileManager;->a(Lcom/idm/fotaagent/utils/storage/FileManager;[Ljava/lang/String;Ljava/io/File;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;->e:Ljava/io/Serializable;

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    check-cast p1, Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;

    invoke-static {p0, v0, p1}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;->a(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTimer;Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Landroid/app/AlarmManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder$Decoder;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/a;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->e([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->b([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->d([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->c([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->a([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

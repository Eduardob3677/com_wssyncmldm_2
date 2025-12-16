.class public final synthetic Lcom/idm/fotaagent/database/room/data/repository/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/database/room/data/repository/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/database/room/data/repository/h;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->getDeserializedValue()Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->a(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->c(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->d(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->i(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->f(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->b(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->j(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->h(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->g(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->e(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

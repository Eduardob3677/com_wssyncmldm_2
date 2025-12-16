.class public final synthetic Lcom/idm/core/ddf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/idm/core/ddf/a;->a:I

    iput-object p1, p0, Lcom/idm/core/ddf/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/idm/core/ddf/a;->a:I

    iget-object p0, p0, Lcom/idm/core/ddf/a;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;->a(Ljava/lang/String;Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadDefaultValues;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lcom/idm/core/ddf/DDFTagType;

    invoke-static {p0, p1}, Lcom/idm/core/ddf/DDFTagType;->a(Ljava/lang/String;Lcom/idm/core/ddf/DDFTagType;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

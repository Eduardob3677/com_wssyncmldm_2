.class public final synthetic LG2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, LG2/a;->a:I

    iput-object p1, p0, LG2/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LG2/a;->a:I

    iget-object p0, p0, LG2/a;->b:Landroid/content/Context;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->a(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/idm/providers/mo/IDMMoDatabaseImpl;->a(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseImpl;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/idm/providers/mo/IDMMoDatabaseHelper;->g(Landroid/content/Context;)Lcom/idm/providers/mo/IDMMoDatabaseHelper;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

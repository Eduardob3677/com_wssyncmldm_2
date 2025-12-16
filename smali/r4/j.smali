.class public final Lr4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lc3/b;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc3/a;Lc3/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j;->c:Ljava/lang/Object;

    iput-object p2, p0, Lr4/j;->b:Lc3/b;

    return-void
.end method

.method public constructor <init>(Lr4/k;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr4/j;->a:I

    sget-object v0, Lr3/q;->g:Lr3/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j;->c:Ljava/lang/Object;

    iput-object v0, p0, Lr4/j;->b:Lc3/b;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lr4/j;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lr4/e;

    invoke-direct {v0, p0}, Lr4/e;-><init>(Lr4/j;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lr4/i;

    invoke-direct {v0, p0}, Lr4/i;-><init>(Lr4/j;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

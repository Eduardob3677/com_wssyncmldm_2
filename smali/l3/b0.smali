.class public final Ll3/b0;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/c0;


# direct methods
.method public synthetic constructor <init>(Ll3/c0;I)V
    .locals 0

    iput p2, p0, Ll3/b0;->d:I

    iput-object p1, p0, Ll3/b0;->e:Ll3/c0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ll3/b0;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ll3/b0;->e:Ll3/c0;

    invoke-virtual {p0}, Ll3/j0;->o()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ll3/a0;

    iget-object p0, p0, Ll3/b0;->e:Ll3/c0;

    invoke-direct {v0, p0}, Ll3/a0;-><init>(Ll3/c0;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

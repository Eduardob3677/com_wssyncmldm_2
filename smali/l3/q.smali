.class public final Ll3/q;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:Lr3/c;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lr3/c;I)V
    .locals 0

    iput-object p1, p0, Ll3/q;->d:Lr3/c;

    iput p2, p0, Ll3/q;->e:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll3/q;->d:Lr3/c;

    invoke-interface {v0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Ll3/q;->e:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "descriptor.valueParameters[i]"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lr3/I;

    return-object p0
.end method

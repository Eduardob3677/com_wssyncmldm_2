.class public final Lq3/i;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:Lr3/x;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lu3/C;)V
    .locals 0

    iput-object p1, p0, Lq3/i;->d:Lr3/x;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq3/i;->e:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lq3/h;

    iget-object v1, p0, Lq3/i;->d:Lr3/x;

    iget-boolean p0, p0, Lq3/i;->e:Z

    invoke-direct {v0, v1, p0}, Lq3/h;-><init>(Lr3/x;Z)V

    return-object v0
.end method

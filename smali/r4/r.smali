.class public final Lr4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/k;


# instance fields
.field public final a:Lr4/k;

.field public final b:Lc3/b;


# direct methods
.method public constructor <init>(Lr4/k;Lc3/b;)V
    .locals 1

    const-string v0, "transformer"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/r;->a:Lr4/k;

    iput-object p2, p0, Lr4/r;->b:Lc3/b;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lr4/q;

    invoke-direct {v0, p0}, Lr4/q;-><init>(Lr4/r;)V

    return-object v0
.end method

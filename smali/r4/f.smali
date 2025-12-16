.class public final Lr4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/k;


# instance fields
.field public final a:Lr4/k;

.field public final b:Z

.field public final c:Lc3/b;


# direct methods
.method public constructor <init>(Lr4/k;ZLc3/b;)V
    .locals 1

    const-string v0, "predicate"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f;->a:Lr4/k;

    iput-boolean p2, p0, Lr4/f;->b:Z

    iput-object p3, p0, Lr4/f;->c:Lc3/b;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lr4/e;

    invoke-direct {v0, p0}, Lr4/e;-><init>(Lr4/f;)V

    return-object v0
.end method

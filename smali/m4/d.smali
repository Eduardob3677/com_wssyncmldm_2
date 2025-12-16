.class public final Lm4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr3/Q;

.field public final b:Lh4/v;

.field public final c:Lh4/v;


# direct methods
.method public constructor <init>(Lr3/Q;Lh4/v;Lh4/v;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "inProjection"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "outProjection"

    invoke-static {v0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm4/d;->a:Lr3/Q;

    iput-object p2, p0, Lm4/d;->b:Lh4/v;

    iput-object p3, p0, Lm4/d;->c:Lh4/v;

    return-void
.end method

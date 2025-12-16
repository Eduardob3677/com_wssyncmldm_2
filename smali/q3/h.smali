.class public final Lq3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr3/x;

.field public final b:Z


# direct methods
.method public constructor <init>(Lr3/x;Z)V
    .locals 1

    const-string v0, "ownerModuleDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/h;->a:Lr3/x;

    iput-boolean p2, p0, Lq3/h;->b:Z

    return-void
.end method

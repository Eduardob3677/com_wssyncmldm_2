.class public final Lx3/z;
.super Lx3/B;
.source "SourceFile"

# interfaces
.implements LH3/d;


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/z;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lx3/z;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public final t()Ljava/util/Collection;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

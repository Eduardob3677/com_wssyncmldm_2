.class public abstract LS3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LQ3/c;

    const-string v1, "kotlin.internal.NoInfer"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v1, LQ3/c;

    const-string v2, "kotlin.internal.Exact"

    invoke-direct {v1, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    filled-new-array {v0, v1}, [LQ3/c;

    move-result-object v0

    invoke-static {v0}, LR2/B;->T([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LS3/l;->a:Ljava/util/Set;

    return-void
.end method

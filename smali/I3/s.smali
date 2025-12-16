.class public abstract LI3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls3/i;

.field public static final b:Ls3/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls3/i;

    sget-object v1, LA3/z;->p:LQ3/c;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Ls3/i;-><init>(ILjava/lang/Object;)V

    sput-object v0, LI3/s;->a:Ls3/i;

    new-instance v0, Ls3/i;

    sget-object v1, LA3/z;->q:LQ3/c;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v2, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Ls3/i;-><init>(ILjava/lang/Object;)V

    sput-object v0, LI3/s;->b:Ls3/i;

    return-void
.end method

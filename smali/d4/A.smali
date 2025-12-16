.class public abstract Ld4/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ3/c;

    const-string v1, "kotlin.coroutines.experimental.Continuation"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld4/A;->a:LQ3/c;

    return-void
.end method

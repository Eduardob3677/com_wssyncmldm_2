.class public abstract LQ3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ2/a;

    const-string v1, "[^\\p{L}\\p{Digit}]"

    invoke-direct {v0, v1}, LQ2/a;-><init>(Ljava/lang/String;)V

    sput-object v0, LQ3/g;->a:LQ2/a;

    return-void
.end method

.class public final Ln4/t;
.super Ln4/w;
.source "SourceFile"


# static fields
.field public static final c:Ln4/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln4/t;

    sget-object v1, Ln4/h;->k:Ln4/h;

    const-string v2, "Boolean"

    invoke-direct {v0, v2, v1}, Ln4/w;-><init>(Ljava/lang/String;Lc3/b;)V

    sput-object v0, Ln4/t;->c:Ln4/t;

    return-void
.end method

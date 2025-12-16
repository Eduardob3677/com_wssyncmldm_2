.class public final Ln4/u;
.super Ln4/w;
.source "SourceFile"


# static fields
.field public static final c:Ln4/u;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln4/u;

    sget-object v1, Ln4/h;->l:Ln4/h;

    const-string v2, "Int"

    invoke-direct {v0, v2, v1}, Ln4/w;-><init>(Ljava/lang/String;Lc3/b;)V

    sput-object v0, Ln4/u;->c:Ln4/u;

    return-void
.end method

.class public final Lr3/V;
.super Lr3/f0;
.source "SourceFile"


# static fields
.field public static final c:Lr3/V;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr3/V;

    const-string v1, "inherited"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr3/f0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lr3/V;->c:Lr3/V;

    return-void
.end method

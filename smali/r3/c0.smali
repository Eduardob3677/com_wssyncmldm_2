.class public final Lr3/c0;
.super Lr3/f0;
.source "SourceFile"


# static fields
.field public static final c:Lr3/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr3/c0;

    const-string v1, "public"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr3/f0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lr3/c0;->c:Lr3/c0;

    return-void
.end method

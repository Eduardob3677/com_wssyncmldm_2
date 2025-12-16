.class public final La1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:La1/c;


# instance fields
.field public final a:Lb1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LP1/e;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LP1/e;-><init>(I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, La1/c;

    invoke-direct {v2, v0, v1}, La1/c;-><init>(Lb1/l;Landroid/os/Looper;)V

    sput-object v2, La1/c;->b:La1/c;

    return-void
.end method

.method public constructor <init>(Lb1/l;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/c;->a:Lb1/l;

    return-void
.end method

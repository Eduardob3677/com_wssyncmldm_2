.class public final Lc1/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lc1/m;

.field public static final c:Lc1/s;


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc1/m;

    const-string v1, ""

    invoke-direct {v0, v1}, Lc1/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc1/s;->b:Lc1/m;

    new-instance v0, Lc1/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lc1/s;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sput-object v0, Lc1/s;->c:Lc1/s;

    return-void
.end method

.class public abstract Ll3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/v;

.field public static final b:Le/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ll3/b;->e:Ll3/b;

    sget v1, Ll3/a;->a:I

    new-instance v1, Le/v;

    invoke-direct {v1, v0}, Le/v;-><init>(Lc3/b;)V

    sput-object v1, Ll3/c;->a:Le/v;

    sget-object v0, Ll3/b;->f:Ll3/b;

    new-instance v1, Le/v;

    invoke-direct {v1, v0}, Le/v;-><init>(Lc3/b;)V

    sput-object v1, Ll3/c;->b:Le/v;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Ll3/z;
    .locals 3

    const-string v0, "jClass"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ll3/c;->a:Le/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Le/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, v0, Le/v;->c:Ljava/lang/Object;

    check-cast v0, Lc3/b;

    invoke-interface {v0, p0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :cond_1
    :goto_0
    const-string p0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>"

    invoke-static {p0, v2}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Ll3/z;

    return-object v2
.end method

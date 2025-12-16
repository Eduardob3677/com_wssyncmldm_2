.class public final Lcom/google/android/gms/internal/firebase-auth-api/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/firebase-auth-api/x;


# instance fields
.field public final a:Lcom/google/android/gms/internal/firebase-auth-api/n;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/x;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x;->c:Lcom/google/android/gms/internal/firebase-auth-api/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/x;->a:Lcom/google/android/gms/internal/firebase-auth-api/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/A;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/x;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/A;

    if-nez v1, :cond_a

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/x;->a:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/B;->a:Ljava/lang/Class;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/B;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/m;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/m;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/z;

    move-result-object p0

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/z;->d:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const-string v4, "Protobuf runtime is not correctly loaded."

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z;->a:Lcom/google/android/gms/internal/firebase-auth-api/U4;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/B;->d:Lcom/google/android/gms/internal/firebase-auth-api/E;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/i5;->a:Lcom/google/android/gms/internal/firebase-auth-api/h5;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/u;

    invoke-direct {v3, v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/u;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/U4;)V

    :goto_1
    move-object v1, v3

    goto :goto_3

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/B;->b:Lcom/google/android/gms/internal/firebase-auth-api/E;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/i5;->b:Lcom/google/android/gms/internal/firebase-auth-api/h5;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/u;

    invoke-direct {v3, v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/u;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/U4;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;->b()I

    move-result v1

    if-ne v1, v3, :cond_5

    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/w;->a:I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l;->b:Lcom/google/android/gms/internal/firebase-auth-api/k;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/B;->d:Lcom/google/android/gms/internal/firebase-auth-api/E;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/i5;->a:Lcom/google/android/gms/internal/firebase-auth-api/h5;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/q;->b:Lcom/google/android/gms/internal/firebase-auth-api/p;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/t;->F(Lcom/google/android/gms/internal/firebase-auth-api/z;Lcom/google/android/gms/internal/firebase-auth-api/l;Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/p;)Lcom/google/android/gms/internal/firebase-auth-api/t;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/w;->a:I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l;->b:Lcom/google/android/gms/internal/firebase-auth-api/k;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/B;->d:Lcom/google/android/gms/internal/firebase-auth-api/E;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/q;->b:Lcom/google/android/gms/internal/firebase-auth-api/p;

    invoke-static {p0, v1, v3, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/t;->F(Lcom/google/android/gms/internal/firebase-auth-api/z;Lcom/google/android/gms/internal/firebase-auth-api/l;Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/p;)Lcom/google/android/gms/internal/firebase-auth-api/t;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;->b()I

    move-result v1

    if-ne v1, v3, :cond_8

    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/w;->a:I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l;->a:Lcom/google/android/gms/internal/firebase-auth-api/j;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/B;->b:Lcom/google/android/gms/internal/firebase-auth-api/E;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/i5;->b:Lcom/google/android/gms/internal/firebase-auth-api/h5;

    if-eqz v3, :cond_7

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/q;->a:Lcom/google/android/gms/internal/firebase-auth-api/p;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/t;->F(Lcom/google/android/gms/internal/firebase-auth-api/z;Lcom/google/android/gms/internal/firebase-auth-api/l;Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/p;)Lcom/google/android/gms/internal/firebase-auth-api/t;

    move-result-object p0

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/w;->a:I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l;->a:Lcom/google/android/gms/internal/firebase-auth-api/j;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/B;->c:Lcom/google/android/gms/internal/firebase-auth-api/E;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/q;->a:Lcom/google/android/gms/internal/firebase-auth-api/p;

    invoke-static {p0, v1, v3, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/t;->F(Lcom/google/android/gms/internal/firebase-auth-api/z;Lcom/google/android/gms/internal/firebase-auth-api/l;Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/p;)Lcom/google/android/gms/internal/firebase-auth-api/t;

    move-result-object p0

    :goto_2
    move-object v1, p0

    :goto_3
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/A;

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    return-object p0

    :cond_a
    :goto_4
    return-object v1

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "messageType"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

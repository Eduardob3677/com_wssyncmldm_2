.class public final Ll3/q0;
.super Ll3/r0;
.source "SourceFile"


# instance fields
.field public final d:Lc3/a;

.field public volatile e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc3/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll3/q0;->e:Ljava/lang/Object;

    iput-object p1, p0, Ll3/q0;->d:Lc3/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ll3/q0;->e:Ljava/lang/Object;

    sget-object v1, Ll3/r0;->c:Le4/d;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ll3/q0;->d:Lc3/a;

    invoke-interface {v0}, Lc3/a;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Ll3/q0;->e:Ljava/lang/Object;

    return-object v0
.end method

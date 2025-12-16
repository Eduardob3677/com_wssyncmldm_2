.class public final Lm3/h;
.super Lm3/k;
.source "SourceFile"

# interfaces
.implements Lm3/d;


# instance fields
.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 1

    const-string v0, "field"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lm3/k;-><init>(Ljava/lang/reflect/Field;Z)V

    iput-object p1, p0, Lm3/h;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LW1/a;->j(Lm3/e;[Ljava/lang/Object;)V

    iget-object p1, p0, Lm3/t;->a:Ljava/lang/reflect/Member;

    check-cast p1, Ljava/lang/reflect/Field;

    iget-object p0, p0, Lm3/h;->e:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

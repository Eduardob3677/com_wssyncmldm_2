.class public final Ll3/g;
.super Ll3/r0;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/g;->d:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Ll3/g;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    const-string v0, "constructor.parameterTypes"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ll3/b;->h:Ll3/b;

    const-string v1, "<init>("

    const-string v2, ")V"

    invoke-static {p0, v1, v2, v0}, LR2/i;->s0([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lc3/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

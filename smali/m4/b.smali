.class public final Lm4/b;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final d:Lm4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm4/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld3/k;-><init>(I)V

    sput-object v0, Lm4/b;->d:Lm4/b;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lh4/Z;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    instance-of p0, p0, LU3/b;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

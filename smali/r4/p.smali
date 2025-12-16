.class public final synthetic Lr4/p;
.super Ld3/h;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final l:Lr4/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lr4/p;

    const-string v1, "iterator()Ljava/util/Iterator;"

    const/4 v2, 0x0

    const-class v3, Lr4/k;

    const-string v4, "iterator"

    invoke-direct {v0, v3, v4, v1, v2}, Ld3/h;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lr4/p;->l:Lr4/p;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr4/k;

    const-string p0, "p0"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr4/k;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

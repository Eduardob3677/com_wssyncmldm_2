.class public final Lq4/c;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/d;


# static fields
.field public static final d:Lq4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq4/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ld3/k;-><init>(I)V

    sput-object v0, Lq4/c;->d:Lq4/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method

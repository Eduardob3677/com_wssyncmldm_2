.class public final LT3/b;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/c;


# static fields
.field public static final d:LT3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LT3/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ld3/k;-><init>(I)V

    sput-object v0, LT3/b;->d:LT3/b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr3/j;

    check-cast p2, Lr3/j;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

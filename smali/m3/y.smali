.class public final Lm3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/e;


# static fields
.field public static final a:Lm3/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm3/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm3/y;->a:Lm3/y;

    return-void
.end method


# virtual methods
.method public final i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "call/callBy are not supported for this declaration."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n()Ljava/lang/reflect/Type;
    .locals 1

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v0, "TYPE"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method

.method public final bridge synthetic p()Ljava/lang/reflect/Member;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

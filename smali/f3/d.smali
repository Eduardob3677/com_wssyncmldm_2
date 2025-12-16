.class public abstract Lf3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lf3/c;

.field public static final d:Lf3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf3/c;

    invoke-direct {v0}, Lf3/d;-><init>()V

    sput-object v0, Lf3/d;->c:Lf3/c;

    sget-object v0, LX2/c;->a:LX2/b;

    invoke-virtual {v0}, LX2/b;->b()Lf3/d;

    move-result-object v0

    sput-object v0, Lf3/d;->d:Lf3/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.class public final LI3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LI3/e;


# instance fields
.field public final a:LI3/h;

.field public final b:LI3/f;

.field public final c:Z

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LI3/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LI3/e;-><init>(LI3/h;Z)V

    sput-object v0, LI3/e;->e:LI3/e;

    return-void
.end method

.method public constructor <init>(LI3/h;LI3/f;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3/e;->a:LI3/h;

    iput-object p2, p0, LI3/e;->b:LI3/f;

    iput-boolean p3, p0, LI3/e;->c:Z

    iput-boolean p4, p0, LI3/e;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(LI3/h;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, LI3/e;-><init>(LI3/h;LI3/f;ZZ)V

    return-void
.end method

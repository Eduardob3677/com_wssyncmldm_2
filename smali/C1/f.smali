.class public final LC1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LP1/a;


# instance fields
.field public final a:LP1/c;

.field public final b:LP1/c;

.field public final c:LP1/c;

.field public final d:LP1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LP1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP1/a;-><init>(F)V

    sput-object v0, LC1/f;->e:LP1/a;

    return-void
.end method

.method public constructor <init>(LP1/c;LP1/c;LP1/c;LP1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/f;->a:LP1/c;

    iput-object p3, p0, LC1/f;->b:LP1/c;

    iput-object p4, p0, LC1/f;->c:LP1/c;

    iput-object p2, p0, LC1/f;->d:LP1/c;

    return-void
.end method

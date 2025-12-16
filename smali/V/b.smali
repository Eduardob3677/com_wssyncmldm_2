.class public final LV/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lo/k;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ls2/c;

.field public d:LJ/r0;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LV/b;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/k;

    invoke-direct {v0}, Lo/k;-><init>()V

    iput-object v0, p0, LV/b;->a:Lo/k;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LV/b;->b:Ljava/util/ArrayList;

    new-instance v0, Ls2/c;

    invoke-direct {v0, p0}, Ls2/c;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LV/b;->c:Ls2/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, LV/b;->e:Z

    return-void
.end method

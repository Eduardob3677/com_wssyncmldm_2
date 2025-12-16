.class public final LP0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP0/d;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:LQ0/d;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:LM0/f;

.field public final d:LR0/c;

.field public final e:LS0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LL0/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LP0/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LM0/f;LQ0/d;LR0/c;LS0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP0/c;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LP0/c;->c:LM0/f;

    iput-object p3, p0, LP0/c;->a:LQ0/d;

    iput-object p4, p0, LP0/c;->d:LR0/c;

    iput-object p5, p0, LP0/c;->e:LS0/c;

    return-void
.end method

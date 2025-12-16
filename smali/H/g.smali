.class public abstract LH/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LB1/c;

.field public static final b:LB1/c;

.field public static final c:LB1/c;

.field public static final d:LB1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LB1/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB1/c;-><init>(LH/f;Z)V

    sput-object v0, LH/g;->a:LB1/c;

    new-instance v0, LB1/c;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, LB1/c;-><init>(LH/f;Z)V

    sput-object v0, LH/g;->b:LB1/c;

    new-instance v0, LB1/c;

    sget-object v1, LH/f;->a:LH/f;

    invoke-direct {v0, v1, v2}, LB1/c;-><init>(LH/f;Z)V

    sput-object v0, LH/g;->c:LB1/c;

    new-instance v0, LB1/c;

    invoke-direct {v0, v1, v3}, LB1/c;-><init>(LH/f;Z)V

    sput-object v0, LH/g;->d:LB1/c;

    return-void
.end method

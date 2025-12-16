.class public final LK3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ3/o;


# static fields
.field public static final k:Z

.field public static final l:Ljava/util/HashMap;


# instance fields
.field public c:[I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public i:LK3/a;

.field public j:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlin.ignore.old.metadata"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LK3/g;->k:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LK3/g;->l:Ljava/util/HashMap;

    new-instance v1, LQ3/c;

    const-string v2, "kotlin.jvm.internal.KotlinClass"

    invoke-direct {v1, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v1

    sget-object v2, LK3/a;->f:LK3/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LQ3/c;

    const-string v2, "kotlin.jvm.internal.KotlinFileFacade"

    invoke-direct {v1, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v1

    sget-object v2, LK3/a;->g:LK3/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LQ3/c;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClass"

    invoke-direct {v1, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v1

    sget-object v2, LK3/a;->i:LK3/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LQ3/c;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClassPart"

    invoke-direct {v1, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v1

    sget-object v2, LK3/a;->j:LK3/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LQ3/c;

    const-string v2, "kotlin.jvm.internal.KotlinSyntheticClass"

    invoke-direct {v1, v2}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v1

    sget-object v2, LK3/a;->h:LK3/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(LQ3/b;Lw3/a;)LJ3/m;
    .locals 1

    invoke-virtual {p1}, LQ3/b;->b()LQ3/c;

    move-result-object p2

    sget-object v0, LA3/z;->a:LQ3/c;

    invoke-virtual {p2, v0}, LQ3/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, LK3/e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LK3/e;-><init>(LK3/g;I)V

    return-object p1

    :cond_0
    sget-object v0, LA3/z;->o:LQ3/c;

    invoke-virtual {p2, v0}, LQ3/c;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, LK3/e;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LK3/e;-><init>(LK3/g;I)V

    return-object p1

    :cond_1
    sget-boolean p2, LK3/g;->k:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    return-object v0

    :cond_2
    iget-object p2, p0, LK3/g;->i:LK3/a;

    if-eqz p2, :cond_3

    return-object v0

    :cond_3
    sget-object p2, LK3/g;->l:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LK3/a;

    if-eqz p1, :cond_4

    iput-object p1, p0, LK3/g;->i:LK3/a;

    new-instance p1, LK3/e;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LK3/e;-><init>(LK3/g;I)V

    return-object p1

    :cond_4
    return-object v0
.end method

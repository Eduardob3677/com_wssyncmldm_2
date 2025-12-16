.class public abstract LA3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/c;

.field public static final b:LQ3/c;

.field public static final c:LQ3/c;

.field public static final d:LQ3/c;

.field public static final e:Ljava/util/Map;

.field public static final f:Ljava/util/LinkedHashMap;

.field public static final g:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LQ3/c;

    const-string v1, "javax.annotation.meta.TypeQualifierNickname"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v0, LA3/b;->a:LQ3/c;

    new-instance v0, LQ3/c;

    const-string v1, "javax.annotation.meta.TypeQualifier"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v0, LA3/b;->b:LQ3/c;

    new-instance v0, LQ3/c;

    const-string v1, "javax.annotation.meta.TypeQualifierDefault"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v0, LA3/b;->c:LQ3/c;

    new-instance v0, LQ3/c;

    const-string v1, "kotlin.annotations.jvm.UnderMigration"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v0, LA3/b;->d:LQ3/c;

    sget-object v0, LA3/a;->f:LA3/a;

    sget-object v1, LA3/a;->d:LA3/a;

    sget-object v2, LA3/a;->e:LA3/a;

    sget-object v3, LA3/a;->h:LA3/a;

    sget-object v4, LA3/a;->g:LA3/a;

    filled-new-array {v0, v1, v2, v3, v4}, [LA3/a;

    move-result-object v0

    invoke-static {v0}, LR2/n;->y0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, LA3/A;->c:LQ3/c;

    new-instance v3, LA3/o;

    new-instance v4, LI3/i;

    sget-object v5, LI3/h;->e:LI3/h;

    invoke-direct {v4, v5}, LI3/i;-><init>(LI3/h;)V

    const/4 v6, 0x0

    invoke-direct {v3, v4, v0, v6}, LA3/o;-><init>(LI3/i;Ljava/util/Collection;Z)V

    new-instance v4, LQ2/e;

    invoke-direct {v4, v1, v3}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, LA3/A;->f:LQ3/c;

    new-instance v3, LA3/o;

    new-instance v7, LI3/i;

    invoke-direct {v7, v5}, LI3/i;-><init>(LI3/h;)V

    invoke-direct {v3, v7, v0, v6}, LA3/o;-><init>(LI3/i;Ljava/util/Collection;Z)V

    new-instance v0, LQ2/e;

    invoke-direct {v0, v1, v3}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v0}, [LQ2/e;

    move-result-object v0

    invoke-static {v0}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LA3/b;->e:Ljava/util/Map;

    new-instance v1, LQ3/c;

    const-string v3, "javax.annotation.ParametersAreNullableByDefault"

    invoke-direct {v1, v3}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v3, LA3/o;

    new-instance v4, LI3/i;

    sget-object v6, LI3/h;->d:LI3/h;

    invoke-direct {v4, v6}, LI3/i;-><init>(LI3/h;)V

    invoke-static {v2}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v6}, LA3/o;-><init>(LI3/i;Ljava/util/Collection;)V

    new-instance v4, LQ2/e;

    invoke-direct {v4, v1, v3}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, LQ3/c;

    const-string v3, "javax.annotation.ParametersAreNonnullByDefault"

    invoke-direct {v1, v3}, LQ3/c;-><init>(Ljava/lang/String;)V

    new-instance v3, LA3/o;

    new-instance v6, LI3/i;

    invoke-direct {v6, v5}, LI3/i;-><init>(LI3/h;)V

    invoke-static {v2}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v6, v2}, LA3/o;-><init>(LI3/i;Ljava/util/Collection;)V

    new-instance v2, LQ2/e;

    invoke-direct {v2, v1, v3}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v2}, [LQ2/e;

    move-result-object v1

    invoke-static {v1}, LR2/z;->A1([LQ2/e;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    sput-object v2, LA3/b;->f:Ljava/util/LinkedHashMap;

    sget-object v0, LA3/A;->h:LQ3/c;

    sget-object v1, LA3/A;->i:LQ3/c;

    filled-new-array {v0, v1}, [LQ3/c;

    move-result-object v0

    invoke-static {v0}, LR2/B;->T([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LA3/b;->g:Ljava/util/Set;

    return-void
.end method

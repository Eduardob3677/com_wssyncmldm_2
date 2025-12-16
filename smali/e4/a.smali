.class public final Le4/a;
.super Lc4/a;
.source "SourceFile"


# static fields
.field public static final q:Le4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v14, Le4/a;

    new-instance v1, LR3/i;

    invoke-direct {v1}, LR3/i;-><init>()V

    invoke-static {v1}, LM3/b;->a(LR3/i;)V

    sget-object v2, LM3/b;->a:LR3/p;

    const-string v0, "packageFqName"

    invoke-static {v0, v2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, LM3/b;->c:LR3/p;

    const-string v0, "constructorAnnotation"

    invoke-static {v0, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, LM3/b;->b:LR3/p;

    const-string v0, "classAnnotation"

    invoke-static {v0, v4}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, LM3/b;->d:LR3/p;

    const-string v0, "functionAnnotation"

    invoke-static {v0, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, LM3/b;->e:LR3/p;

    const-string v0, "propertyAnnotation"

    invoke-static {v0, v6}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v7, LM3/b;->f:LR3/p;

    const-string v0, "propertyGetterAnnotation"

    invoke-static {v0, v7}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, LM3/b;->g:LR3/p;

    const-string v0, "propertySetterAnnotation"

    invoke-static {v0, v8}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, LM3/b;->i:LR3/p;

    const-string v0, "enumEntryAnnotation"

    invoke-static {v0, v9}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v10, LM3/b;->h:LR3/p;

    const-string v0, "compileTimeValue"

    invoke-static {v0, v10}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v11, LM3/b;->j:LR3/p;

    const-string v0, "parameterAnnotation"

    invoke-static {v0, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v12, LM3/b;->k:LR3/p;

    const-string v0, "typeAnnotation"

    invoke-static {v0, v12}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v13, LM3/b;->l:LR3/p;

    const-string v0, "typeParameterAnnotation"

    invoke-static {v0, v13}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lc4/a;-><init>(LR3/i;LR3/p;LR3/p;LR3/p;LR3/p;LR3/p;LR3/p;LR3/p;LR3/p;LR3/p;LR3/p;LR3/p;LR3/p;)V

    sput-object v14, Le4/a;->q:Le4/a;

    return-void
.end method

.method public static a(LQ3/c;)Ljava/lang/String;
    .locals 4

    const-string v0, "fqName"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-static {v1, v2, v3}, Ls4/h;->q(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LQ3/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "default-package"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LQ3/c;->f()LQ3/f;

    move-result-object p0

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "fqName.shortName().asString()"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v1, ".kotlin_builtins"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

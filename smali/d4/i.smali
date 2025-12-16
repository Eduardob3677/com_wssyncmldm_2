.class public final Ld4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg4/o;

.field public final b:Lr3/x;

.field public final c:Ld4/j;

.field public final d:Ld4/e;

.field public final e:Ld4/a;

.field public final f:Lr3/D;

.field public final g:Ld4/j;

.field public final h:Ld4/k;

.field public final i:Lz3/a;

.field public final j:Ld4/l;

.field public final k:Ljava/lang/Iterable;

.field public final l:Lcom/google/firebase/messaging/p;

.field public final m:Ld4/j;

.field public final n:Lt3/b;

.field public final o:Lt3/d;

.field public final p:LR3/i;

.field public final q:Li4/k;

.field public final r:Lt3/a;

.field public final s:Ljava/util/List;

.field public final t:Ld4/g;


# direct methods
.method public constructor <init>(Lg4/o;Lr3/x;Ld4/e;Ld4/a;Lr3/D;Ld4/k;Ld4/l;Ljava/lang/Iterable;Lcom/google/firebase/messaging/p;Lt3/b;Lt3/d;LR3/i;Li4/l;Le4/d;Ljava/util/List;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    sget-object v7, Ld4/j;->b:Ld4/j;

    sget-object v8, Ld4/j;->d:Ld4/j;

    sget-object v9, Lz3/a;->a:Lz3/a;

    sget-object v10, Ld4/h;->a:Ld4/j;

    const/high16 v11, 0x10000

    and-int v11, p16, v11

    if-eqz v11, :cond_0

    sget-object v11, Li4/k;->b:Li4/j;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Li4/j;->b:Li4/l;

    goto :goto_0

    :cond_0
    move-object/from16 v11, p13

    :goto_0
    sget-object v12, Lt3/a;->e:Lt3/a;

    const/high16 v13, 0x80000

    and-int v13, p16, v13

    if-eqz v13, :cond_1

    sget-object v13, Lh4/l;->a:Lh4/l;

    invoke-static {v13}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    goto :goto_1

    :cond_1
    move-object/from16 v13, p15

    :goto_1
    const-string v14, "storageManager"

    invoke-static {v14, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "moduleDescriptor"

    invoke-static {v14, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "fictitiousClassDescriptorFactories"

    invoke-static {v14, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "additionalClassPartsProvider"

    invoke-static {v14, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "platformDependentDeclarationFilter"

    invoke-static {v14, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "extensionRegistryLite"

    invoke-static {v14, v6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "kotlinTypeChecker"

    invoke-static {v14, v11}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "typeAttributeTranslators"

    invoke-static {v14, v13}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ld4/i;->a:Lg4/o;

    iput-object v2, v0, Ld4/i;->b:Lr3/x;

    iput-object v7, v0, Ld4/i;->c:Ld4/j;

    move-object/from16 v1, p3

    iput-object v1, v0, Ld4/i;->d:Ld4/e;

    move-object/from16 v1, p4

    iput-object v1, v0, Ld4/i;->e:Ld4/a;

    move-object/from16 v1, p5

    iput-object v1, v0, Ld4/i;->f:Lr3/D;

    iput-object v8, v0, Ld4/i;->g:Ld4/j;

    move-object/from16 v1, p6

    iput-object v1, v0, Ld4/i;->h:Ld4/k;

    iput-object v9, v0, Ld4/i;->i:Lz3/a;

    move-object/from16 v1, p7

    iput-object v1, v0, Ld4/i;->j:Ld4/l;

    iput-object v3, v0, Ld4/i;->k:Ljava/lang/Iterable;

    move-object/from16 v1, p9

    iput-object v1, v0, Ld4/i;->l:Lcom/google/firebase/messaging/p;

    iput-object v10, v0, Ld4/i;->m:Ld4/j;

    iput-object v4, v0, Ld4/i;->n:Lt3/b;

    iput-object v5, v0, Ld4/i;->o:Lt3/d;

    iput-object v6, v0, Ld4/i;->p:LR3/i;

    iput-object v11, v0, Ld4/i;->q:Li4/k;

    iput-object v12, v0, Ld4/i;->r:Lt3/a;

    iput-object v13, v0, Ld4/i;->s:Ljava/util/List;

    new-instance v1, Ld4/g;

    invoke-direct {v1, p0}, Ld4/g;-><init>(Ld4/i;)V

    iput-object v1, v0, Ld4/i;->t:Ld4/g;

    return-void
.end method


# virtual methods
.method public final a(Lr3/C;LN3/f;Ls2/c;LN3/g;LN3/a;Lf4/j;)Lcom/google/android/gms/internal/firebase-auth-api/G4;
    .locals 11

    const-string v0, "descriptor"

    move-object v4, p1

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nameResolver"

    move-object v3, p2

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "metadataVersion"

    move-object/from16 v7, p5

    invoke-static {v0, v7}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    sget-object v10, LR2/u;->c:LR2/u;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/G4;-><init>(Ld4/i;LN3/f;Lr3/j;Ls2/c;LN3/g;LN3/a;Lf4/j;LJ3/c;Ljava/util/List;)V

    return-object v0
.end method

.method public final b(LQ3/b;)Lr3/e;
    .locals 1

    const-string v0, "classId"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ld4/g;->c:Ljava/util/Set;

    const/4 v0, 0x0

    iget-object p0, p0, Ld4/i;->t:Ld4/g;

    invoke-virtual {p0, p1, v0}, Ld4/g;->a(LQ3/b;Ld4/d;)Lr3/e;

    move-result-object p0

    return-object p0
.end method

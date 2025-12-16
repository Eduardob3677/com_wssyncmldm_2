.class public final LD3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg4/o;

.field public final b:Lc1/w;

.field public final c:Le/v;

.field public final d:LJ3/f;

.field public final e:LB3/j;

.field public final f:Ld4/k;

.field public final g:LB3/j;

.field public final h:LB3/j;

.field public final i:Le4/d;

.field public final j:Lw3/d;

.field public final k:Ls2/c;

.field public final l:LJ3/g;

.field public final m:Lr3/O;

.field public final n:Lz3/a;

.field public final o:Lr3/x;

.field public final p:Lo3/l;

.field public final q:LA3/c;

.field public final r:Ls2/c;

.field public final s:LA3/n;

.field public final t:LD3/b;

.field public final u:Li4/k;

.field public final v:LA3/v;

.field public final w:LJ3/g;

.field public final x:LY3/e;


# direct methods
.method public constructor <init>(Lg4/o;Lc1/w;Le/v;LJ3/f;LB3/j;Ld4/k;LB3/j;Le4/d;Lw3/d;Ls2/c;LJ3/g;Lr3/O;Lz3/a;Lr3/x;Lo3/l;LA3/c;Ls2/c;LA3/n;LD3/b;Li4/k;LA3/v;LJ3/g;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    sget-object v0, LB3/j;->b:LB3/j;

    sget-object v16, LY3/e;->a:LY3/d;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v0

    const-string v0, "storageManager"

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "finder"

    invoke-static {v0, v2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {v0, v3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {v0, v4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "signaturePropagator"

    invoke-static {v0, v5}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "errorReporter"

    invoke-static {v0, v6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "javaPropertyInitializerEvaluator"

    invoke-static {v0, v7}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "samConversionResolver"

    invoke-static {v0, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "sourceElementFactory"

    invoke-static {v0, v9}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "moduleClassResolver"

    invoke-static {v0, v10}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "packagePartProvider"

    invoke-static {v0, v11}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "supertypeLoopChecker"

    invoke-static {v0, v12}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "lookupTracker"

    invoke-static {v0, v13}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "module"

    invoke-static {v0, v14}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "reflectionTypes"

    invoke-static {v0, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "annotationTypeQualifierResolver"

    move-object/from16 v15, p16

    move-object/from16 v14, v16

    invoke-static {v0, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "signatureEnhancement"

    move-object/from16 v15, p17

    invoke-static {v0, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "javaClassesTracker"

    move-object/from16 v15, p18

    invoke-static {v0, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "settings"

    move-object/from16 v15, p19

    invoke-static {v0, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p20

    invoke-static {v0, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "javaTypeEnhancementState"

    move-object/from16 v15, p21

    invoke-static {v0, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "javaModuleResolver"

    move-object/from16 v15, p22

    invoke-static {v0, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "syntheticPartsProvider"

    sget-object v15, LY3/d;->b:LY3/a;

    invoke-static {v0, v15}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v16, v15

    move-object/from16 v15, p16

    iput-object v1, v0, LD3/a;->a:Lg4/o;

    iput-object v2, v0, LD3/a;->b:Lc1/w;

    iput-object v3, v0, LD3/a;->c:Le/v;

    iput-object v4, v0, LD3/a;->d:LJ3/f;

    iput-object v5, v0, LD3/a;->e:LB3/j;

    iput-object v6, v0, LD3/a;->f:Ld4/k;

    iput-object v14, v0, LD3/a;->g:LB3/j;

    iput-object v7, v0, LD3/a;->h:LB3/j;

    iput-object v8, v0, LD3/a;->i:Le4/d;

    iput-object v9, v0, LD3/a;->j:Lw3/d;

    iput-object v10, v0, LD3/a;->k:Ls2/c;

    iput-object v11, v0, LD3/a;->l:LJ3/g;

    iput-object v12, v0, LD3/a;->m:Lr3/O;

    iput-object v13, v0, LD3/a;->n:Lz3/a;

    move-object/from16 v1, p14

    iput-object v1, v0, LD3/a;->o:Lr3/x;

    move-object/from16 v1, p15

    iput-object v1, v0, LD3/a;->p:Lo3/l;

    iput-object v15, v0, LD3/a;->q:LA3/c;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, LD3/a;->r:Ls2/c;

    iput-object v2, v0, LD3/a;->s:LA3/n;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, LD3/a;->t:LD3/b;

    iput-object v2, v0, LD3/a;->u:Li4/k;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, LD3/a;->v:LA3/v;

    iput-object v2, v0, LD3/a;->w:LJ3/g;

    move-object/from16 v1, v16

    iput-object v1, v0, LD3/a;->x:LY3/e;

    return-void
.end method

.class public final enum LS3/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/Set;

.field public static final e:Ljava/util/Set;

.field public static final enum f:LS3/h;

.field public static final enum g:LS3/h;

.field public static final enum h:LS3/h;

.field public static final enum i:LS3/h;

.field public static final enum j:LS3/h;

.field public static final enum k:LS3/h;

.field public static final enum l:LS3/h;

.field public static final enum m:LS3/h;

.field public static final enum n:LS3/h;

.field public static final enum o:LS3/h;

.field public static final enum p:LS3/h;

.field public static final enum q:LS3/h;

.field public static final enum r:LS3/h;

.field public static final enum s:LS3/h;

.field public static final synthetic t:[LS3/h;


# instance fields
.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, LS3/h;

    const-string v1, "VISIBILITY"

    const/4 v14, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v14, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LS3/h;->f:LS3/h;

    new-instance v1, LS3/h;

    const-string v3, "MODALITY"

    invoke-direct {v1, v3, v2, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, LS3/h;->g:LS3/h;

    new-instance v3, LS3/h;

    const-string v4, "OVERRIDE"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, LS3/h;->h:LS3/h;

    new-instance v4, LS3/h;

    const-string v5, "ANNOTATIONS"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v14}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, LS3/h;->i:LS3/h;

    new-instance v5, LS3/h;

    const-string v6, "INNER"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, LS3/h;->j:LS3/h;

    new-instance v6, LS3/h;

    const-string v7, "MEMBER_KIND"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, LS3/h;->k:LS3/h;

    new-instance v7, LS3/h;

    const-string v8, "DATA"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, LS3/h;->l:LS3/h;

    new-instance v8, LS3/h;

    const-string v9, "INLINE"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, LS3/h;->m:LS3/h;

    new-instance v9, LS3/h;

    const-string v10, "EXPECT"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, LS3/h;->n:LS3/h;

    new-instance v10, LS3/h;

    const-string v11, "ACTUAL"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, LS3/h;->o:LS3/h;

    new-instance v11, LS3/h;

    const-string v12, "CONST"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, LS3/h;->p:LS3/h;

    new-instance v12, LS3/h;

    const-string v13, "LATEINIT"

    const/16 v15, 0xb

    invoke-direct {v12, v13, v15, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, LS3/h;->q:LS3/h;

    new-instance v13, LS3/h;

    const-string v15, "FUN"

    const/16 v14, 0xc

    invoke-direct {v13, v15, v14, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, LS3/h;->r:LS3/h;

    new-instance v14, LS3/h;

    const-string v15, "VALUE"

    move-object/from16 v16, v13

    const/16 v13, 0xd

    invoke-direct {v14, v15, v13, v2}, LS3/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, LS3/h;->s:LS3/h;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move-object v13, v14

    filled-new-array/range {v0 .. v13}, [LS3/h;

    move-result-object v0

    sput-object v0, LS3/h;->t:[LS3/h;

    invoke-static {}, LS3/h;->values()[LS3/h;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v2, :cond_1

    aget-object v3, v0, v14

    iget-boolean v4, v3, LS3/h;->c:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, LR2/m;->j1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LS3/h;->d:Ljava/util/Set;

    invoke-static {}, LS3/h;->values()[LS3/h;

    move-result-object v0

    invoke-static {v0}, LR2/i;->x0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LS3/h;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, LS3/h;->c:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LS3/h;
    .locals 1

    const-class v0, LS3/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LS3/h;

    return-object p0
.end method

.method public static values()[LS3/h;
    .locals 1

    sget-object v0, LS3/h;->t:[LS3/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS3/h;

    return-object v0
.end method

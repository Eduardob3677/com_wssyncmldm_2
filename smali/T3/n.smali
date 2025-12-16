.class public final LT3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/List;

.field public static final d:LT3/n;

.field public static final e:LT3/c;


# instance fields
.field public final a:Li4/f;

.field public final b:Li4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LT3/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-static {v0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LT3/n;->c:Ljava/util/List;

    new-instance v0, LT3/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LT3/n;->e:LT3/c;

    new-instance v1, LT3/n;

    invoke-direct {v1, v0}, LT3/n;-><init>(Li4/c;)V

    sput-object v1, LT3/n;->d:LT3/n;

    return-void
.end method

.method public constructor <init>(Li4/c;)V
    .locals 1

    sget-object v0, Li4/f;->a:Li4/f;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT3/n;->b:Li4/c;

    iput-object v0, p0, LT3/n;->a:Li4/f;

    return-void

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, LT3/n;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .locals 25

    move/from16 v0, p0

    const/16 v1, 0x2d

    const/16 v2, 0x2c

    const/16 v3, 0x67

    const/16 v4, 0x62

    const/16 v5, 0x5f

    const/16 v6, 0x15

    const/16 v7, 0x10

    const/16 v8, 0xc

    const/16 v9, 0xb

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const-string v10, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v10, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v11, 0x2

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    const/4 v12, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v12, v11

    :goto_1
    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil"

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_8

    :pswitch_2
    const-string v15, "kotlinTypeRefiner"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_3
    const-string v15, "memberDescriptor"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_4
    const-string v15, "onConflict"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_5
    const-string v15, "extractFrom"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_6
    const-string v15, "overrider"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_7
    const-string v15, "toFilter"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_8
    const-string v15, "classModality"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_9
    const-string v15, "descriptorByHandle"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_a
    const-string v15, "overridables"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_b
    const-string v15, "bReturnType"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_c
    const-string v15, "aReturnType"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_d
    const-string v15, "descriptors"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_e
    const-string v15, "candidate"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_f
    const-string v15, "b"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_10
    const-string v15, "a"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_11
    const-string v15, "notOverridden"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_12
    const-string v15, "descriptorsFromSuper"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_13
    const-string v15, "fromCurrent"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_14
    const-string v15, "fromSuper"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_15
    const-string v15, "overriding"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_16
    const-string v15, "strategy"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_17
    const-string v15, "current"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_18
    const-string v15, "membersFromCurrent"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_19
    const-string v15, "membersFromSupertypes"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_1a
    const-string v15, "name"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_1b
    const-string v15, "subTypeParameter"

    aput-object v15, v12, v14

    goto/16 :goto_2

    :pswitch_1c
    const-string v15, "superTypeParameter"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_1d
    const-string v15, "typeCheckerState"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_1e
    const-string v15, "typeInSub"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_1f
    const-string v15, "typeInSuper"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_20
    const-string v15, "secondParameters"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_21
    const-string v15, "firstParameters"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_22
    const-string v15, "subDescriptor"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_23
    const-string v15, "superDescriptor"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_24
    const-string v15, "result"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_25
    const-string v15, "descriptor"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_26
    const-string v15, "g"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_27
    const-string v15, "f"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_28
    aput-object v13, v12, v14

    goto :goto_2

    :pswitch_29
    const-string v15, "transformFirst"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_2a
    const-string v15, "candidateSet"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_2b
    const-string v15, "axioms"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_2c
    const-string v15, "equalityAxioms"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_2d
    const-string v15, "customSubtype"

    aput-object v15, v12, v14

    goto :goto_2

    :pswitch_2e
    const-string v15, "kotlinTypePreparator"

    aput-object v15, v12, v14

    :goto_2
    const-string v14, "filterOverrides"

    const-string v15, "getOverriddenDeclarations"

    const-string v16, "isOverridableBy"

    const-string v17, "isOverridableByWithoutExternalConditions"

    const-string v18, "createTypeCheckerState"

    const-string v19, "selectMostSpecificMember"

    const-string v20, "determineModalityForFakeOverride"

    const-string v21, "getMinimalModality"

    const-string v22, "filterVisibleFakeOverrides"

    const-string v23, "extractMembersOverridableInBothWays"

    const/16 v24, 0x1

    if-eq v0, v9, :cond_8

    if-eq v0, v8, :cond_8

    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_9

    packed-switch v0, :pswitch_data_a

    packed-switch v0, :pswitch_data_b

    packed-switch v0, :pswitch_data_c

    aput-object v13, v12, v24

    goto :goto_3

    :pswitch_2f
    aput-object v20, v12, v24

    goto :goto_3

    :pswitch_30
    aput-object v19, v12, v24

    goto :goto_3

    :pswitch_31
    aput-object v17, v12, v24

    goto :goto_3

    :cond_2
    aput-object v18, v12, v24

    goto :goto_3

    :cond_3
    aput-object v23, v12, v24

    goto :goto_3

    :cond_4
    aput-object v22, v12, v24

    goto :goto_3

    :cond_5
    aput-object v21, v12, v24

    goto :goto_3

    :cond_6
    :pswitch_32
    aput-object v16, v12, v24

    goto :goto_3

    :cond_7
    aput-object v15, v12, v24

    goto :goto_3

    :cond_8
    aput-object v14, v12, v24

    :goto_3
    packed-switch v0, :pswitch_data_d

    const-string v13, "createWithTypeRefiner"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_33
    const-string v13, "findMaxVisibility"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_34
    const-string v13, "computeVisibilityToInherit"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_35
    const-string v13, "resolveUnknownVisibilityForMember"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_36
    aput-object v23, v12, v11

    goto/16 :goto_4

    :pswitch_37
    aput-object v22, v12, v11

    goto/16 :goto_4

    :pswitch_38
    aput-object v21, v12, v11

    goto/16 :goto_4

    :pswitch_39
    aput-object v20, v12, v11

    goto/16 :goto_4

    :pswitch_3a
    const-string v13, "createAndBindFakeOverride"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_3b
    aput-object v19, v12, v11

    goto/16 :goto_4

    :pswitch_3c
    const-string v13, "isReturnTypeMoreSpecific"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_3d
    const-string v13, "isMoreSpecificThenAllOf"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_3e
    const-string v13, "isVisibilityMoreSpecific"

    aput-object v13, v12, v11

    goto/16 :goto_4

    :pswitch_3f
    const-string v13, "isMoreSpecific"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_40
    const-string v13, "createAndBindFakeOverrides"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_41
    const-string v13, "allHasSameContainingDeclaration"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_42
    const-string v13, "extractAndBindOverridesForMember"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_43
    const-string v13, "isVisibleForOverride"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_44
    const-string v13, "generateOverridesInFunctionGroup"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_45
    const-string v13, "areTypeParametersEquivalent"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_46
    const-string v13, "areTypesEquivalent"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_47
    aput-object v18, v12, v11

    goto :goto_4

    :pswitch_48
    const-string v13, "getBasicOverridabilityProblem"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_49
    aput-object v17, v12, v11

    goto :goto_4

    :pswitch_4a
    aput-object v16, v12, v11

    goto :goto_4

    :pswitch_4b
    const-string v13, "collectOverriddenDeclarations"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_4c
    aput-object v15, v12, v11

    goto :goto_4

    :pswitch_4d
    const-string v13, "overrides"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_4e
    aput-object v14, v12, v11

    goto :goto_4

    :pswitch_4f
    const-string v13, "filterOutOverridden"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_50
    const-string v13, "<init>"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_51
    const-string v13, "create"

    aput-object v13, v12, v11

    goto :goto_4

    :pswitch_52
    const-string v13, "createWithTypePreparatorAndCustomSubtype"

    aput-object v13, v12, v11

    :goto_4
    :pswitch_53
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eq v0, v9, :cond_9

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_e

    packed-switch v0, :pswitch_data_f

    packed-switch v0, :pswitch_data_10

    packed-switch v0, :pswitch_data_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    :pswitch_54
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x20
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x50
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x5a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2
        :pswitch_2c
        :pswitch_2b
        :pswitch_2
        :pswitch_2e
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_28
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_28
        :pswitch_28
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_17
        :pswitch_11
        :pswitch_16
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_1d
        :pswitch_a
        :pswitch_9
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_a
        :pswitch_17
        :pswitch_16
        :pswitch_d
        :pswitch_17
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_d
        :pswitch_8
        :pswitch_28
        :pswitch_17
        :pswitch_7
        :pswitch_28
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_28
        :pswitch_6
        :pswitch_5
        :pswitch_16
        :pswitch_3
        :pswitch_3
        :pswitch_d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x18
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x20
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x50
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x5a
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_52
        :pswitch_52
        :pswitch_51
        :pswitch_51
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4e
        :pswitch_53
        :pswitch_53
        :pswitch_4d
        :pswitch_4d
        :pswitch_4c
        :pswitch_53
        :pswitch_4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_4a
        :pswitch_53
        :pswitch_4a
        :pswitch_4a
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_49
        :pswitch_49
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_48
        :pswitch_48
        :pswitch_47
        :pswitch_47
        :pswitch_53
        :pswitch_53
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_38
        :pswitch_38
        :pswitch_53
        :pswitch_37
        :pswitch_37
        :pswitch_53
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_53
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x18
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x20
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x50
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x5a
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method

.method public static b(Lh4/v;Lh4/v;Lh4/I;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p0}, Lh4/c;->i(Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lh4/c;->i(Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    invoke-virtual {p1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lh4/d;->g(Lh4/I;Lk4/c;Lk4/c;)Z

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x2f

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0x2e

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public static c(Lr3/c;Ljava/util/LinkedHashSet;)V
    .locals 2

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lr3/c;->k0()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/c;

    invoke-static {v0, p1}, LT3/n;->c(Lr3/c;Ljava/util/LinkedHashSet;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No overridden descriptors found for (fake override) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 p0, 0x11

    invoke-static {p0}, LT3/n;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Lr3/b;)Ljava/util/ArrayList;
    .locals 2

    invoke-interface {p0}, Lr3/b;->d0()Lu3/w;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu3/w;->e()Lh4/v;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/V;

    check-cast v0, Lu3/W;

    invoke-virtual {v0}, Lu3/W;->e()Lh4/v;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static e(Ljava/util/Collection;Lr3/e;Lf1/a;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_19

    new-instance v1, LB3/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, LB3/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v1}, LR2/m;->K0(Ljava/lang/Iterable;Lc3/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr3/c;

    invoke-interface {v6}, Lr3/w;->i()I

    move-result v10

    invoke-static {v10}, Lk/Q0;->f(I)I

    move-result v10

    if-eqz v10, :cond_4

    if-eq v10, v9, :cond_3

    if-eq v10, v8, :cond_2

    if-eq v10, v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v9

    goto :goto_1

    :cond_2
    move v4, v9

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Member cannot have SEALED modality: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move v7, v9

    goto/16 :goto_9

    :cond_5
    invoke-interface {p1}, Lr3/w;->y()Z

    move-result v1

    const/4 v6, 0x4

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lr3/e;->i()I

    move-result v1

    if-eq v1, v6, :cond_6

    invoke-interface {p1}, Lr3/e;->i()I

    move-result v1

    if-eq v1, v8, :cond_6

    move v3, v9

    :cond_6
    if-eqz v4, :cond_7

    if-nez v5, :cond_7

    goto/16 :goto_9

    :cond_7
    if-nez v4, :cond_a

    if-eqz v5, :cond_a

    if-eqz v3, :cond_8

    invoke-interface {p1}, Lr3/e;->i()I

    move-result v1

    move v7, v1

    goto :goto_2

    :cond_8
    move v7, v6

    :goto_2
    if-eqz v7, :cond_9

    goto/16 :goto_9

    :cond_9
    const/16 p0, 0x5c

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr3/c;

    if-eqz v5, :cond_b

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v5, v7}, LT3/n;->c(Lr3/c;Ljava/util/LinkedHashSet;)V

    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_b
    const/16 p0, 0xf

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_c
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/j;

    invoke-static {v4}, LX3/f;->j(Lr3/j;)Lr3/x;

    move-result-object v4

    sget-object v5, Li4/g;->a:LI2/a;

    invoke-interface {v4, v5}, Lr3/x;->U(LI2/a;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LB/f;->F(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gt v4, v9, :cond_e

    goto :goto_6

    :cond_e
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v5

    check-cast v9, Lr3/b;

    check-cast v8, Lr3/b;

    invoke-static {v9, v8}, LT3/n;->q(Lr3/b;Lr3/b;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_10
    invoke-static {v8, v9}, LT3/n;->q(Lr3/b;Lr3/b;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_4

    :cond_11
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    move-object v1, v4

    :goto_6
    invoke-interface {p1}, Lr3/e;->i()I

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v6

    :cond_13
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr3/c;

    if-eqz v3, :cond_14

    invoke-interface {v5}, Lr3/w;->i()I

    move-result v8

    if-ne v8, v6, :cond_14

    move v5, v4

    goto :goto_8

    :cond_14
    invoke-interface {v5}, Lr3/w;->i()I

    move-result v5

    :goto_8
    invoke-static {v5, v7}, Lk/Q0;->a(II)I

    move-result v8

    if-gez v8, :cond_13

    move v7, v5

    goto :goto_7

    :cond_15
    if-eqz v7, :cond_17

    :goto_9
    if-eqz v2, :cond_16

    sget-object v0, Lr3/n;->h:LA3/p;

    goto :goto_a

    :cond_16
    sget-object v0, Lr3/n;->g:LA3/p;

    :goto_a
    new-instance v1, LT3/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LT3/k;-><init>(I)V

    invoke-static {p0, v1}, LT3/n;->s(Ljava/util/Collection;Lc3/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/c;

    invoke-interface {v1, p1, v7, v0}, Lr3/c;->x0(Lr3/j;ILA3/p;)Lr3/c;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lf1/a;->l0(Lr3/c;Ljava/util/Collection;)V

    invoke-virtual {p2, p1}, Lf1/a;->a(Lr3/c;)V

    return-void

    :cond_17
    const/16 p0, 0x5f

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_18
    const/16 p0, 0x5e

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_19
    const/16 p0, 0x56

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_1a
    const/16 p0, 0x55

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public static g(Ljava/lang/Object;Ljava/util/LinkedList;Lc3/b;Lc3/b;)Ljava/util/ArrayList;
    .locals 5

    if-eqz p0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/b;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/b;

    if-ne p0, v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, LT3/n;->j(Lr3/b;Lr3/b;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p3, v2}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    const/16 p0, 0x63

    invoke-static {p0}, LT3/n;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static i(Lr3/b;Lr3/b;)LT3/m;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    if-eqz p1, :cond_b

    instance-of v1, p0, Lr3/s;

    if-eqz v1, :cond_0

    instance-of v2, p1, Lr3/s;

    if-eqz v2, :cond_1

    :cond_0
    instance-of v2, p0, Lr3/K;

    if-eqz v2, :cond_2

    instance-of v3, p1, Lr3/K;

    if-nez v3, :cond_2

    :cond_1
    const-string p0, "Member kind mismatch"

    invoke-static {p0}, LT3/m;->d(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This type of CallableDescriptor cannot be checked for overridability: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    invoke-interface {p0}, Lr3/j;->getName()LQ3/f;

    move-result-object v1

    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object v2

    invoke-virtual {v1, v2}, LQ3/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p0, "Name mismatch"

    invoke-static {p0}, LT3/m;->d(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-interface {p0}, Lr3/b;->d0()Lu3/w;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    invoke-interface {p1}, Lr3/b;->d0()Lu3/w;

    move-result-object v4

    if-nez v4, :cond_7

    move v2, v3

    :cond_7
    if-eq v1, v2, :cond_8

    const-string p0, "Receiver presence mismatch"

    invoke-static {p0}, LT3/m;->d(Ljava/lang/String;)LT3/m;

    move-result-object p0

    goto :goto_2

    :cond_8
    invoke-interface {p0}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Lr3/b;->w0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p0, p1, :cond_9

    const-string p0, "Value parameter number mismatch"

    invoke-static {p0}, LT3/m;->d(Ljava/lang/String;)LT3/m;

    move-result-object p0

    goto :goto_2

    :cond_9
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_a

    return-object p0

    :cond_a
    return-object v0

    :cond_b
    const/16 p0, 0x29

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_c
    const/16 p0, 0x28

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public static j(Lr3/b;Lr3/b;)I
    .locals 3

    sget-object v0, LT3/n;->d:LT3/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, LT3/n;->l(Lr3/b;Lr3/b;Lr3/e;)LT3/m;

    move-result-object v2

    invoke-virtual {v2}, LT3/m;->c()I

    move-result v2

    invoke-virtual {v0, p0, p1, v1}, LT3/n;->l(Lr3/b;Lr3/b;Lr3/e;)LT3/m;

    move-result-object p0

    invoke-virtual {p0}, LT3/m;->c()I

    move-result p0

    const/4 p1, 0x1

    if-ne v2, p1, :cond_0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-eq v2, p1, :cond_2

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :cond_2
    :goto_0
    return p1
.end method

.method public static k(Lr3/b;Lr3/b;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-eqz p1, :cond_9

    invoke-interface {p0}, Lr3/b;->n()Lh4/v;

    move-result-object v0

    invoke-interface {p1}, Lr3/b;->n()Lh4/v;

    move-result-object v1

    invoke-static {p0, p1}, LT3/n;->p(Lr3/m;Lr3/m;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-interface {p0}, Lr3/b;->u()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lr3/b;->u()Ljava/util/List;

    move-result-object v4

    sget-object v5, LT3/n;->d:LT3/n;

    invoke-virtual {v5, v2, v4}, LT3/n;->f(Ljava/util/List;Ljava/util/List;)Lh4/I;

    move-result-object v2

    instance-of v4, p0, Lr3/s;

    if-eqz v4, :cond_1

    invoke-static {p0, v0, p1, v1, v2}, LT3/n;->o(Lr3/b;Lh4/v;Lr3/b;Lh4/v;Lh4/I;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v4, p0, Lr3/K;

    if-eqz v4, :cond_8

    move-object v4, p0

    check-cast v4, Lr3/K;

    move-object v5, p1

    check-cast v5, Lr3/K;

    invoke-interface {v4}, Lr3/K;->f()Lu3/M;

    move-result-object v6

    invoke-interface {v5}, Lr3/K;->f()Lu3/M;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v6, v7}, LT3/n;->p(Lr3/m;Lr3/m;)Z

    move-result v6

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v8

    :goto_1
    if-nez v6, :cond_4

    return v3

    :cond_4
    invoke-interface {v4}, Lr3/U;->T()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Lr3/U;->T()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lh4/v;->M0()Lh4/Z;

    move-result-object p0

    invoke-virtual {v1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lh4/d;->g(Lh4/I;Lk4/c;Lk4/c;)Z

    move-result p0

    return p0

    :cond_5
    invoke-interface {v4}, Lr3/U;->T()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v5}, Lr3/U;->T()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    invoke-static {p0, v0, p1, v1, v2}, LT3/n;->o(Lr3/b;Lh4/v;Lr3/b;Lh4/v;Lh4/I;)Z

    move-result p0

    if-eqz p0, :cond_7

    move v3, v8

    :cond_7
    return v3

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected callable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const/16 p0, 0x44

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_a
    const/16 p0, 0x43

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public static o(Lr3/b;Lh4/v;Lr3/b;Lh4/v;Lh4/I;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    sget-object p0, Lh4/d;->a:Lh4/d;

    invoke-virtual {p1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p1

    invoke-virtual {p3}, Lh4/v;->M0()Lh4/Z;

    move-result-object p2

    invoke-static {p0, p4, p1, p2}, Lh4/d;->n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x4c

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x4b

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0x4a

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0x49

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public static p(Lr3/m;Lr3/m;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lr3/m;->c()LA3/p;

    move-result-object p0

    invoke-interface {p1}, Lr3/m;->c()LA3/p;

    move-result-object p1

    invoke-static {p0, p1}, Lr3/n;->b(LA3/p;LA3/p;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    const/16 p0, 0x46

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0x45

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public static q(Lr3/b;Lr3/b;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, LT3/c;->a:LT3/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    invoke-interface {p0}, Lr3/b;->a()Lr3/b;

    move-result-object v0

    invoke-interface {p1}, Lr3/b;->a()Lr3/b;

    move-result-object v4

    invoke-virtual {v1, v0, v4, v2, v3}, LT3/c;->c(Lr3/j;Lr3/j;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-interface {p1}, Lr3/b;->a()Lr3/b;

    move-result-object p1

    sget v0, LT3/e;->a:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Lr3/b;->a()Lr3/b;

    move-result-object p0

    invoke-static {p0, v0}, LT3/e;->b(Lr3/b;Ljava/util/LinkedHashSet;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/b;

    invoke-virtual {v1, p1, v0, v2, v3}, LT3/c;->c(Lr3/j;Lr3/j;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_2
    return v2

    :cond_3
    const/16 p0, 0xe

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_4
    const/16 p0, 0xd

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public static r(Lr3/c;Lc3/b;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    invoke-interface {p0}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/c;

    invoke-interface {v2}, Lr3/w;->c()LA3/p;

    move-result-object v3

    sget-object v4, Lr3/n;->g:LA3/p;

    if-ne v3, v4, :cond_0

    invoke-static {v2, p1}, LT3/n;->r(Lr3/c;Lc3/b;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lr3/w;->c()LA3/p;

    move-result-object v1

    sget-object v2, Lr3/n;->g:LA3/p;

    if-eq v1, v2, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lr3/n;->j:LA3/p;

    goto :goto_5

    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    move-object v3, v0

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/c;

    invoke-interface {v4}, Lr3/w;->c()LA3/p;

    move-result-object v4

    if-nez v3, :cond_5

    :goto_3
    move-object v3, v4

    goto :goto_2

    :cond_5
    invoke-static {v4, v3}, Lr3/n;->b(LA3/p;LA3/p;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_4

    goto :goto_3

    :cond_7
    if-nez v3, :cond_9

    :cond_8
    :goto_4
    move-object v2, v0

    goto :goto_5

    :cond_9
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/c;

    invoke-interface {v4}, Lr3/w;->c()LA3/p;

    move-result-object v4

    invoke-static {v3, v4}, Lr3/n;->b(LA3/p;LA3/p;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_a

    goto :goto_4

    :cond_b
    move-object v2, v3

    :goto_5
    if-nez v2, :cond_c

    :goto_6
    move-object v2, v0

    goto :goto_7

    :cond_c
    invoke-interface {p0}, Lr3/c;->k0()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/c;

    invoke-interface {v3}, Lr3/w;->i()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_d

    invoke-interface {v3}, Lr3/w;->c()LA3/p;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_6

    :cond_e
    iget-object v1, v2, LA3/p;->a:Lr3/f0;

    invoke-virtual {v1}, Lr3/f0;->c()Lr3/f0;

    move-result-object v1

    invoke-static {v1}, Lr3/n;->f(Lr3/f0;)LA3/p;

    move-result-object v2

    :cond_f
    :goto_7
    if-nez v2, :cond_11

    if-eqz p1, :cond_10

    invoke-interface {p1, p0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    sget-object v1, Lr3/n;->e:LA3/p;

    goto :goto_8

    :cond_11
    move-object v1, v2

    :goto_8
    instance-of v3, p0, Lu3/K;

    if-eqz v3, :cond_14

    move-object v3, p0

    check-cast v3, Lu3/K;

    if-eqz v1, :cond_13

    iput-object v1, v3, Lu3/K;->l:LA3/p;

    check-cast p0, Lr3/K;

    invoke-interface {p0}, Lr3/K;->w()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/J;

    if-nez v2, :cond_12

    move-object v3, v0

    goto :goto_a

    :cond_12
    move-object v3, p1

    :goto_a
    invoke-static {v1, v3}, LT3/n;->r(Lr3/c;Lc3/b;)V

    goto :goto_9

    :cond_13
    const/16 p0, 0x14

    invoke-static {p0}, Lu3/K;->I0(I)V

    throw v0

    :cond_14
    instance-of p1, p0, Lu3/v;

    if-eqz p1, :cond_16

    check-cast p0, Lu3/v;

    if-eqz v1, :cond_15

    iput-object v1, p0, Lu3/v;->n:LA3/p;

    goto :goto_b

    :cond_15
    const/16 p0, 0xa

    invoke-static {p0}, Lu3/v;->I0(I)V

    throw v0

    :cond_16
    check-cast p0, Lu3/I;

    iput-object v1, p0, Lu3/I;->m:LA3/p;

    invoke-virtual {p0}, Lu3/I;->Q0()Lr3/K;

    move-result-object p1

    invoke-interface {p1}, Lr3/w;->c()LA3/p;

    move-result-object p1

    if-eq v1, p1, :cond_17

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu3/I;->g:Z

    :cond_17
    :goto_b
    return-void

    :cond_18
    const/16 p0, 0x6d

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_19
    const/16 p0, 0x6b

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public static s(Ljava/util/Collection;Lc3/b;)Ljava/lang/Object;
    .locals 10

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {p0}, LR2/m;->L0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x50

    invoke-static {p0}, LT3/n;->a(I)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p0}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p0}, LR2/m;->L0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr3/b;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr3/b;

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr3/b;

    invoke-static {v7, v9}, LT3/n;->k(Lr3/b;Lr3/b;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {v7, v5}, LT3/n;->k(Lr3/b;Lr3/b;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v5, v7}, LT3/n;->k(Lr3/b;Lr3/b;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v4, v6

    goto :goto_1

    :cond_6
    const/16 p0, 0x47

    invoke-static {p0}, LT3/n;->a(I)V

    throw v1

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    if-eqz v4, :cond_8

    return-object v4

    :cond_8
    const/16 p0, 0x51

    invoke-static {p0}, LT3/n;->a(I)V

    throw v1

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v2, :cond_b

    invoke-static {v0}, LR2/m;->L0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    return-object p0

    :cond_a
    const/16 p0, 0x52

    invoke-static {p0}, LT3/n;->a(I)V

    throw v1

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/b;

    invoke-interface {v3}, Lr3/b;->n()Lh4/v;

    move-result-object v3

    invoke-static {v3}, Lh4/c;->j(Lh4/v;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_3

    :cond_d
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_e

    return-object v2

    :cond_e
    invoke-static {v0}, LR2/m;->L0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    return-object p0

    :cond_f
    const/16 p0, 0x54

    invoke-static {p0}, LT3/n;->a(I)V

    throw v1
.end method


# virtual methods
.method public final f(Ljava/util/List;Ljava/util/List;)Lh4/I;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "kotlinTypeRefiner"

    sget-object v7, Li4/e;->c:Li4/e;

    iget-object v8, p0, LT3/n;->a:Li4/f;

    iget-object p0, p0, LT3/n;->b:Li4/c;

    if-eqz v1, :cond_0

    new-instance v6, LA3/D;

    invoke-direct {v6, v0, p0, v8}, LA3/D;-><init>(Ljava/util/HashMap;Li4/c;Li4/f;)V

    invoke-static {v2, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lh4/I;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lh4/I;-><init>(ZZLi4/b;Li4/e;Li4/f;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/Q;

    invoke-interface {v3}, Lr3/g;->H()Lh4/J;

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/Q;

    invoke-interface {v4}, Lr3/g;->H()Lh4/J;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, LA3/D;

    invoke-direct {v6, v0, p0, v8}, LA3/D;-><init>(Ljava/util/HashMap;Li4/c;Li4/f;)V

    invoke-static {v2, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lh4/I;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lh4/I;-><init>(ZZLi4/b;Li4/e;Li4/f;)V

    return-object p0

    :cond_2
    const/16 p0, 0x2b

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0x2a

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public final h(LQ3/f;Ljava/util/Collection;Ljava/util/Collection;Lr3/e;Lf1/a;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    if-eqz p2, :cond_12

    if-eqz p3, :cond_11

    if-eqz p4, :cond_10

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/c;

    if-eqz v1, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lq4/h;

    invoke-direct {v4}, Lq4/h;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr3/c;

    invoke-virtual {p0, v6, v1, p4}, LT3/n;->l(Lr3/b;Lr3/b;Lr3/e;)LT3/m;

    move-result-object v7

    invoke-virtual {v7}, LT3/m;->c()I

    move-result v7

    invoke-interface {v6}, Lr3/w;->c()LA3/p;

    move-result-object v8

    invoke-static {v8}, Lr3/n;->e(LA3/p;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lr3/n;->l:Lr3/O;

    invoke-static {v8, v6, v1}, Lr3/n;->c(Lr3/O;Lr3/m;Lr3/j;)Lr3/m;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    :goto_2
    invoke-static {v7}, Lk/Q0;->f(I)I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {p5, v6, v1}, Lf1/a;->d(Lr3/c;Lr3/c;)V

    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v4, v6}, Lq4/h;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p5, v1, v4}, Lf1/a;->l0(Lr3/c;Ljava/util/Collection;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_6
    const/16 p0, 0x3b

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    if-ge p0, v2, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/c;

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_7

    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr3/c;

    invoke-interface {p3}, Lr3/j;->l()Lr3/j;

    move-result-object p3

    if-ne p3, p0, :cond_a

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    :goto_4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p2, v0

    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr3/c;

    if-nez p2, :cond_c

    goto :goto_6

    :cond_c
    invoke-interface {p2}, Lr3/w;->c()LA3/p;

    move-result-object v1

    invoke-interface {p3}, Lr3/w;->c()LA3/p;

    move-result-object v2

    invoke-static {v1, v2}, Lr3/n;->b(LA3/p;LA3/p;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_b

    :goto_6
    move-object p2, p3

    goto :goto_5

    :cond_d
    invoke-static {p2}, Ld3/i;->b(Ljava/lang/Object;)V

    new-instance p1, LT3/k;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, LT3/k;-><init>(I)V

    new-instance p3, LT3/l;

    invoke-direct {p3, p5, p2}, LT3/l;-><init>(Lf1/a;Lr3/c;)V

    invoke-static {p2, p0, p1, p3}, LT3/n;->g(Ljava/lang/Object;Ljava/util/LinkedList;Lc3/b;Lc3/b;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, p4, p5}, LT3/n;->e(Ljava/util/Collection;Lr3/e;Lf1/a;)V

    goto :goto_4

    :cond_e
    :goto_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr3/c;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1, p4, p5}, LT3/n;->e(Ljava/util/Collection;Lr3/e;Lf1/a;)V

    goto :goto_8

    :cond_f
    return-void

    :cond_10
    const/16 p0, 0x37

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_11
    const/16 p0, 0x36

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_12
    const/16 p0, 0x35

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_13
    const/16 p0, 0x34

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public final l(Lr3/b;Lr3/b;Lr3/e;)LT3/m;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, LT3/n;->m(Lr3/b;Lr3/b;Lr3/e;Z)LT3/m;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x15

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x14

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0x13

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public final m(Lr3/b;Lr3/b;Lr3/e;Z)LT3/m;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    if-eqz p2, :cond_e

    invoke-virtual {p0, p1, p2, p4}, LT3/n;->n(Lr3/b;Lr3/b;Z)LT3/m;

    move-result-object p0

    invoke-virtual {p0}, LT3/m;->c()I

    move-result p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    move p4, v2

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    sget-object v3, LT3/n;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    sget-object v6, LT3/f;->c:LT3/f;

    const-string v7, "External condition failed"

    const-string v8, "External condition"

    const/4 v9, 0x2

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LT3/h;

    invoke-interface {v5}, LT3/h;->a()LT3/f;

    move-result-object v10

    if-ne v10, v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {v5}, LT3/h;->a()LT3/f;

    move-result-object v6

    sget-object v10, LT3/f;->d:LT3/f;

    if-ne v6, v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v5, p1, p2, p3}, LT3/h;->b(Lr3/b;Lr3/b;Lr3/e;)LT3/g;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v2, :cond_4

    if-eq v5, v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v8}, LT3/m;->d(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v7}, LT3/m;->b(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_5
    move p4, v2

    goto :goto_1

    :cond_6
    if-nez p4, :cond_7

    return-object p0

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LT3/h;

    invoke-interface {p4}, LT3/h;->a()LT3/f;

    move-result-object v3

    if-eq v3, v6, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {p4, p1, p2, p3}, LT3/h;->b(Lr3/b;Lr3/b;Lr3/e;)LT3/g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_b

    if-eq v3, v2, :cond_a

    if-eq v3, v9, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {v8}, LT3/m;->d(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-static {v7}, LT3/m;->b(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Contract violation in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " condition. It\'s not supposed to end with success"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    sget-object p0, LT3/m;->b:LT3/m;

    if-eqz p0, :cond_d

    return-object p0

    :cond_d
    invoke-static {v1}, LT3/m;->a(I)V

    throw v0

    :cond_e
    const/16 p0, 0x17

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_f
    const/16 p0, 0x16

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

.method public final n(Lr3/b;Lr3/b;Z)LT3/m;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    if-eqz p2, :cond_11

    invoke-static {p1, p2}, LT3/n;->i(Lr3/b;Lr3/b;)LT3/m;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, LT3/n;->d(Lr3/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2}, LT3/n;->d(Lr3/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p1}, Lr3/b;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {p2}, Lr3/b;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string p1, "Type parameter number mismatch"

    if-ge v7, p0, :cond_2

    sget-object p0, Li4/d;->a:Li4/l;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh4/v;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh4/v;

    invoke-virtual {p0, p2, p3}, Li4/l;->a(Lh4/v;Lh4/v;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, LT3/m;->d(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, LT3/m;->b(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, v3, v4}, LT3/n;->f(Ljava/util/List;Ljava/util/List;)Lh4/I;

    move-result-object p0

    move v5, v7

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr3/Q;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr3/Q;

    if-eqz v6, :cond_9

    if-eqz v8, :cond_8

    invoke-interface {v6}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Lr3/Q;->getUpperBounds()Ljava/util/List;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v8, v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lh4/v;

    invoke-virtual {v9}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh4/v;

    invoke-static {v8, v11, p0}, LT3/n;->b(Lh4/v;Lh4/v;Lh4/I;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    :cond_6
    :goto_3
    const-string p0, "Type parameter bounds mismatch"

    invoke-static {p0}, LT3/m;->d(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    const/16 p0, 0x32

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_9
    const/16 p0, 0x31

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_a
    move v3, v7

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh4/v;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh4/v;

    invoke-static {v4, v5, p0}, LT3/n;->b(Lh4/v;Lh4/v;Lh4/I;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string p0, "Value parameter type mismatch"

    invoke-static {p0}, LT3/m;->d(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    instance-of v1, p1, Lr3/s;

    if-eqz v1, :cond_d

    instance-of v1, p2, Lr3/s;

    if-eqz v1, :cond_d

    move-object v1, p1

    check-cast v1, Lr3/s;

    invoke-interface {v1}, Lr3/s;->h()Z

    move-result v1

    move-object v2, p2

    check-cast v2, Lr3/s;

    invoke-interface {v2}, Lr3/s;->h()Z

    move-result v2

    if-eq v1, v2, :cond_d

    const-string p0, "Incompatible suspendability"

    invoke-static {p0}, LT3/m;->b(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_d
    if-eqz p3, :cond_f

    invoke-interface {p1}, Lr3/b;->n()Lh4/v;

    move-result-object p1

    invoke-interface {p2}, Lr3/b;->n()Lh4/v;

    move-result-object p2

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-static {p2}, Lh4/c;->i(Lh4/v;)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-static {p1}, Lh4/c;->i(Lh4/v;)Z

    move-result p3

    if-eqz p3, :cond_e

    goto :goto_5

    :cond_e
    sget-object p3, Lh4/d;->a:Lh4/d;

    invoke-virtual {p2}, Lh4/v;->M0()Lh4/Z;

    move-result-object p2

    invoke-virtual {p1}, Lh4/v;->M0()Lh4/Z;

    move-result-object p1

    invoke-static {p3, p0, p2, p1}, Lh4/d;->n(Lh4/d;Lh4/I;Lk4/c;Lk4/c;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "Return type mismatch"

    invoke-static {p0}, LT3/m;->b(Ljava/lang/String;)LT3/m;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_5
    sget-object p0, LT3/m;->b:LT3/m;

    if-eqz p0, :cond_10

    return-object p0

    :cond_10
    invoke-static {v7}, LT3/m;->a(I)V

    throw v0

    :cond_11
    const/16 p0, 0x1f

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0

    :cond_12
    const/16 p0, 0x1e

    invoke-static {p0}, LT3/n;->a(I)V

    throw v0
.end method

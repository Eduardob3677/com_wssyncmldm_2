package S3;

import R2.w;
import i3.InterfaceC0494o;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class k implements i {

    /* renamed from: W, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f2645W;

    /* renamed from: A, reason: collision with root package name */
    public final j f2646A;

    /* renamed from: B, reason: collision with root package name */
    public final j f2647B;

    /* renamed from: C, reason: collision with root package name */
    public final j f2648C;

    /* renamed from: D, reason: collision with root package name */
    public final j f2649D;
    public final j E;

    /* renamed from: F, reason: collision with root package name */
    public final j f2650F;

    /* renamed from: G, reason: collision with root package name */
    public final j f2651G;

    /* renamed from: H, reason: collision with root package name */
    public final j f2652H;

    /* renamed from: I, reason: collision with root package name */
    public final j f2653I;

    /* renamed from: J, reason: collision with root package name */
    public final j f2654J;

    /* renamed from: K, reason: collision with root package name */
    public final j f2655K;

    /* renamed from: L, reason: collision with root package name */
    public final j f2656L;

    /* renamed from: M, reason: collision with root package name */
    public final j f2657M;

    /* renamed from: N, reason: collision with root package name */
    public final j f2658N;

    /* renamed from: O, reason: collision with root package name */
    public final j f2659O;

    /* renamed from: P, reason: collision with root package name */
    public final j f2660P;

    /* renamed from: Q, reason: collision with root package name */
    public final j f2661Q;

    /* renamed from: R, reason: collision with root package name */
    public final j f2662R;

    /* renamed from: S, reason: collision with root package name */
    public final j f2663S;

    /* renamed from: T, reason: collision with root package name */
    public final j f2664T;

    /* renamed from: U, reason: collision with root package name */
    public final j f2665U;

    /* renamed from: V, reason: collision with root package name */
    public final j f2666V;

    /* renamed from: a, reason: collision with root package name */
    public boolean f2667a;

    /* renamed from: b, reason: collision with root package name */
    public final j f2668b = new j(b.f2613d, this);

    /* renamed from: c, reason: collision with root package name */
    public final j f2669c;

    /* renamed from: d, reason: collision with root package name */
    public final j f2670d;

    /* renamed from: e, reason: collision with root package name */
    public final j f2671e;
    public final j f;

    /* renamed from: g, reason: collision with root package name */
    public final j f2672g;

    /* renamed from: h, reason: collision with root package name */
    public final j f2673h;

    /* renamed from: i, reason: collision with root package name */
    public final j f2674i;

    /* renamed from: j, reason: collision with root package name */
    public final j f2675j;

    /* renamed from: k, reason: collision with root package name */
    public final j f2676k;

    /* renamed from: l, reason: collision with root package name */
    public final j f2677l;

    /* renamed from: m, reason: collision with root package name */
    public final j f2678m;
    public final j n;

    /* renamed from: o, reason: collision with root package name */
    public final j f2679o;

    /* renamed from: p, reason: collision with root package name */
    public final j f2680p;

    /* renamed from: q, reason: collision with root package name */
    public final j f2681q;

    /* renamed from: r, reason: collision with root package name */
    public final j f2682r;

    /* renamed from: s, reason: collision with root package name */
    public final j f2683s;

    /* renamed from: t, reason: collision with root package name */
    public final j f2684t;

    /* renamed from: u, reason: collision with root package name */
    public final j f2685u;

    /* renamed from: v, reason: collision with root package name */
    public final j f2686v;

    /* renamed from: w, reason: collision with root package name */
    public final j f2687w;

    /* renamed from: x, reason: collision with root package name */
    public final j f2688x;

    /* renamed from: y, reason: collision with root package name */
    public final j f2689y;

    /* renamed from: z, reason: collision with root package name */
    public final j f2690z;

    static {
        d3.r rVar = d3.q.f6516a;
        f2645W = new InterfaceC0494o[]{rVar.d(new d3.l(rVar.b(k.class), "classifierNamePolicy", "getClassifierNamePolicy()Lorg/jetbrains/kotlin/renderer/ClassifierNamePolicy;")), rVar.d(new d3.l(rVar.b(k.class), "withDefinedIn", "getWithDefinedIn()Z")), rVar.d(new d3.l(rVar.b(k.class), "withSourceFileForTopLevel", "getWithSourceFileForTopLevel()Z")), rVar.d(new d3.l(rVar.b(k.class), "modifiers", "getModifiers()Ljava/util/Set;")), rVar.d(new d3.l(rVar.b(k.class), "startFromName", "getStartFromName()Z")), rVar.d(new d3.l(rVar.b(k.class), "startFromDeclarationKeyword", "getStartFromDeclarationKeyword()Z")), rVar.d(new d3.l(rVar.b(k.class), "debugMode", "getDebugMode()Z")), rVar.d(new d3.l(rVar.b(k.class), "classWithPrimaryConstructor", "getClassWithPrimaryConstructor()Z")), rVar.d(new d3.l(rVar.b(k.class), "verbose", "getVerbose()Z")), rVar.d(new d3.l(rVar.b(k.class), "unitReturnType", "getUnitReturnType()Z")), rVar.d(new d3.l(rVar.b(k.class), "withoutReturnType", "getWithoutReturnType()Z")), rVar.d(new d3.l(rVar.b(k.class), "enhancedTypes", "getEnhancedTypes()Z")), rVar.d(new d3.l(rVar.b(k.class), "normalizedVisibilities", "getNormalizedVisibilities()Z")), rVar.d(new d3.l(rVar.b(k.class), "renderDefaultVisibility", "getRenderDefaultVisibility()Z")), rVar.d(new d3.l(rVar.b(k.class), "renderDefaultModality", "getRenderDefaultModality()Z")), rVar.d(new d3.l(rVar.b(k.class), "renderConstructorDelegation", "getRenderConstructorDelegation()Z")), rVar.d(new d3.l(rVar.b(k.class), "renderPrimaryConstructorParametersAsProperties", "getRenderPrimaryConstructorParametersAsProperties()Z")), rVar.d(new d3.l(rVar.b(k.class), "actualPropertiesInPrimaryConstructor", "getActualPropertiesInPrimaryConstructor()Z")), rVar.d(new d3.l(rVar.b(k.class), "uninferredTypeParameterAsName", "getUninferredTypeParameterAsName()Z")), rVar.d(new d3.l(rVar.b(k.class), "includePropertyConstant", "getIncludePropertyConstant()Z")), rVar.d(new d3.l(rVar.b(k.class), "withoutTypeParameters", "getWithoutTypeParameters()Z")), rVar.d(new d3.l(rVar.b(k.class), "withoutSuperTypes", "getWithoutSuperTypes()Z")), rVar.d(new d3.l(rVar.b(k.class), "typeNormalizer", "getTypeNormalizer()Lkotlin/jvm/functions/Function1;")), rVar.d(new d3.l(rVar.b(k.class), "defaultParameterValueRenderer", "getDefaultParameterValueRenderer()Lkotlin/jvm/functions/Function1;")), rVar.d(new d3.l(rVar.b(k.class), "secondaryConstructorsAsPrimary", "getSecondaryConstructorsAsPrimary()Z")), rVar.d(new d3.l(rVar.b(k.class), "overrideRenderingPolicy", "getOverrideRenderingPolicy()Lorg/jetbrains/kotlin/renderer/OverrideRenderingPolicy;")), rVar.d(new d3.l(rVar.b(k.class), "valueParametersHandler", "getValueParametersHandler()Lorg/jetbrains/kotlin/renderer/DescriptorRenderer$ValueParametersHandler;")), rVar.d(new d3.l(rVar.b(k.class), "textFormat", "getTextFormat()Lorg/jetbrains/kotlin/renderer/RenderingFormat;")), rVar.d(new d3.l(rVar.b(k.class), "parameterNameRenderingPolicy", "getParameterNameRenderingPolicy()Lorg/jetbrains/kotlin/renderer/ParameterNameRenderingPolicy;")), rVar.d(new d3.l(rVar.b(k.class), "receiverAfterName", "getReceiverAfterName()Z")), rVar.d(new d3.l(rVar.b(k.class), "renderCompanionObjectName", "getRenderCompanionObjectName()Z")), rVar.d(new d3.l(rVar.b(k.class), "propertyAccessorRenderingPolicy", "getPropertyAccessorRenderingPolicy()Lorg/jetbrains/kotlin/renderer/PropertyAccessorRenderingPolicy;")), rVar.d(new d3.l(rVar.b(k.class), "renderDefaultAnnotationArguments", "getRenderDefaultAnnotationArguments()Z")), rVar.d(new d3.l(rVar.b(k.class), "eachAnnotationOnNewLine", "getEachAnnotationOnNewLine()Z")), rVar.d(new d3.l(rVar.b(k.class), "excludedAnnotationClasses", "getExcludedAnnotationClasses()Ljava/util/Set;")), rVar.d(new d3.l(rVar.b(k.class), "excludedTypeAnnotationClasses", "getExcludedTypeAnnotationClasses()Ljava/util/Set;")), rVar.d(new d3.l(rVar.b(k.class), "annotationFilter", "getAnnotationFilter()Lkotlin/jvm/functions/Function1;")), rVar.d(new d3.l(rVar.b(k.class), "annotationArgumentsRenderingPolicy", "getAnnotationArgumentsRenderingPolicy()Lorg/jetbrains/kotlin/renderer/AnnotationArgumentsRenderingPolicy;")), rVar.d(new d3.l(rVar.b(k.class), "alwaysRenderModifiers", "getAlwaysRenderModifiers()Z")), rVar.d(new d3.l(rVar.b(k.class), "renderConstructorKeyword", "getRenderConstructorKeyword()Z")), rVar.d(new d3.l(rVar.b(k.class), "renderUnabbreviatedType", "getRenderUnabbreviatedType()Z")), rVar.d(new d3.l(rVar.b(k.class), "renderTypeExpansions", "getRenderTypeExpansions()Z")), rVar.d(new d3.l(rVar.b(k.class), "includeAdditionalModifiers", "getIncludeAdditionalModifiers()Z")), rVar.d(new d3.l(rVar.b(k.class), "parameterNamesInFunctionalTypes", "getParameterNamesInFunctionalTypes()Z")), rVar.d(new d3.l(rVar.b(k.class), "renderFunctionContracts", "getRenderFunctionContracts()Z")), rVar.d(new d3.l(rVar.b(k.class), "presentableUnresolvedTypes", "getPresentableUnresolvedTypes()Z")), rVar.d(new d3.l(rVar.b(k.class), "boldOnlyForNamesInHtml", "getBoldOnlyForNamesInHtml()Z")), rVar.d(new d3.l(rVar.b(k.class), "informativeErrorType", "getInformativeErrorType()Z"))};
    }

    public k() {
        Boolean bool = Boolean.TRUE;
        this.f2669c = new j(bool, this);
        this.f2670d = new j(bool, this);
        this.f2671e = new j(h.f2627d, this);
        Boolean bool2 = Boolean.FALSE;
        this.f = new j(bool2, this);
        this.f2672g = new j(bool2, this);
        this.f2673h = new j(bool2, this);
        this.f2674i = new j(bool2, this);
        this.f2675j = new j(bool2, this);
        this.f2676k = new j(bool, this);
        this.f2677l = new j(bool2, this);
        this.f2678m = new j(bool2, this);
        this.n = new j(bool2, this);
        this.f2679o = new j(bool, this);
        this.f2680p = new j(bool, this);
        this.f2681q = new j(bool2, this);
        this.f2682r = new j(bool2, this);
        this.f2683s = new j(bool2, this);
        this.f2684t = new j(bool2, this);
        this.f2685u = new j(bool2, this);
        this.f2686v = new j(bool2, this);
        this.f2687w = new j(bool2, this);
        this.f2688x = new j(f.f2620h, this);
        this.f2689y = new j(f.f2619g, this);
        this.f2690z = new j(bool, this);
        this.f2646A = new j(n.f2694d, this);
        this.f2647B = new j(d.f2615a, this);
        this.f2648C = new j(s.f2702c, this);
        this.f2649D = new j(o.f2696c, this);
        this.E = new j(bool2, this);
        this.f2650F = new j(bool2, this);
        this.f2651G = new j(p.f2699c, this);
        this.f2652H = new j(bool2, this);
        this.f2653I = new j(bool2, this);
        this.f2654J = new j(w.f2327c, this);
        this.f2655K = new j(l.f2691a, this);
        this.f2656L = new j(null, this);
        this.f2657M = new j(a.NO_ARGUMENTS, this);
        this.f2658N = new j(bool2, this);
        this.f2659O = new j(bool, this);
        this.f2660P = new j(bool, this);
        this.f2661Q = new j(bool2, this);
        this.f2662R = new j(bool, this);
        this.f2663S = new j(bool, this);
        this.f2664T = new j(bool2, this);
        this.f2665U = new j(bool2, this);
        this.f2666V = new j(bool, this);
    }

    @Override // S3.i
    public final void a() {
        this.E.b(f2645W[29], Boolean.TRUE);
    }

    @Override // S3.i
    public final void b() {
        this.f2673h.b(f2645W[6], Boolean.TRUE);
    }

    @Override // S3.i
    public final void c() {
        this.f2650F.b(f2645W[30], Boolean.TRUE);
    }

    @Override // S3.i
    public final void d() {
        this.f.b(f2645W[4], Boolean.TRUE);
    }

    @Override // S3.i
    public final void e() {
        this.f2669c.b(f2645W[1], Boolean.FALSE);
    }

    @Override // S3.i
    public final boolean f() {
        return ((Boolean) this.f2678m.a(f2645W[11], this)).booleanValue();
    }

    @Override // S3.i
    public final boolean g() {
        return ((Boolean) this.f2673h.a(f2645W[6], this)).booleanValue();
    }

    @Override // S3.i
    public final void h(c cVar) {
        this.f2668b.b(f2645W[0], cVar);
    }

    @Override // S3.i
    public final void i() {
        this.f2686v.b(f2645W[20], Boolean.TRUE);
    }

    @Override // S3.i
    public final void j() {
        q qVar = s.f2703d;
        this.f2648C.b(f2645W[27], qVar);
    }

    @Override // S3.i
    public final void k() {
        this.f2687w.b(f2645W[21], Boolean.TRUE);
    }

    @Override // S3.i
    public final void l(o oVar) {
        this.f2649D.b(f2645W[28], oVar);
    }

    @Override // S3.i
    public final void m(Set set) {
        d3.i.e("<set-?>", set);
        this.f2671e.b(f2645W[3], set);
    }

    public final Set n() {
        return (Set) this.f2655K.a(f2645W[35], this);
    }

    public final void o(LinkedHashSet linkedHashSet) {
        this.f2655K.b(f2645W[35], linkedHashSet);
    }
}

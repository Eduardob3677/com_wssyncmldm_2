package x3;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.TypeVariable;
import java.util.Collection;

/* renamed from: x3.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0911C extends s implements H3.b {

    /* renamed from: a, reason: collision with root package name */
    public final TypeVariable f9637a;

    public C0911C(TypeVariable typeVariable) {
        d3.i.e("typeVariable", typeVariable);
        this.f9637a = typeVariable;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0911C) {
            if (d3.i.a(this.f9637a, ((C0911C) obj).f9637a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f9637a.hashCode();
    }

    @Override // H3.b
    public final Collection t() {
        Annotation[] declaredAnnotations;
        TypeVariable typeVariable = this.f9637a;
        AnnotatedElement annotatedElement = typeVariable instanceof AnnotatedElement ? (AnnotatedElement) typeVariable : null;
        return (annotatedElement == null || (declaredAnnotations = annotatedElement.getDeclaredAnnotations()) == null) ? R2.u.f2325c : o4.a.h(declaredAnnotations);
    }

    public final String toString() {
        return C0911C.class.getName() + ": " + this.f9637a;
    }

    @Override // H3.b
    public final C0918e v(Q3.c cVar) {
        Annotation[] declaredAnnotations;
        d3.i.e("fqName", cVar);
        TypeVariable typeVariable = this.f9637a;
        AnnotatedElement annotatedElement = typeVariable instanceof AnnotatedElement ? (AnnotatedElement) typeVariable : null;
        if (annotatedElement == null || (declaredAnnotations = annotatedElement.getDeclaredAnnotations()) == null) {
            return null;
        }
        return o4.a.d(declaredAnnotations, cVar);
    }
}

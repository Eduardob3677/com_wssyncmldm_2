package h4;

/* loaded from: classes.dex */
public final class O extends N {

    /* renamed from: a, reason: collision with root package name */
    public final int f7037a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC0468v f7038b;

    public O(int i5, AbstractC0468v abstractC0468v) {
        if (i5 == 0) {
            e(0);
            throw null;
        }
        if (abstractC0468v == null) {
            e(1);
            throw null;
        }
        this.f7037a = i5;
        this.f7038b = abstractC0468v;
    }

    public static /* synthetic */ void e(int i5) {
        String str = (i5 == 4 || i5 == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i5 == 4 || i5 == 5) ? 2 : 3];
        switch (i5) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "type";
                break;
            case 4:
            case 5:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
                break;
            case 6:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "projection";
                break;
        }
        if (i5 == 4) {
            objArr[1] = "getProjectionKind";
        } else if (i5 != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
        } else {
            objArr[1] = "getType";
        }
        if (i5 == 3) {
            objArr[2] = "replaceType";
        } else if (i5 != 4 && i5 != 5) {
            if (i5 != 6) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "refine";
            }
        }
        String str2 = String.format(str, objArr);
        if (i5 != 4 && i5 != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // h4.N
    public final int a() {
        int i5 = this.f7037a;
        if (i5 != 0) {
            return i5;
        }
        e(4);
        throw null;
    }

    @Override // h4.N
    public final AbstractC0468v b() {
        AbstractC0468v abstractC0468v = this.f7038b;
        if (abstractC0468v != null) {
            return abstractC0468v;
        }
        e(5);
        throw null;
    }

    @Override // h4.N
    public final boolean c() {
        return false;
    }

    @Override // h4.N
    public final N d(i4.f fVar) {
        if (fVar == null) {
            e(6);
            throw null;
        }
        AbstractC0468v abstractC0468v = this.f7038b;
        d3.i.e("type", abstractC0468v);
        return new O(this.f7037a, abstractC0468v);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public O(AbstractC0468v abstractC0468v) {
        this(1, abstractC0468v);
        if (abstractC0468v != null) {
        } else {
            e(2);
            throw null;
        }
    }
}

package s4;

import e.v;
import java.util.regex.Matcher;

/* loaded from: classes.dex */
public final class a extends R2.d {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v f9076c;

    public a(v vVar) {
        this.f9076c = vVar;
    }

    @Override // R2.d, java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof String) {
            return super.contains((String) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i5) {
        String strGroup = ((Matcher) this.f9076c.f6792c).group(i5);
        return strGroup == null ? "" : strGroup;
    }

    @Override // R2.d, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof String) {
            return super.indexOf((String) obj);
        }
        return -1;
    }

    @Override // R2.d
    public final int l() {
        return ((Matcher) this.f9076c.f6792c).groupCount() + 1;
    }

    @Override // R2.d, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof String) {
            return super.lastIndexOf((String) obj);
        }
        return -1;
    }
}

package Q2;

import java.io.Serializable;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class a implements c, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2207c;

    /* renamed from: d, reason: collision with root package name */
    public Object f2208d;

    public a(String str) {
        this.f2207c = 2;
        Pattern patternCompile = Pattern.compile(str);
        d3.i.d("compile(pattern)", patternCompile);
        this.f2208d = patternCompile;
    }

    @Override // Q2.c
    public Object getValue() {
        return this.f2208d;
    }

    public final String toString() {
        switch (this.f2207c) {
            case 0:
                return String.valueOf(this.f2208d);
            case 1:
                return String.valueOf(this.f2208d);
            default:
                String string = ((Pattern) this.f2208d).toString();
                d3.i.d("nativePattern.toString()", string);
                return string;
        }
    }

    public a(int i5) {
        this.f2207c = i5;
        switch (i5) {
            case 1:
                break;
            default:
                this.f2208d = null;
                break;
        }
    }
}

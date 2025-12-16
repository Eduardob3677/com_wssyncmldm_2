package h0;

import androidx.recyclerview.widget.RecyclerView;
import d3.r;

/* renamed from: h0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0432c {
    public static final boolean a(int i5) {
        return i5 == 6 || i5 == 4;
    }

    public static /* synthetic */ boolean b(int i5) {
        if (i5 == 1) {
            return true;
        }
        if (i5 == 2) {
            return false;
        }
        if (i5 == 3) {
            return true;
        }
        throw null;
    }

    public static /* synthetic */ String c(int i5) {
        switch (i5) {
            case 1:
                return "No member resolution should be done on captured type, it used only during constraint system resolution";
            case 2:
                return "Scope for integer literal type (%s)";
            case 3:
                return "Error scope for erased receiver type";
            case 4:
                return "Scope for abbreviation %s";
            case 5:
                return "Scope for stub type %s";
            case 6:
                return "A scope for common supertype which is not a normal classifier";
            case 7:
                return "Scope for error type %s";
            case 8:
                return "Scope for unsupported type %s";
            case 9:
                return "Error scope for class %s with arguments: %s";
            case 10:
                return "Error resolution candidate for call %s";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String d(int i5) {
        if (i5 == 1) {
            return "";
        }
        if (i5 == 2) {
            return "in";
        }
        if (i5 == 3) {
            return "out";
        }
        throw null;
    }

    public static /* synthetic */ long e(int i5) {
        if (i5 == 1) {
            return 0L;
        }
        if (i5 == 2) {
            return 1L;
        }
        if (i5 == 3) {
            return 2L;
        }
        if (i5 == 4) {
            return 3L;
        }
        if (i5 == 5) {
            return 4L;
        }
        throw null;
    }

    public static String f(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.G());
        return sb.toString();
    }

    public static String g(r rVar, Class cls, StringBuilder sb) {
        sb.append(rVar.b(cls));
        return sb.toString();
    }

    public static String h(String str, String str2) {
        return str + str2;
    }

    public static String i(String str, String str2) {
        return str + str2;
    }

    public static /* synthetic */ String j(int i5) {
        if (i5 == 1) {
            return "DECLARATION";
        }
        if (i5 == 2) {
            return "FAKE_OVERRIDE";
        }
        if (i5 == 3) {
            return "DELEGATION";
        }
        if (i5 == 4) {
            return "SYNTHESIZED";
        }
        throw null;
    }

    public static /* synthetic */ String k(int i5) {
        if (i5 == 1) {
            return "FINAL";
        }
        if (i5 == 2) {
            return "SEALED";
        }
        if (i5 == 3) {
            return "OPEN";
        }
        if (i5 == 4) {
            return "ABSTRACT";
        }
        throw null;
    }

    public static /* synthetic */ String l(int i5) {
        switch (i5) {
            case 1:
                return "NONE";
            case 2:
                return "LEFT";
            case 3:
                return "TOP";
            case 4:
                return "RIGHT";
            case 5:
                return "BOTTOM";
            case 6:
                return "BASELINE";
            case 7:
                return "CENTER";
            case 8:
                return "CENTER_X";
            case 9:
                return "CENTER_Y";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String m(int i5) {
        return i5 != 1 ? i5 != 2 ? "null" : "COMMON" : "SUPERTYPE";
    }

    public static /* synthetic */ String n(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? "null" : "OUT_VARIANCE" : "IN_VARIANCE" : "INVARIANT";
    }

    public static /* synthetic */ String o(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? "null" : "OUT" : "IN" : "INVARIANT";
    }

    public static /* synthetic */ String p(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? i5 != 4 ? i5 != 5 ? "null" : "REGISTER_ERROR" : "REGISTERED" : "UNREGISTERED" : "NOT_GENERATED" : "ATTEMPT_MIGRATION";
    }

    public static /* synthetic */ String q(int i5) {
        return i5 != 1 ? i5 != 2 ? "null" : "BAD_CONFIG" : "OK";
    }

    public static /* synthetic */ String r(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? "null" : "AUTH_ERROR" : "BAD_CONFIG" : "OK";
    }

    public static /* synthetic */ String s(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? i5 != 4 ? "null" : "SYNTHESIZED" : "DELEGATION" : "FAKE_OVERRIDE" : "DECLARATION";
    }

    public static /* synthetic */ String t(int i5) {
        switch (i5) {
            case 1:
                return "UNKNOWN";
            case 2:
                return "HORIZONTAL_DIMENSION";
            case 3:
                return "VERTICAL_DIMENSION";
            case 4:
                return "LEFT";
            case 5:
                return "RIGHT";
            case 6:
                return "TOP";
            case 7:
                return "BOTTOM";
            case 8:
                return "BASELINE";
            default:
                return "null";
        }
    }
}

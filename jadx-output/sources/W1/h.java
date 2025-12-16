package W1;

import c1.AbstractC0213D;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public class h extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(String str) {
        super(str);
        AbstractC0213D.d(str, "Detail message must not be empty");
    }

    public h(Status status) {
        String str = status.f5310e;
        str = str == null ? "" : str;
        StringBuilder sb = new StringBuilder(str.length() + 13);
        sb.append(status.f5309d);
        sb.append(": ");
        sb.append(str);
        super(sb.toString());
    }
}

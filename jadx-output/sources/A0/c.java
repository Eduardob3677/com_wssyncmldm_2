package A0;

import android.os.Parcel;

/* loaded from: classes.dex */
public class c extends RuntimeException {
    public /* synthetic */ c() {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public c(String str, Parcel parcel) {
        int iDataPosition = parcel.dataPosition();
        int iDataSize = parcel.dataSize();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 41);
        sb.append(str);
        sb.append(" Parcel: pos=");
        sb.append(iDataPosition);
        sb.append(" size=");
        sb.append(iDataSize);
        super(sb.toString());
    }
}

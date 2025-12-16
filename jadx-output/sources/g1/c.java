package g1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.stats.WakeLockEvent;
import f1.AbstractC0420a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iQ0 = AbstractC0420a.q0(parcel);
        int iD0 = 0;
        int iD02 = 0;
        int iD03 = 0;
        int iD04 = 0;
        boolean zC0 = false;
        long jE0 = 0;
        long jE02 = 0;
        long jE03 = 0;
        String strN = null;
        ArrayList arrayListO = null;
        String strN2 = null;
        String strN3 = null;
        String strN4 = null;
        String strN5 = null;
        float f = 0.0f;
        while (parcel.dataPosition() < iQ0) {
            int i5 = parcel.readInt();
            switch (65535 & i5) {
                case 1:
                    iD0 = AbstractC0420a.d0(parcel, i5);
                    break;
                case 2:
                    jE0 = AbstractC0420a.e0(parcel, i5);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    AbstractC0420a.n0(parcel, i5);
                    break;
                case 4:
                    strN = AbstractC0420a.n(parcel, i5);
                    break;
                case 5:
                    iD03 = AbstractC0420a.d0(parcel, i5);
                    break;
                case 6:
                    arrayListO = AbstractC0420a.o(parcel, i5);
                    break;
                case 8:
                    jE02 = AbstractC0420a.e0(parcel, i5);
                    break;
                case 10:
                    strN3 = AbstractC0420a.n(parcel, i5);
                    break;
                case 11:
                    iD02 = AbstractC0420a.d0(parcel, i5);
                    break;
                case 12:
                    strN2 = AbstractC0420a.n(parcel, i5);
                    break;
                case 13:
                    strN4 = AbstractC0420a.n(parcel, i5);
                    break;
                case 14:
                    iD04 = AbstractC0420a.d0(parcel, i5);
                    break;
                case 15:
                    AbstractC0420a.u0(parcel, i5, 4);
                    f = parcel.readFloat();
                    break;
                case 16:
                    jE03 = AbstractC0420a.e0(parcel, i5);
                    break;
                case 17:
                    strN5 = AbstractC0420a.n(parcel, i5);
                    break;
                case 18:
                    zC0 = AbstractC0420a.c0(parcel, i5);
                    break;
            }
        }
        AbstractC0420a.u(parcel, iQ0);
        return new WakeLockEvent(iD0, jE0, iD02, strN, iD03, arrayListO, strN2, jE02, iD04, strN3, strN4, f, jE03, strN5, zC0);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i5) {
        return new WakeLockEvent[i5];
    }
}

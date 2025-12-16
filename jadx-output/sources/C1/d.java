package C1;

import c3.InterfaceC0222b;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import d3.i;
import h4.AbstractC0468v;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class d implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f358a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f359b;

    public /* synthetic */ d(int i5, Object obj) {
        this.f358a = i5;
        this.f359b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f358a) {
            case 0:
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int iCompareTo = Boolean.valueOf(materialButton.f5902r).compareTo(Boolean.valueOf(materialButton2.f5902r));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                if (iCompareTo2 != 0) {
                    return iCompareTo2;
                }
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.f359b;
                return Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton)).compareTo(Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton2)));
            default:
                AbstractC0468v abstractC0468v = (AbstractC0468v) obj;
                i.d("it", abstractC0468v);
                InterfaceC0222b interfaceC0222b = (InterfaceC0222b) this.f359b;
                String string = interfaceC0222b.e(abstractC0468v).toString();
                AbstractC0468v abstractC0468v2 = (AbstractC0468v) obj2;
                i.d("it", abstractC0468v2);
                return L2.b.e(string, interfaceC0222b.e(abstractC0468v2).toString());
        }
    }
}

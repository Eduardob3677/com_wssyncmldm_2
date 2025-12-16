package A2;

import F1.t;
import S1.j;
import S1.v;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.viewpager2.widget.ViewPager2;
import c1.w;
import com.google.android.material.appbar.model.view.ViewPagerAppBarView;
import com.google.android.material.chip.SeslExpandableContainer;
import com.google.android.material.datepicker.m;
import d3.i;
import f0.DialogInterfaceOnClickListenerC0419b;
import java.util.ArrayList;
import k.C0589f1;
import k.InterfaceC0580c1;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f60c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f61d;

    public /* synthetic */ d(int i5, Object obj) {
        this.f60c = i5;
        this.f61d = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f60c) {
            case 0:
                DialogInterfaceOnClickListenerC0419b dialogInterfaceOnClickListenerC0419b = (DialogInterfaceOnClickListenerC0419b) this.f61d;
                dialogInterfaceOnClickListenerC0419b.onClick(dialogInterfaceOnClickListenerC0419b, -1);
                return;
            case 1:
                SeslExpandableContainer seslExpandableContainer = (SeslExpandableContainer) this.f61d;
                seslExpandableContainer.f5946g = !seslExpandableContainer.f5946g;
                seslExpandableContainer.a();
                seslExpandableContainer.post(new t(seslExpandableContainer, 1));
                return;
            case 2:
                S1.d dVar = (S1.d) this.f61d;
                EditText editText = dVar.f2472i;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                dVar.q();
                return;
            case 3:
                ((j) this.f61d).u();
                return;
            case 4:
                v vVar = (v) this.f61d;
                EditText editText2 = vVar.f;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = vVar.f;
                if (editText3 == null || !(editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    vVar.f.setTransformationMethod(PasswordTransformationMethod.getInstance());
                } else {
                    vVar.f.setTransformationMethod(null);
                }
                if (selectionEnd >= 0) {
                    vVar.f.setSelection(selectionEnd);
                }
                vVar.q();
                return;
            case 5:
                ((m) this.f61d).g();
                throw null;
            default:
                C0589f1 c0589f1 = (C0589f1) this.f61d;
                i.e("this$0", c0589f1);
                InterfaceC0580c1 interfaceC0580c1 = c0589f1.f7852d;
                if (interfaceC0580c1 != null) {
                    ArrayList arrayList = c0589f1.f7851c;
                    i.e("<this>", arrayList);
                    int iIndexOf = arrayList.indexOf(view);
                    ViewPager2 viewpager = ((ViewPagerAppBarView) ((w) interfaceC0580c1).f5265c).getViewpager();
                    if (viewpager != null) {
                        viewpager.c(iIndexOf);
                        return;
                    }
                    return;
                }
                return;
        }
    }
}

package X;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import android.widget.TextView;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class b extends InputConnectionWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f2845a;

    /* renamed from: b, reason: collision with root package name */
    public final P1.e f2846b;

    public b(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        P1.e eVar = new P1.e(7);
        super(inputConnection, false);
        this.f2845a = editText;
        this.f2846b = eVar;
        if (androidx.emoji2.text.j.f3695j != null) {
            androidx.emoji2.text.j jVarA = androidx.emoji2.text.j.a();
            if (jVarA.b() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            androidx.emoji2.text.e eVar2 = jVarA.f3700e;
            eVar2.getClass();
            Bundle bundle = editorInfo.extras;
            W.b bVar = (W.b) eVar2.f3690c.f6258d;
            int iA = bVar.a(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", iA != 0 ? ((ByteBuffer) bVar.f938d).getInt(iA + bVar.f935a) : 0);
            Bundle bundle2 = editorInfo.extras;
            eVar2.f3688a.getClass();
            bundle2.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i5, int i6) {
        Editable editableText = this.f2845a.getEditableText();
        this.f2846b.getClass();
        return P1.e.h(this, editableText, i5, i6, false) || super.deleteSurroundingText(i5, i6);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i5, int i6) {
        Editable editableText = this.f2845a.getEditableText();
        this.f2846b.getClass();
        return P1.e.h(this, editableText, i5, i6, true) || super.deleteSurroundingTextInCodePoints(i5, i6);
    }
}

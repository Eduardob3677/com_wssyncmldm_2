package androidx.databinding;

/* loaded from: classes.dex */
public abstract class a implements j {
    private transient p mCallbacks;

    @Override // androidx.databinding.j
    public void addOnPropertyChangedCallback(i iVar) {
        synchronized (this) {
            try {
                if (this.mCallbacks == null) {
                    this.mCallbacks = new p(p.f3674h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mCallbacks.a(iVar);
    }

    public void notifyChange() {
        synchronized (this) {
            try {
                p pVar = this.mCallbacks;
                if (pVar == null) {
                    return;
                }
                pVar.c(0, this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void notifyPropertyChanged(int i5) {
        synchronized (this) {
            try {
                p pVar = this.mCallbacks;
                if (pVar == null) {
                    return;
                }
                pVar.c(i5, this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.databinding.j
    public void removeOnPropertyChangedCallback(i iVar) {
        synchronized (this) {
            try {
                p pVar = this.mCallbacks;
                if (pVar == null) {
                    return;
                }
                pVar.f(iVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

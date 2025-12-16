package D1;

import com.google.android.material.carousel.CarouselLayoutManager;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final int f461a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f462b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CarouselLayoutManager f463c;

    public e(int i5) {
        this.f461a = i5;
    }

    public final int a() {
        switch (this.f462b) {
            case 0:
                return this.f463c.f7351o;
            default:
                CarouselLayoutManager carouselLayoutManager = this.f463c;
                return carouselLayoutManager.f7351o - carouselLayoutManager.B();
        }
    }

    public final int b() {
        switch (this.f462b) {
            case 0:
                return this.f463c.C();
            default:
                return 0;
        }
    }

    public final int c() {
        switch (this.f462b) {
            case 0:
                CarouselLayoutManager carouselLayoutManager = this.f463c;
                return carouselLayoutManager.n - carouselLayoutManager.D();
            default:
                return this.f463c.n;
        }
    }

    public final int d() {
        switch (this.f462b) {
            case 0:
                return 0;
            default:
                CarouselLayoutManager carouselLayoutManager = this.f463c;
                if (carouselLayoutManager.G0()) {
                    return carouselLayoutManager.n;
                }
                return 0;
        }
    }

    public final int e() {
        switch (this.f462b) {
            case 0:
                return 0;
            default:
                return this.f463c.E();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(CarouselLayoutManager carouselLayoutManager, int i5) {
        this(1);
        this.f462b = i5;
        switch (i5) {
            case 1:
                this.f463c = carouselLayoutManager;
                this(0);
                break;
            default:
                this.f463c = carouselLayoutManager;
                break;
        }
    }
}

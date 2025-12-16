package V;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public double f2774a;

    /* renamed from: b, reason: collision with root package name */
    public double f2775b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2776c;

    /* renamed from: d, reason: collision with root package name */
    public double f2777d;

    /* renamed from: e, reason: collision with root package name */
    public double f2778e;
    public double f;

    /* renamed from: g, reason: collision with root package name */
    public double f2779g;

    /* renamed from: h, reason: collision with root package name */
    public double f2780h;

    /* renamed from: i, reason: collision with root package name */
    public double f2781i;

    /* renamed from: j, reason: collision with root package name */
    public final c f2782j;

    public f() {
        this.f2774a = Math.sqrt(1500.0d);
        this.f2775b = 0.5d;
        this.f2776c = false;
        this.f2781i = Double.MAX_VALUE;
        this.f2782j = new c();
    }

    public final c a(double d2, double d5, long j3) {
        double dCos;
        double dPow;
        if (!this.f2776c) {
            if (this.f2781i == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d6 = this.f2775b;
            if (d6 > 1.0d) {
                double d7 = this.f2774a;
                this.f = (Math.sqrt((d6 * d6) - 1.0d) * d7) + ((-d6) * d7);
                double d8 = this.f2775b;
                double d9 = this.f2774a;
                this.f2779g = ((-d8) * d9) - (Math.sqrt((d8 * d8) - 1.0d) * d9);
            } else if (d6 >= 0.0d && d6 < 1.0d) {
                this.f2780h = Math.sqrt(1.0d - (d6 * d6)) * this.f2774a;
            }
            this.f2776c = true;
        }
        double d10 = j3 / 1000.0d;
        double d11 = d2 - this.f2781i;
        double d12 = this.f2775b;
        if (d12 > 1.0d) {
            double d13 = this.f2779g;
            double d14 = this.f;
            double d15 = d11 - (((d13 * d11) - d5) / (d13 - d14));
            double d16 = ((d11 * d13) - d5) / (d13 - d14);
            dPow = (Math.pow(2.718281828459045d, this.f * d10) * d16) + (Math.pow(2.718281828459045d, d13 * d10) * d15);
            double d17 = this.f2779g;
            double dPow2 = Math.pow(2.718281828459045d, d17 * d10) * d15 * d17;
            double d18 = this.f;
            dCos = (Math.pow(2.718281828459045d, d18 * d10) * d16 * d18) + dPow2;
        } else if (d12 == 1.0d) {
            double d19 = this.f2774a;
            double d20 = (d19 * d11) + d5;
            double d21 = (d20 * d10) + d11;
            double dPow3 = Math.pow(2.718281828459045d, (-d19) * d10) * d21;
            double dPow4 = Math.pow(2.718281828459045d, (-this.f2774a) * d10) * d21;
            double d22 = this.f2774a;
            dCos = (Math.pow(2.718281828459045d, (-d22) * d10) * d20) + (dPow4 * (-d22));
            dPow = dPow3;
        } else {
            double d23 = 1.0d / this.f2780h;
            double d24 = this.f2774a;
            double d25 = ((d12 * d24 * d11) + d5) * d23;
            double dSin = ((Math.sin(this.f2780h * d10) * d25) + (Math.cos(this.f2780h * d10) * d11)) * Math.pow(2.718281828459045d, (-d12) * d24 * d10);
            double d26 = this.f2774a;
            double d27 = this.f2775b;
            double d28 = (-d26) * dSin * d27;
            double dPow5 = Math.pow(2.718281828459045d, (-d27) * d26 * d10);
            double d29 = this.f2780h;
            double dSin2 = Math.sin(d29 * d10) * (-d29) * d11;
            double d30 = this.f2780h;
            dCos = (((Math.cos(d30 * d10) * d25 * d30) + dSin2) * dPow5) + d28;
            dPow = dSin;
        }
        float f = (float) (dPow + this.f2781i);
        c cVar = this.f2782j;
        cVar.f2761a = f;
        cVar.f2762b = (float) dCos;
        return cVar;
    }

    public f(float f) {
        this.f2774a = Math.sqrt(1500.0d);
        this.f2775b = 0.5d;
        this.f2776c = false;
        this.f2782j = new c();
        this.f2781i = f;
    }
}

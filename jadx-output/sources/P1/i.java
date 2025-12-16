package P1;

/* loaded from: classes.dex */
public final class i extends Z0.j {
    @Override // Z0.j
    public final void J(u uVar, float f, float f5) {
        uVar.d(f5 * f, 180.0f, 90.0f);
        float f6 = f5 * 2.0f * f;
        q qVar = new q(0.0f, 0.0f, f6, f6);
        qVar.f = 180.0f;
        qVar.f2141g = 90.0f;
        uVar.f2152g.add(qVar);
        o oVar = new o(qVar);
        uVar.a(180.0f);
        uVar.f2153h.add(oVar);
        uVar.f2151e = 270.0f;
        float f7 = (0.0f + f6) * 0.5f;
        float f8 = (f6 - 0.0f) / 2.0f;
        double d2 = 270.0f;
        uVar.f2149c = (((float) Math.cos(Math.toRadians(d2))) * f8) + f7;
        uVar.f2150d = (f8 * ((float) Math.sin(Math.toRadians(d2)))) + f7;
    }
}

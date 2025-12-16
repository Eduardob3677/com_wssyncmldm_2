.class public final Landroidx/preference/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/preference/TwoStatePreference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/TwoStatePreference;I)V
    .locals 0

    iput p2, p0, Landroidx/preference/a;->a:I

    iput-object p1, p0, Landroidx/preference/a;->b:Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget p1, p0, Landroidx/preference/a;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Landroidx/preference/a;->b:Landroidx/preference/TwoStatePreference;

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Ljava/io/Serializable;)V

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->D(Z)V

    return-void

    :pswitch_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Landroidx/preference/a;->b:Landroidx/preference/TwoStatePreference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Ljava/io/Serializable;)V

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->D(Z)V

    return-void

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Landroidx/preference/a;->b:Landroidx/preference/TwoStatePreference;

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Ljava/io/Serializable;)V

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->D(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

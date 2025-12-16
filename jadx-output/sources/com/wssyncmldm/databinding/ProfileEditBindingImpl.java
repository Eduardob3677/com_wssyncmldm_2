package com.wssyncmldm.databinding;

import Z0.j;
import android.database.SQLException;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import androidx.databinding.f;
import androidx.databinding.h;
import androidx.databinding.q;
import androidx.databinding.v;
import androidx.lifecycle.F;
import com.idm.fotaagent.enabler.ui.admin.profile.AdminProfileViewModel;
import com.wssyncmldm.R;
import com.wssyncmldm.generated.callback.OnClickListener;
import f1.AbstractC0420a;
import i3.x;
import java.util.List;

/* loaded from: classes.dex */
public class ProfileEditBindingImpl extends ProfileEditBinding implements OnClickListener.Listener {
    private static final q sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private h clientAuthandroidSelectedItemPositionAttrChanged;
    private h clientIdandroidTextAttrChanged;
    private h clientPwdandroidTextAttrChanged;
    private final View.OnClickListener mCallback2;
    private long mDirtyFlags;
    private final ScrollView mboundView0;
    private h profileNameandroidTextAttrChanged;
    private h serverAddressandroidTextAttrChanged;
    private h serverAuthandroidSelectedItemPositionAttrChanged;
    private h serverIdandroidTextAttrChanged;
    private h serverPwdandroidTextAttrChanged;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.ProfileLinear, 10);
    }

    public ProfileEditBindingImpl(f fVar, View view) {
        this(fVar, view, v.mapBindings(fVar, view, 11, (q) null, sViewsWithIds));
    }

    private boolean onChangeViewModelClientAuthTypeIndex(F f, int i5) {
        if (i5 != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        return true;
    }

    private boolean onChangeViewModelClientId(F f, int i5) {
        if (i5 != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        return true;
    }

    private boolean onChangeViewModelClientPwd(F f, int i5) {
        if (i5 != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        return true;
    }

    private boolean onChangeViewModelProfileName(F f, int i5) {
        if (i5 != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeViewModelServerAuthTypeIndex(F f, int i5) {
        if (i5 != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 32;
        }
        return true;
    }

    private boolean onChangeViewModelServerId(F f, int i5) {
        if (i5 != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    private boolean onChangeViewModelServerPwd(F f, int i5) {
        if (i5 != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeViewModelServerUrl(F f, int i5) {
        if (i5 != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    @Override // com.wssyncmldm.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i5, View view) throws SQLException {
        AdminProfileViewModel adminProfileViewModel = this.mViewModel;
        if (adminProfileViewModel != null) {
            adminProfileViewModel.saveProfileToDBIfPossible();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0116  */
    @Override // androidx.databinding.v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void executeBindings() {
        long j3;
        long j5;
        String str;
        String str2;
        int i5;
        String str3;
        String str4;
        String str5;
        List<String> authTypes;
        int iSafeUnbox;
        String str6;
        String str7;
        int iSafeUnbox2;
        synchronized (this) {
            j3 = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        AdminProfileViewModel adminProfileViewModel = this.mViewModel;
        if ((1023 & j3) == 0) {
            j5 = 768;
            str = null;
            str2 = null;
            i5 = 0;
            str3 = null;
            str4 = null;
            str5 = null;
            authTypes = null;
            iSafeUnbox = 0;
            str6 = null;
        } else if ((j3 & 769) == 0) {
            str2 = null;
            if ((j3 & 770) == 0) {
                str7 = null;
                if ((j3 & 772) == 0) {
                    str3 = null;
                    if ((j3 & 776) == 0) {
                        str4 = null;
                        if ((j3 & 784) == 0) {
                            str5 = null;
                            if ((j3 & 800) == 0) {
                                F f = adminProfileViewModel != null ? adminProfileViewModel.serverAuthTypeIndex : null;
                                updateLiveDataRegistration(5, f);
                                iSafeUnbox = v.safeUnbox(f != null ? (Integer) f.d() : null);
                            } else {
                                iSafeUnbox = 0;
                            }
                            if ((j3 & 832) == 0) {
                                str6 = null;
                                if ((j3 & 896) == 0) {
                                    F f5 = adminProfileViewModel != null ? adminProfileViewModel.clientAuthTypeIndex : null;
                                    updateLiveDataRegistration(7, f5);
                                    iSafeUnbox2 = v.safeUnbox(f5 != null ? (Integer) f5.d() : null);
                                } else {
                                    iSafeUnbox2 = 0;
                                }
                                j5 = 768;
                                if ((j3 & 768) != 0 || adminProfileViewModel == null) {
                                    str = str7;
                                    i5 = iSafeUnbox2;
                                    authTypes = null;
                                } else {
                                    int i6 = iSafeUnbox2;
                                    authTypes = adminProfileViewModel.getAuthTypes();
                                    str = str7;
                                    i5 = i6;
                                }
                            } else {
                                F f6 = adminProfileViewModel != null ? adminProfileViewModel.clientId : null;
                                updateLiveDataRegistration(6, f6);
                                if (f6 != null) {
                                    str6 = (String) f6.d();
                                }
                                if ((j3 & 896) == 0) {
                                }
                                j5 = 768;
                                if ((j3 & 768) != 0) {
                                    str = str7;
                                    i5 = iSafeUnbox2;
                                    authTypes = null;
                                }
                            }
                        } else {
                            F f7 = adminProfileViewModel != null ? adminProfileViewModel.clientPwd : null;
                            updateLiveDataRegistration(4, f7);
                            if (f7 != null) {
                                str5 = (String) f7.d();
                            }
                            if ((j3 & 800) == 0) {
                            }
                            if ((j3 & 832) == 0) {
                            }
                        }
                    } else {
                        F f8 = adminProfileViewModel != null ? adminProfileViewModel.serverId : null;
                        updateLiveDataRegistration(3, f8);
                        if (f8 != null) {
                            str4 = (String) f8.d();
                        }
                        if ((j3 & 784) == 0) {
                        }
                    }
                } else {
                    F f9 = adminProfileViewModel != null ? adminProfileViewModel.serverPwd : null;
                    updateLiveDataRegistration(2, f9);
                    if (f9 != null) {
                        str3 = (String) f9.d();
                    }
                    if ((j3 & 776) == 0) {
                    }
                }
            } else {
                F f10 = adminProfileViewModel != null ? adminProfileViewModel.profileName : null;
                updateLiveDataRegistration(1, f10);
                if (f10 != null) {
                    str7 = (String) f10.d();
                }
                if ((j3 & 772) == 0) {
                }
            }
        } else {
            F f11 = adminProfileViewModel != null ? adminProfileViewModel.serverUrl : null;
            updateLiveDataRegistration(0, f11);
            if (f11 != null) {
                str2 = (String) f11.d();
            }
            if ((j3 & 770) == 0) {
            }
        }
        if ((j5 & j3) != 0) {
            j.c0(this.clientAuth, authTypes);
            j.c0(this.serverAuth, authTypes);
        }
        if ((896 & j3) != 0) {
            Spinner spinner = this.clientAuth;
            if (spinner.getSelectedItemPosition() != i5) {
                spinner.setSelection(i5);
            }
        }
        if ((512 & j3) != 0) {
            AbstractC0420a.k0(this.clientAuth, null, this.clientAuthandroidSelectedItemPositionAttrChanged);
            x.d1(this.clientId, this.clientIdandroidTextAttrChanged);
            x.d1(this.clientPwd, this.clientPwdandroidTextAttrChanged);
            x.d1(this.profileName, this.profileNameandroidTextAttrChanged);
            this.saveBtn.setOnClickListener(this.mCallback2);
            x.d1(this.serverAddress, this.serverAddressandroidTextAttrChanged);
            AbstractC0420a.k0(this.serverAuth, null, this.serverAuthandroidSelectedItemPositionAttrChanged);
            x.d1(this.serverId, this.serverIdandroidTextAttrChanged);
            x.d1(this.serverPwd, this.serverPwdandroidTextAttrChanged);
        }
        if ((832 & j3) != 0) {
            x.c1(this.clientId, str6);
        }
        if ((784 & j3) != 0) {
            x.c1(this.clientPwd, str5);
        }
        if ((j3 & 770) != 0) {
            x.c1(this.profileName, str);
        }
        if ((j3 & 769) != 0) {
            x.c1(this.serverAddress, str2);
        }
        if ((800 & j3) != 0) {
            Spinner spinner2 = this.serverAuth;
            if (spinner2.getSelectedItemPosition() != iSafeUnbox) {
                spinner2.setSelection(iSafeUnbox);
            }
        }
        if ((j3 & 776) != 0) {
            x.c1(this.serverId, str4);
        }
        if ((j3 & 772) != 0) {
            x.c1(this.serverPwd, str3);
        }
    }

    @Override // androidx.databinding.v
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                return this.mDirtyFlags != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.databinding.v
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 512L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.v
    public boolean onFieldChange(int i5, Object obj, int i6) {
        switch (i5) {
            case 0:
                return onChangeViewModelServerUrl((F) obj, i6);
            case 1:
                return onChangeViewModelProfileName((F) obj, i6);
            case 2:
                return onChangeViewModelServerPwd((F) obj, i6);
            case 3:
                return onChangeViewModelServerId((F) obj, i6);
            case 4:
                return onChangeViewModelClientPwd((F) obj, i6);
            case 5:
                return onChangeViewModelServerAuthTypeIndex((F) obj, i6);
            case 6:
                return onChangeViewModelClientId((F) obj, i6);
            case 7:
                return onChangeViewModelClientAuthTypeIndex((F) obj, i6);
            default:
                return false;
        }
    }

    @Override // androidx.databinding.v
    public boolean setVariable(int i5, Object obj) {
        if (6 != i5) {
            return false;
        }
        setViewModel((AdminProfileViewModel) obj);
        return true;
    }

    @Override // com.wssyncmldm.databinding.ProfileEditBinding
    public void setViewModel(AdminProfileViewModel adminProfileViewModel) {
        this.mViewModel = adminProfileViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 256;
        }
        notifyPropertyChanged(6);
        super.requestRebind();
    }

    private ProfileEditBindingImpl(f fVar, View view, Object[] objArr) {
        super(fVar, view, 8, (LinearLayout) objArr[10], (Spinner) objArr[8], (EditText) objArr[6], (EditText) objArr[7], (EditText) objArr[1], (Button) objArr[9], (EditText) objArr[2], (Spinner) objArr[5], (EditText) objArr[3], (EditText) objArr[4]);
        this.clientAuthandroidSelectedItemPositionAttrChanged = new h() { // from class: com.wssyncmldm.databinding.ProfileEditBindingImpl.1
            @Override // androidx.databinding.h
            public void onChange() {
                F f;
                int selectedItemPosition = ProfileEditBindingImpl.this.clientAuth.getSelectedItemPosition();
                AdminProfileViewModel adminProfileViewModel = ProfileEditBindingImpl.this.mViewModel;
                if (adminProfileViewModel == null || (f = adminProfileViewModel.clientAuthTypeIndex) == null) {
                    return;
                }
                f.k(Integer.valueOf(selectedItemPosition));
            }
        };
        this.clientIdandroidTextAttrChanged = new h() { // from class: com.wssyncmldm.databinding.ProfileEditBindingImpl.2
            @Override // androidx.databinding.h
            public void onChange() {
                F f;
                String strA0 = x.a0(ProfileEditBindingImpl.this.clientId);
                AdminProfileViewModel adminProfileViewModel = ProfileEditBindingImpl.this.mViewModel;
                if (adminProfileViewModel == null || (f = adminProfileViewModel.clientId) == null) {
                    return;
                }
                f.k(strA0);
            }
        };
        this.clientPwdandroidTextAttrChanged = new h() { // from class: com.wssyncmldm.databinding.ProfileEditBindingImpl.3
            @Override // androidx.databinding.h
            public void onChange() {
                F f;
                String strA0 = x.a0(ProfileEditBindingImpl.this.clientPwd);
                AdminProfileViewModel adminProfileViewModel = ProfileEditBindingImpl.this.mViewModel;
                if (adminProfileViewModel == null || (f = adminProfileViewModel.clientPwd) == null) {
                    return;
                }
                f.k(strA0);
            }
        };
        this.profileNameandroidTextAttrChanged = new h() { // from class: com.wssyncmldm.databinding.ProfileEditBindingImpl.4
            @Override // androidx.databinding.h
            public void onChange() {
                F f;
                String strA0 = x.a0(ProfileEditBindingImpl.this.profileName);
                AdminProfileViewModel adminProfileViewModel = ProfileEditBindingImpl.this.mViewModel;
                if (adminProfileViewModel == null || (f = adminProfileViewModel.profileName) == null) {
                    return;
                }
                f.k(strA0);
            }
        };
        this.serverAddressandroidTextAttrChanged = new h() { // from class: com.wssyncmldm.databinding.ProfileEditBindingImpl.5
            @Override // androidx.databinding.h
            public void onChange() {
                F f;
                String strA0 = x.a0(ProfileEditBindingImpl.this.serverAddress);
                AdminProfileViewModel adminProfileViewModel = ProfileEditBindingImpl.this.mViewModel;
                if (adminProfileViewModel == null || (f = adminProfileViewModel.serverUrl) == null) {
                    return;
                }
                f.k(strA0);
            }
        };
        this.serverAuthandroidSelectedItemPositionAttrChanged = new h() { // from class: com.wssyncmldm.databinding.ProfileEditBindingImpl.6
            @Override // androidx.databinding.h
            public void onChange() {
                F f;
                int selectedItemPosition = ProfileEditBindingImpl.this.serverAuth.getSelectedItemPosition();
                AdminProfileViewModel adminProfileViewModel = ProfileEditBindingImpl.this.mViewModel;
                if (adminProfileViewModel == null || (f = adminProfileViewModel.serverAuthTypeIndex) == null) {
                    return;
                }
                f.k(Integer.valueOf(selectedItemPosition));
            }
        };
        this.serverIdandroidTextAttrChanged = new h() { // from class: com.wssyncmldm.databinding.ProfileEditBindingImpl.7
            @Override // androidx.databinding.h
            public void onChange() {
                F f;
                String strA0 = x.a0(ProfileEditBindingImpl.this.serverId);
                AdminProfileViewModel adminProfileViewModel = ProfileEditBindingImpl.this.mViewModel;
                if (adminProfileViewModel == null || (f = adminProfileViewModel.serverId) == null) {
                    return;
                }
                f.k(strA0);
            }
        };
        this.serverPwdandroidTextAttrChanged = new h() { // from class: com.wssyncmldm.databinding.ProfileEditBindingImpl.8
            @Override // androidx.databinding.h
            public void onChange() {
                F f;
                String strA0 = x.a0(ProfileEditBindingImpl.this.serverPwd);
                AdminProfileViewModel adminProfileViewModel = ProfileEditBindingImpl.this.mViewModel;
                if (adminProfileViewModel == null || (f = adminProfileViewModel.serverPwd) == null) {
                    return;
                }
                f.k(strA0);
            }
        };
        this.mDirtyFlags = -1L;
        this.clientAuth.setTag(null);
        this.clientId.setTag(null);
        this.clientPwd.setTag(null);
        ScrollView scrollView = (ScrollView) objArr[0];
        this.mboundView0 = scrollView;
        scrollView.setTag(null);
        this.profileName.setTag(null);
        this.saveBtn.setTag(null);
        this.serverAddress.setTag(null);
        this.serverAuth.setTag(null);
        this.serverId.setTag(null);
        this.serverPwd.setTag(null);
        setRootTag(view);
        this.mCallback2 = new OnClickListener(this, 1);
        invalidateAll();
    }
}

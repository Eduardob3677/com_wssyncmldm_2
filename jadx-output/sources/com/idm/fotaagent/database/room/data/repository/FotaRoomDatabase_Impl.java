package com.idm.fotaagent.database.room.data.repository;

import J.r0;
import android.content.Context;
import androidx.room.k;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.idm.fotaagent.database.room.data.dao.InjectedFeatureDao;
import com.idm.fotaagent.database.room.data.dao.InjectedFeatureDao_Impl;
import com.idm.fotaagent.database.room.data.dao.PropertyDao;
import com.idm.fotaagent.database.room.data.dao.PropertyDao_Impl;
import com.idm.fotaagent.database.room.data.entity.CategoryNameValue;
import com.idm.fotaagent.database.room.data.entity.InjectedFeature;
import com.idm.fotaagent.database.room.data.entity.Property;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import y0.InterfaceC0925a;
import z0.C0943e;

/* loaded from: classes.dex */
public final class FotaRoomDatabase_Impl extends FotaRoomDatabase {
    private volatile InjectedFeatureDao _injectedFeatureDao;
    private volatile PropertyDao _propertyDao;

    @Override // androidx.room.j
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase supportSQLiteDatabaseH = ((C0943e) super.getOpenHelper()).f9716a.h();
        try {
            super.beginTransaction();
            supportSQLiteDatabaseH.d("DELETE FROM `injected_feature`");
            supportSQLiteDatabaseH.d("DELETE FROM `property`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            supportSQLiteDatabaseH.i("PRAGMA wal_checkpoint(FULL)").close();
            if (!supportSQLiteDatabaseH.j()) {
                supportSQLiteDatabaseH.d("VACUUM");
            }
        }
    }

    @Override // androidx.room.j
    public androidx.room.g createInvalidationTracker() {
        return new androidx.room.g(this, InjectedFeature.TABLE_NAME, Property.TABLE_NAME);
    }

    @Override // androidx.room.j
    public InterfaceC0925a createOpenHelper(androidx.room.a aVar) {
        D3.f fVar = new D3.f(aVar, new k(10) { // from class: com.idm.fotaagent.database.room.data.repository.FotaRoomDatabase_Impl.1
            @Override // androidx.room.k
            public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.d("CREATE TABLE IF NOT EXISTS `injected_feature` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `value_text` TEXT NOT NULL, `category` TEXT NOT NULL, `name` TEXT NOT NULL, `value` BLOB NOT NULL)");
                supportSQLiteDatabase.d("CREATE  INDEX `index_injected_feature_category` ON `injected_feature` (`category`)");
                supportSQLiteDatabase.d("CREATE UNIQUE INDEX `index_injected_feature_category_name` ON `injected_feature` (`category`, `name`)");
                supportSQLiteDatabase.d("CREATE TABLE IF NOT EXISTS `property` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `value_text` TEXT NOT NULL, `category` TEXT NOT NULL, `name` TEXT NOT NULL, `value` BLOB NOT NULL)");
                supportSQLiteDatabase.d("CREATE  INDEX `index_property_category` ON `property` (`category`)");
                supportSQLiteDatabase.d("CREATE UNIQUE INDEX `index_property_category_name` ON `property` (`category`, `name`)");
                supportSQLiteDatabase.d("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                supportSQLiteDatabase.d("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"1e6c9f59400e7eb9a450db538cf0db67\")");
            }

            public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.d("DROP TABLE IF EXISTS `injected_feature`");
                supportSQLiteDatabase.d("DROP TABLE IF EXISTS `property`");
            }

            @Override // androidx.room.k
            public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
                if (((androidx.room.j) FotaRoomDatabase_Impl.this).mCallbacks == null || ((androidx.room.j) FotaRoomDatabase_Impl.this).mCallbacks.size() <= 0) {
                    return;
                }
                B.f.F(((androidx.room.j) FotaRoomDatabase_Impl.this).mCallbacks.get(0));
                throw null;
            }

            @Override // androidx.room.k
            public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
                ((androidx.room.j) FotaRoomDatabase_Impl.this).mDatabase = supportSQLiteDatabase;
                FotaRoomDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
                if (((androidx.room.j) FotaRoomDatabase_Impl.this).mCallbacks == null || ((androidx.room.j) FotaRoomDatabase_Impl.this).mCallbacks.size() <= 0) {
                    return;
                }
                B.f.F(((androidx.room.j) FotaRoomDatabase_Impl.this).mCallbacks.get(0));
                throw null;
            }

            @Override // androidx.room.k
            public void validateMigration(SupportSQLiteDatabase supportSQLiteDatabase) {
                HashMap map = new HashMap(5);
                map.put("_id", new w0.a(1, "_id", "INTEGER", true));
                map.put(CategoryNameValue.COLUMN_VALUE_STRING, new w0.a(0, CategoryNameValue.COLUMN_VALUE_STRING, "TEXT", true));
                map.put(CategoryNameValue.COLUMN_CATEGORY, new w0.a(0, CategoryNameValue.COLUMN_CATEGORY, "TEXT", true));
                map.put("name", new w0.a(0, "name", "TEXT", true));
                map.put("value", new w0.a(0, "value", "BLOB", true));
                HashSet hashSet = new HashSet(0);
                HashSet hashSet2 = new HashSet(2);
                hashSet2.add(new w0.d("index_injected_feature_category", Arrays.asList(CategoryNameValue.COLUMN_CATEGORY), false));
                hashSet2.add(new w0.d("index_injected_feature_category_name", Arrays.asList(CategoryNameValue.COLUMN_CATEGORY, "name"), true));
                w0.e eVar = new w0.e(InjectedFeature.TABLE_NAME, map, hashSet, hashSet2);
                w0.e eVarA = w0.e.a(supportSQLiteDatabase, InjectedFeature.TABLE_NAME);
                if (!eVar.equals(eVarA)) {
                    throw new IllegalStateException("Migration didn't properly handle injected_feature(com.idm.fotaagent.database.room.data.entity.InjectedFeature).\n Expected:\n" + eVar + "\n Found:\n" + eVarA);
                }
                HashMap map2 = new HashMap(5);
                map2.put("_id", new w0.a(1, "_id", "INTEGER", true));
                map2.put(CategoryNameValue.COLUMN_VALUE_STRING, new w0.a(0, CategoryNameValue.COLUMN_VALUE_STRING, "TEXT", true));
                map2.put(CategoryNameValue.COLUMN_CATEGORY, new w0.a(0, CategoryNameValue.COLUMN_CATEGORY, "TEXT", true));
                map2.put("name", new w0.a(0, "name", "TEXT", true));
                map2.put("value", new w0.a(0, "value", "BLOB", true));
                HashSet hashSet3 = new HashSet(0);
                HashSet hashSet4 = new HashSet(2);
                hashSet4.add(new w0.d("index_property_category", Arrays.asList(CategoryNameValue.COLUMN_CATEGORY), false));
                hashSet4.add(new w0.d("index_property_category_name", Arrays.asList(CategoryNameValue.COLUMN_CATEGORY, "name"), true));
                w0.e eVar2 = new w0.e(Property.TABLE_NAME, map2, hashSet3, hashSet4);
                w0.e eVarA2 = w0.e.a(supportSQLiteDatabase, Property.TABLE_NAME);
                if (eVar2.equals(eVarA2)) {
                    return;
                }
                throw new IllegalStateException("Migration didn't properly handle property(com.idm.fotaagent.database.room.data.entity.Property).\n Expected:\n" + eVar2 + "\n Found:\n" + eVarA2);
            }
        }, "1e6c9f59400e7eb9a450db538cf0db67", "81209fcad839e3eb54dfe4ee31feaa41");
        Context context = aVar.f4934b;
        if (context == null) {
            throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        r0 r0Var = new r0(context, aVar.f4935c, fVar);
        aVar.f4933a.getClass();
        return new C0943e((Context) r0Var.f1006c, (String) r0Var.f1007d, (D3.f) r0Var.f1008e);
    }

    @Override // com.idm.fotaagent.database.room.data.repository.FotaRoomDatabase
    public InjectedFeatureDao injectedFeatureDao() {
        InjectedFeatureDao injectedFeatureDao;
        if (this._injectedFeatureDao != null) {
            return this._injectedFeatureDao;
        }
        synchronized (this) {
            try {
                if (this._injectedFeatureDao == null) {
                    this._injectedFeatureDao = new InjectedFeatureDao_Impl(this);
                }
                injectedFeatureDao = this._injectedFeatureDao;
            } catch (Throwable th) {
                throw th;
            }
        }
        return injectedFeatureDao;
    }

    @Override // com.idm.fotaagent.database.room.data.repository.FotaRoomDatabase
    public PropertyDao propertyDao() {
        PropertyDao propertyDao;
        if (this._propertyDao != null) {
            return this._propertyDao;
        }
        synchronized (this) {
            try {
                if (this._propertyDao == null) {
                    this._propertyDao = new PropertyDao_Impl(this);
                }
                propertyDao = this._propertyDao;
            } catch (Throwable th) {
                throw th;
            }
        }
        return propertyDao;
    }
}

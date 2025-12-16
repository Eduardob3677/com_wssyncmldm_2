package com.idm.fotaagent.database.room.data.repository;

import E3.p;
import androidx.lifecycle.C;
import androidx.lifecycle.D;
import androidx.lifecycle.E;
import androidx.lifecycle.G;
import c3.InterfaceC0222b;
import com.idm.fotaagent.database.room.data.dao.CategoryNameValueDao;
import com.idm.fotaagent.database.room.data.entity.CategoryNameValue;
import com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource;
import com.samsung.android.fotaagent.common.log.Log;
import java.io.IOException;
import java.io.Serializable;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
class CategoryNameValueRepository<E extends CategoryNameValue, D extends CategoryNameValueDao<E>> implements CategoryNameValueDataSource<E> {
    private final CategoryNameValueDao<E> dao;
    private final FotaRoomDatabase roomDatabase;

    public static class SpecificCategory<E extends CategoryNameValue, D extends CategoryNameValueDao<E>> implements CategoryNameValueDataSource.SpecificCategory<E> {
        private final String category;
        private final CategoryNameValueRepository<E, D> categoryNameValueRepository;

        public SpecificCategory(FotaRoomDatabase fotaRoomDatabase, D d2, String str) {
            this.categoryNameValueRepository = new CategoryNameValueRepository<>(fotaRoomDatabase, d2);
            this.category = str;
        }

        @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource.SpecificCategory
        public int delete(String str) {
            return this.categoryNameValueRepository.delete(this.category, str);
        }

        @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource.SpecificCategory
        public int deleteAll() {
            return this.categoryNameValueRepository.deleteAll(this.category);
        }

        @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource.SpecificCategory
        public List<E> getAllEntities() {
            return this.categoryNameValueRepository.getAllEntitiesOf(this.category);
        }

        @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource.SpecificCategory
        public <V extends Serializable> C getLiveDataValueOf(String str, Serializable serializable) {
            return this.categoryNameValueRepository.getLiveDataValueOf(this.category, str, serializable);
        }

        @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource.SpecificCategory
        public <V extends Serializable> Optional<V> getValueOf(String str) {
            return this.categoryNameValueRepository.getValueOf(this.category, str);
        }

        @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource.SpecificCategory
        public long insertOrReplace(String str, Serializable serializable) {
            return this.categoryNameValueRepository.insertOrReplace(this.category, str, serializable);
        }

        public void runInTransaction(Runnable runnable) {
            this.categoryNameValueRepository.runInTransaction(runnable);
        }

        @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource.SpecificCategory
        public int size() {
            return this.categoryNameValueRepository.size(this.category);
        }

        public <V> V runInTransaction(Callable<V> callable) {
            return (V) this.categoryNameValueRepository.runInTransaction(callable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CategoryNameValueRepository(FotaRoomDatabase fotaRoomDatabase, D d2) {
        this.roomDatabase = fotaRoomDatabase;
        this.dao = d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Serializable lambda$getLiveDataValueOf$0(Serializable serializable, CategoryNameValue categoryNameValue) {
        try {
            return categoryNameValue.getDeserializedValue();
        } catch (RuntimeException e5) {
            Log.printStackTrace(e5);
            return serializable;
        }
    }

    @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource
    public int delete(String str, String str2) {
        return this.dao.delete(str, str2);
    }

    @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource
    public int deleteAll(String str) {
        return this.dao.deleteAll(str);
    }

    public void deleteCategories(String... strArr) {
        this.dao.deleteCategories(strArr);
    }

    @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource
    public List<E> getAllEntitiesOf(String str) {
        return this.dao.getAllEntitiesOf(str);
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.lifecycle.X] */
    @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource
    public <V extends Serializable> C getLiveDataValueOf(String str, String str2, final Serializable serializable) {
        C entityLiveDataOf = this.dao.getEntityLiveDataOf(str, str2);
        InterfaceC0222b interfaceC0222b = new InterfaceC0222b() { // from class: com.idm.fotaagent.database.room.data.repository.b
            @Override // c3.InterfaceC0222b
            public final Object e(Object obj) {
                return CategoryNameValueRepository.lambda$getLiveDataValueOf$0(serializable, (CategoryNameValue) obj);
            }
        };
        d3.i.e("<this>", entityLiveDataOf);
        E e5 = new E();
        m.f fVar = new m.f();
        e5.f4007l = fVar;
        final p pVar = new p(e5, 5, interfaceC0222b);
        ?? r32 = new G() { // from class: androidx.lifecycle.X
            @Override // androidx.lifecycle.G
            public final /* synthetic */ void c(Object obj) {
                pVar.e(obj);
            }

            public final boolean equals(Object obj) {
                if (!(obj instanceof G) || !(obj instanceof X)) {
                    return false;
                }
                return d3.i.a(pVar, pVar);
            }

            public final int hashCode() {
                return pVar.hashCode();
            }
        };
        D d2 = new D(entityLiveDataOf, r32);
        D d5 = (D) fVar.m(entityLiveDataOf, d2);
        if (d5 != null && d5.f4003b != r32) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (d5 == null && e5.f3994c > 0) {
            entityLiveDataOf.f(d2);
        }
        return e5;
    }

    @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource
    public <V extends Serializable> Optional<V> getValueOf(String str, String str2) {
        try {
            return (Optional<V>) this.dao.getEntityOf(str, str2).map(new h(10));
        } catch (RuntimeException e5) {
            Log.printStackTrace(e5);
            return Optional.empty();
        }
    }

    @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource
    public long insertOrReplace(String str, String str2, Serializable serializable) throws IOException {
        long jInsertOrReplace = this.dao.insertOrReplace(str, str2, serializable);
        if (jInsertOrReplace != -1) {
            return jInsertOrReplace;
        }
        throw new IOException("insertOrReplace failed");
    }

    public void runInTransaction(Runnable runnable) {
        this.roomDatabase.runInTransaction(runnable);
    }

    @Override // com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource
    public int size(String str) {
        return this.dao.size(str);
    }

    public <V> V runInTransaction(Callable<V> callable) {
        return (V) this.roomDatabase.runInTransaction(callable);
    }
}

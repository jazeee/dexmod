.class public Lnet/sqlcipher/database/SQLiteDatabase;
.super Lnet/sqlcipher/database/SQLiteClosable;
.source "SQLiteDatabase.java"


# static fields
.field private static final COMMIT_SQL:Ljava/lang/String; = "COMMIT;"

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field private static final EVENT_DB_OPERATION:I = 0xcb20

.field static final GET_LOCK_LOG_PREFIX:Ljava/lang/String; = "GETLOCK:"

.field private static final KEY_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS:I = 0x64

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS:I = 0x12c

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT:I = 0x7d0

.field private static final LOCK_WARNING_WINDOW_IN_MS:I = 0x4e20

.field private static final LOG_SLOW_QUERIES_PROPERTY:Ljava/lang/String; = "db.log.slow_query_threshold"

.field public static final MAX_SQL_CACHE_SIZE:I = 0xfa

.field private static final MAX_WARNINGS_ON_CACHESIZE_CONDITION:I = 0x1

.field public static final MEMORY:Ljava/lang/String; = ":memory:"

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field private static final QUERY_LOG_SQL_LENGTH:I = 0x40

.field private static final SLEEP_AFTER_YIELD_QUANTUM:I = 0x3e8

.field public static final SQLCIPHER_ANDROID_VERSION:Ljava/lang/String; = "3.5.4"

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "Database"

.field private static sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sQueryLogTimeInMillis:I


# instance fields
.field private mCacheFullWarnings:I

.field mCompiledQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/sqlcipher/database/SQLiteCompiledSql;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorHandler:Lnet/sqlcipher/DatabaseErrorHandler;

.field private mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

.field private mFlags:I

.field private mInnerTransactionIsSuccessful:Z

.field private mLastLockMessageTime:J

.field private mLastSqlStatement:Ljava/lang/String;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mLockAcquiredThreadTime:J

.field private mLockAcquiredWallTime:J

.field private mLockingEnabled:Z

.field private mMaxSqlCacheSize:I

.field mNativeHandle:I

.field private mNumCacheHits:I

.field private mNumCacheMisses:I

.field private mPath:Ljava/lang/String;

.field private mPathForLogs:Ljava/lang/String;

.field private mPrograms:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lnet/sqlcipher/database/SQLiteClosable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private final mSlowQueryThreshold:I

.field private mStackTrace:Ljava/lang/Throwable;

.field private final mSyncUpdateInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTempTableSequence:I

.field private mTimeClosed:Ljava/lang/String;

.field private mTimeOpened:Ljava/lang/String;

.field private mTransactionIsSuccessful:Z

.field private mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lnet/sqlcipher/database/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    .line 267
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, " OR ROLLBACK "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " OR ABORT "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " OR FAIL "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " OR IGNORE "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " OR REPLACE "

    aput-object v2, v0, v1

    sput-object v0, Lnet/sqlcipher/database/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 355
    const-string v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/sqlcipher/database/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 368
    sput v3, Lnet/sqlcipher/database/SQLiteDatabase;->sQueryLogTimeInMillis:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/DatabaseErrorHandler;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2334
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteClosable;-><init>()V

    .line 338
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 340
    iput-wide v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 341
    iput-wide v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 357
    iput-wide v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastLockMessageTime:J

    .line 371
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mRandom:Ljava/util/Random;

    .line 372
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 379
    iput v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNativeHandle:I

    .line 382
    iput v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTempTableSequence:I

    .line 388
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    .line 419
    const/16 v0, 0xfa

    iput v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I

    .line 433
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 434
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 437
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 501
    iput-boolean v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockingEnabled:Z

    .line 905
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    .line 2335
    if-nez p1, :cond_0

    .line 2336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2339
    :cond_0
    iput p3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFlags:I

    .line 2340
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    .line 2342
    const/4 v0, -0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    .line 2343
    new-instance v0, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 2344
    iput-object p2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

    .line 2345
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    .line 2347
    iput-object p4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mErrorHandler:Lnet/sqlcipher/DatabaseErrorHandler;

    .line 2348
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2298
    invoke-direct {p0, p1, p3, p4, v0}, Lnet/sqlcipher/database/SQLiteDatabase;-><init>(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/DatabaseErrorHandler;)V

    .line 2299
    invoke-direct {p0, p2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabaseInternal([CLnet/sqlcipher/database/SQLiteDatabaseHook;)V

    .line 2300
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)V
    .locals 1

    .prologue
    .line 2319
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, Lnet/sqlcipher/database/SQLiteDatabase;-><init>(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/DatabaseErrorHandler;)V

    .line 2320
    invoke-direct {p0, p2, p5}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabaseInternal([CLnet/sqlcipher/database/SQLiteDatabaseHook;)V

    .line 2321
    return-void
.end method

.method static synthetic access$000(Lnet/sqlcipher/database/SQLiteDatabase;[B)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->key([B)V

    return-void
.end method

.method static synthetic access$100(Lnet/sqlcipher/database/SQLiteDatabase;[C)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->key_mutf8([C)V

    return-void
.end method

.method private checkLockHoldTime()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x7d0

    .line 580
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 581
    iget-wide v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredWallTime:J

    sub-long v2, v0, v2

    .line 582
    cmp-long v4, v2, v8

    if-gez v4, :cond_1

    const-string v4, "Database"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-wide v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastLockMessageTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x4e20

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const-wide/16 v4, 0x12c

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 588
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iget-wide v6, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredThreadTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 590
    const/16 v5, 0x64

    if-gt v4, v5, :cond_2

    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    .line 592
    :cond_2
    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastLockMessageTime:J

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lock held on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms. Thread time was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    sget-boolean v1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    if-eqz v1, :cond_3

    .line 596
    const-string v1, "Database"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 598
    :cond_3
    const-string v1, "Database"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private closeClosable()V
    .locals 2

    .prologue
    .line 1269
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->deallocCachedSqlStatements()V

    .line 1271
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1272
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/database/SQLiteClosable;

    .line 1275
    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    goto :goto_0

    .line 1279
    :cond_1
    return-void
.end method

.method private containsNull([C)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2401
    .line 2402
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 2403
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, p1, v1

    .line 2404
    if-nez v3, :cond_1

    .line 2405
    const/4 v0, 0x1

    .line 2410
    :cond_0
    return v0

    .line 2403
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static create(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 3

    .prologue
    .line 1220
    const-string v1, ":memory:"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x10000000

    invoke-static {v1, v0, p0, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;[C)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 2

    .prologue
    .line 1239
    const-string v0, ":memory:"

    const/high16 v1, 0x10000000

    invoke-static {v0, p1, p0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native dbclose()V
.end method

.method private native dbopen(Ljava/lang/String;I)V
.end method

.method private deallocCachedSqlStatements()V
    .locals 3

    .prologue
    .line 2630
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2631
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/database/SQLiteCompiledSql;

    .line 2632
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteCompiledSql;->releaseSqlStatement()V

    goto :goto_0

    .line 2635
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2634
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2635
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private native enableSqlProfiling(Ljava/lang/String;)V
.end method

.method private native enableSqlTracing(Ljava/lang/String;)V
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1518
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1520
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1521
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1523
    if-lez v0, :cond_2

    if-lt v0, v1, :cond_0

    if-gez v1, :cond_2

    .line 1524
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1528
    :cond_1
    :goto_0
    return-object p0

    .line 1525
    :cond_2
    if-lez v1, :cond_1

    if-lt v1, v0, :cond_3

    if-gez v0, :cond_1

    .line 1526
    :cond_3
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1530
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid tables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getActiveDatabases()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2788
    sget-object v1, Lnet/sqlcipher/database/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 2789
    :try_start_0
    sget-object v2, Lnet/sqlcipher/database/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2790
    monitor-exit v1

    .line 2791
    return-object v0

    .line 2790
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getAttachedDbs(Lnet/sqlcipher/database/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2820
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2829
    :goto_0
    return-object v0

    .line 2823
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2824
    const-string v2, "pragma database_list;"

    invoke-virtual {p0, v2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 2825
    :goto_1
    invoke-interface {v0}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2826
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2828
    :cond_1
    invoke-interface {v0}, Lnet/sqlcipher/Cursor;->close()V

    move-object v0, v1

    .line 2829
    goto :goto_0
.end method

.method private getBytes([C)[B
    .locals 2

    .prologue
    .line 2833
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2838
    :goto_0
    return-object v0

    .line 2834
    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 2835
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2836
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 2837
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/sqlcipher/database/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, -0x1

    const/4 v8, 0x0

    .line 2738
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2740
    invoke-static {}, Lnet/sqlcipher/database/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lnet/sqlcipher/database/SQLiteDatabase;

    .line 2741
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2746
    invoke-direct {v7}, Lnet/sqlcipher/database/SQLiteDatabase;->native_getDbLookaside()I

    move-result v6

    .line 2749
    invoke-virtual {v7}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2750
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2751
    if-eq v0, v14, :cond_2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 2754
    invoke-static {v7}, Lnet/sqlcipher/database/SQLiteDatabase;->getAttachedDbs(Lnet/sqlcipher/database/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v13

    .line 2755
    if-eqz v13, :cond_0

    move v9, v8

    .line 2758
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 2759
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".page_count;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->getPragmaVal(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 2765
    if-nez v9, :cond_3

    move-object v1, v10

    .line 2777
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 2778
    new-instance v0, Lnet/sqlcipher/database/SQLiteDebug$DbStats;

    invoke-virtual {v7}, Lnet/sqlcipher/database/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lnet/sqlcipher/database/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJI)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    :cond_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_2
    move v0, v8

    .line 2751
    goto :goto_0

    .line 2770
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "  (attached) "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2772
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 2773
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eq v1, v14, :cond_4

    add-int/lit8 v1, v1, 0x1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v6, v8

    goto :goto_2

    :cond_4
    move v1, v8

    goto :goto_3

    .line 2783
    :cond_5
    return-object v11

    :cond_6
    move-object v1, v4

    move v6, v8

    goto :goto_2
.end method

.method private getPathForLogs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2539
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2550
    :goto_0
    return-object v0

    .line 2542
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2543
    const/4 v0, 0x0

    goto :goto_0

    .line 2545
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2546
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2550
    :goto_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_0

    .line 2548
    :cond_2
    sget-object v0, Lnet/sqlcipher/database/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getPragmaVal(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 2801
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2802
    const-wide/16 v0, 0x0

    .line 2810
    :goto_0
    return-wide v0

    .line 2804
    :cond_0
    const/4 v1, 0x0

    .line 2806
    :try_start_0
    new-instance v2, Lnet/sqlcipher/database/SQLiteStatement;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "PRAGMA "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2807
    :try_start_1
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 2810
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private getTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2440
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native key([B)V
.end method

.method private keyDatabase(Lnet/sqlcipher/database/SQLiteDatabaseHook;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 2414
    if-eqz p1, :cond_0

    .line 2415
    invoke-interface {p1, p0}, Lnet/sqlcipher/database/SQLiteDatabaseHook;->preKey(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 2417
    :cond_0
    if-eqz p2, :cond_1

    .line 2418
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 2420
    :cond_1
    if-eqz p1, :cond_2

    .line 2421
    invoke-interface {p1, p0}, Lnet/sqlcipher/database/SQLiteDatabaseHook;->postKey(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 2423
    :cond_2
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_3

    .line 2424
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 2427
    :cond_3
    :try_start_0
    const-string v0, "select count(*) from sqlite_master;"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 2428
    if-eqz v0, :cond_4

    .line 2429
    invoke-interface {v0}, Lnet/sqlcipher/Cursor;->moveToFirst()Z

    .line 2430
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/sqlcipher/Cursor;->getInt(I)I

    .line 2431
    invoke-interface {v0}, Lnet/sqlcipher/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2436
    :cond_4
    return-void

    .line 2433
    :catch_0
    move-exception v0

    .line 2434
    const-string v1, "Database"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2435
    throw v0
.end method

.method private native key_mutf8([C)V
.end method

.method private static loadICUData(Landroid/content/Context;Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 145
    .line 147
    new-instance v0, Ljava/io/File;

    const-string v2, "icu"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    new-instance v4, Ljava/io/File;

    const-string v2, "icudt46l.dat"

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 152
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "icudt46l.zip"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 154
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 155
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 157
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_5

    .line 158
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 163
    :goto_1
    :try_start_3
    const-string v3, "Database"

    const-string v5, "Error copying icu dat file"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 167
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    :goto_2
    if-eqz v1, :cond_2

    .line 172
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 174
    :cond_2
    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 176
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 180
    :cond_3
    throw v0

    :cond_4
    move-object v2, v1

    move-object v3, v1

    .line 171
    :cond_5
    if-eqz v2, :cond_6

    .line 172
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 174
    :cond_6
    if-eqz v3, :cond_7

    .line 175
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 176
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 181
    :cond_7
    return-void

    .line 178
    :catch_1
    move-exception v0

    .line 179
    const-string v1, "Database"

    const-string v2, "Error in closing streams IO streams after expanding ICU dat file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 178
    :catch_2
    move-exception v0

    .line 179
    const-string v1, "Database"

    const-string v2, "Error in closing streams IO streams after expanding ICU dat file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 170
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 162
    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public static declared-synchronized loadLibs(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 189
    const-class v1, Lnet/sqlcipher/database/SQLiteDatabase;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit v1

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized loadLibs(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 196
    const-class v1, Lnet/sqlcipher/database/SQLiteDatabase;

    monitor-enter v1

    :try_start_0
    const-string v0, "sqlcipher"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit v1

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private lockForced()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 540
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 544
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 547
    :cond_0
    return-void
.end method

.method private markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1476
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1478
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT _sync_dirty FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1486
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;

    invoke-direct {v0, p3, p4, p2}, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1489
    :try_start_1
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 1483
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0

    .line 1490
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private native native_getDbLookaside()I
.end method

.method private native native_key([C)V
.end method

.method private native native_rawExecSQL(Ljava/lang/String;)V
.end method

.method private native native_rekey(Ljava/lang/String;)V
.end method

.method private native native_status(IZ)I
.end method

.method public static openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 6

    .prologue
    .line 1032
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 6

    .prologue
    .line 1083
    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0
.end method

.method public static openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1008
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 6

    .prologue
    .line 1056
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1110
    .line 1111
    if-eqz p5, :cond_2

    .line 1115
    :goto_0
    :try_start_0
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {v0, p0, p2, p3, p5}, Lnet/sqlcipher/database/SQLiteDatabase;-><init>(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/DatabaseErrorHandler;)V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :try_start_1
    invoke-direct {v0, p1, p4}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabaseInternal([CLnet/sqlcipher/database/SQLiteDatabaseHook;)V
    :try_end_1
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1132
    :goto_1
    sget-boolean v1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v1, :cond_0

    .line 1133
    invoke-direct {v0, p0}, Lnet/sqlcipher/database/SQLiteDatabase;->enableSqlTracing(Ljava/lang/String;)V

    .line 1135
    :cond_0
    sget-boolean v1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_TIME:Z

    if-eqz v1, :cond_1

    .line 1136
    invoke-direct {v0, p0}, Lnet/sqlcipher/database/SQLiteDatabase;->enableSqlProfiling(Ljava/lang/String;)V

    .line 1139
    :cond_1
    sget-object v1, Lnet/sqlcipher/database/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 1140
    :try_start_2
    sget-object v2, Lnet/sqlcipher/database/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1143
    return-object v0

    .line 1111
    :cond_2
    new-instance p5, Lnet/sqlcipher/DefaultDatabaseErrorHandler;

    invoke-direct {p5}, Lnet/sqlcipher/DefaultDatabaseErrorHandler;-><init>()V

    goto :goto_0

    .line 1117
    :catch_0
    move-exception v0

    .line 1120
    :goto_2
    const-string v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calling error handler for corrupt database "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1125
    invoke-interface {p5, v1}, Lnet/sqlcipher/DatabaseErrorHandler;->onCorruption(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 1128
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {v0, p0, p2, p3, p5}, Lnet/sqlcipher/database/SQLiteDatabase;-><init>(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/DatabaseErrorHandler;)V

    .line 1129
    invoke-direct {v0, p1, p4}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabaseInternal([CLnet/sqlcipher/database/SQLiteDatabaseHook;)V

    goto :goto_1

    .line 1141
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1117
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method private openDatabaseInternal([CLnet/sqlcipher/database/SQLiteDatabaseHook;)V
    .locals 3

    .prologue
    .line 2351
    .line 2352
    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->getBytes([C)[B

    move-result-object v1

    .line 2353
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    iget v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFlags:I

    invoke-direct {p0, v0, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->dbopen(Ljava/lang/String;I)V

    .line 2356
    :try_start_0
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabase$1;

    invoke-direct {v0, p0, v1}, Lnet/sqlcipher/database/SQLiteDatabase$1;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;[B)V

    invoke-direct {p0, p2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->keyDatabase(Lnet/sqlcipher/database/SQLiteDatabaseHook;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2390
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 2397
    :cond_0
    :goto_0
    return-void

    .line 2365
    :catch_0
    move-exception v0

    .line 2367
    :try_start_1
    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->containsNull([C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2368
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabase$2;

    invoke-direct {v0, p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase$2;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;[C)V

    invoke-direct {p0, p2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->keyDatabase(Lnet/sqlcipher/database/SQLiteDatabaseHook;Ljava/lang/Runnable;)V

    .line 2375
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 2376
    invoke-direct {p0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->rekey([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2390
    :cond_1
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    .line 2380
    :cond_2
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2384
    :catchall_0
    move-exception v0

    .line 2385
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->dbclose()V

    .line 2386
    sget-boolean v1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v1, :cond_3

    .line 2387
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 2391
    :cond_3
    throw v0
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 1150
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 1165
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 2

    .prologue
    .line 1193
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 1157
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, p2, v0, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 6

    .prologue
    .line 1170
    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/high16 v3, 0x10000000

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 2

    .prologue
    .line 1200
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 1174
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, p2, v0, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 6

    .prologue
    .line 1179
    const/high16 v3, 0x10000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native rekey([B)V
.end method

.method public static native releaseMemory()I
.end method

.method public static native setICURoot(Ljava/lang/String;)V
.end method

.method private unlockForced()V
    .locals 2

    .prologue
    .line 570
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 572
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->checkLockHoldTime()V

    .line 575
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 576
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x3e8

    .line 865
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    if-nez v0, :cond_0

    .line 868
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 869
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 870
    const/4 v0, 0x0

    .line 900
    :goto_0
    return v0

    .line 872
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V

    .line 873
    iget-object v6, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    .line 874
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 875
    if-eqz p1, :cond_1

    .line 876
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Db locked more than once. yielfIfContended cannot yield"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_1
    cmp-long v0, p2, v8

    if-lez v0, :cond_3

    move-wide v2, p2

    .line 886
    :cond_2
    cmp-long v0, v2, v8

    if-lez v0, :cond_3

    .line 888
    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    move-wide v0, v2

    :goto_1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_2
    sub-long/2addr v2, v4

    .line 894
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    if-nez v0, :cond_2

    .line 899
    :cond_3
    invoke-virtual {p0, v6}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransactionWithListener(Lnet/sqlcipher/database/SQLiteTransactionListener;)V

    .line 900
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move-wide v0, v4

    .line 888
    goto :goto_1

    .line 891
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_2
.end method


# virtual methods
.method addSQLiteClosable(Lnet/sqlcipher/database/SQLiteClosable;)V
    .locals 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 449
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method addToCompiledQueries(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteCompiledSql;)V
    .locals 4

    .prologue
    .line 2585
    iget v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v0, :cond_1

    .line 2587
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 2588
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|NOT adding_sql_to_cache|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    :cond_0
    :goto_0
    return-void

    .line 2594
    :cond_1
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2596
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/database/SQLiteCompiledSql;

    .line 2597
    if-eqz v0, :cond_2

    .line 2598
    monitor-exit v1

    goto :goto_0

    .line 2624
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2601
    :cond_2
    :try_start_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ne v0, v2, :cond_4

    .line 2609
    iget v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCacheFullWarnings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCacheFullWarnings:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2610
    const-string v0, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reached MAX size for compiled-sql statement cache for database "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; i.e., NO space for this sql statement in cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Please change your sql statements to use \'?\' for bindargs, instead of using actual values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 2618
    :cond_4
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2619
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_3

    .line 2620
    const-string v0, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|adding_sql_to_cache|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransactionWithListener(Lnet/sqlcipher/database/SQLiteTransactionListener;)V

    .line 626
    return-void
.end method

.method public beginTransactionWithListener(Lnet/sqlcipher/database/SQLiteTransactionListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 652
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lockForced()V

    .line 653
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 660
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 661
    const-string v0, "Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction"

    .line 663
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 664
    const-string v0, "Database"

    const-string v2, "beginTransaction() failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :catchall_0
    move-exception v0

    .line 690
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlockForced()V

    throw v0

    .line 673
    :cond_1
    :try_start_1
    const-string v0, "BEGIN EXCLUSIVE;"

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 674
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionIsSuccessful:Z

    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    if-eqz p1, :cond_2

    .line 679
    :try_start_2
    invoke-interface {p1}, Lnet/sqlcipher/database/SQLiteTransactionListener;->onBegin()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 693
    :cond_2
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    :try_start_3
    const-string v1, "ROLLBACK;"

    invoke-virtual {p0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 682
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public changePassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lnet/sqlcipher/database/SQLiteException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Lnet/sqlcipher/database/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->getBytes([C)[B

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->rekey([B)V

    .line 117
    :cond_1
    return-void
.end method

.method public changePassword([C)V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lnet/sqlcipher/database/SQLiteException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Lnet/sqlcipher/database/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    if-eqz p1, :cond_1

    .line 136
    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->getBytes([C)[B

    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->rekey([B)V

    .line 142
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1248
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1251
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1253
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->closeClosable()V

    .line 1255
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onAllReferencesReleased()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;
    .locals 2

    .prologue
    .line 1551
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1552
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1553
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1556
    :cond_0
    :try_start_0
    new-instance v0, Lnet/sqlcipher/database/SQLiteStatement;

    invoke-direct {v0, p0, p1}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 2032
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 2033
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2034
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2036
    :cond_0
    const/4 v1, 0x0

    .line 2038
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v1

    .line 2041
    if-eqz p3, :cond_2

    .line 2042
    array-length v2, p3

    .line 2043
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 2044
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p3, v0

    invoke-static {v1, v3, v4}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 2043
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2038
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 2047
    :cond_2
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V

    .line 2048
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lastChangeCount()I
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2053
    if-eqz v1, :cond_3

    .line 2054
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 2056
    :cond_3
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return v0

    .line 2049
    :catch_0
    move-exception v0

    .line 2050
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 2051
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2053
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 2054
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 2056
    :cond_4
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public endTransaction()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 702
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 714
    :goto_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 746
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    .line 747
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlockForced()V

    .line 752
    :goto_1
    return-void

    .line 712
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 746
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    .line 747
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlockForced()V

    throw v0

    .line 718
    :cond_3
    :try_start_2
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    .line 720
    :try_start_3
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v0, :cond_5

    .line 721
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    invoke-interface {v0}, Lnet/sqlcipher/database/SQLiteTransactionListener;->onCommit()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 730
    :goto_2
    :try_start_4
    iget-boolean v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_6

    .line 731
    const-string v0, "COMMIT;"

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 746
    :cond_4
    :goto_3
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    .line 747
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlockForced()V

    goto :goto_1

    .line 723
    :cond_5
    :try_start_5
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    invoke-interface {v0}, Lnet/sqlcipher/database/SQLiteTransactionListener;->onRollback()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    .line 728
    goto :goto_2

    .line 725
    :catch_0
    move-exception v0

    .line 727
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 734
    :cond_6
    :try_start_7
    const-string v2, "ROLLBACK;"

    invoke-virtual {p0, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 735
    if-eqz v0, :cond_4

    .line 736
    throw v0
    :try_end_7
    .catch Lnet/sqlcipher/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 740
    :catch_1
    move-exception v0

    :try_start_8
    const-string v0, "Database"

    const-string v2, "exception during rollback, maybe the DB previously performed an auto-rollback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2180
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 2181
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2184
    :cond_0
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v3, "GETLOCK:"

    invoke-virtual {p0, v2, v0, v1, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 2186
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2191
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 2197
    const-string v2, "COMMIT;"

    if-ne p1, v2, :cond_1

    .line 2198
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v3, "COMMIT;"

    invoke-virtual {p0, v2, v0, v1, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 2202
    :goto_0
    return-void

    .line 2187
    :catch_0
    move-exception v0

    .line 2188
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 2189
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2191
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0

    .line 2200
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 2242
    if-nez p2, :cond_0

    .line 2243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2245
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2246
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 2247
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2250
    :cond_1
    const/4 v1, 0x0

    .line 2252
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v1

    .line 2253
    if-eqz p2, :cond_2

    .line 2254
    array-length v4, p2

    .line 2255
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    .line 2256
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p2, v0

    invoke-static {v1, v5, v6}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 2255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2259
    :cond_2
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2264
    if-eqz v1, :cond_3

    .line 2265
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 2267
    :cond_3
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 2269
    invoke-virtual {p0, p1, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 2270
    return-void

    .line 2260
    :catch_0
    move-exception v0

    .line 2261
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 2262
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2264
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 2265
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 2267
    :cond_4
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 2274
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2275
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close() was never explicitly called on database \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2277
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->closeClosable()V

    .line 2278
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onAllReferencesReleased()V

    .line 2280
    :cond_0
    return-void
.end method

.method getCompiledStatementForSql(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteCompiledSql;
    .locals 5

    .prologue
    .line 2645
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v2

    .line 2646
    :try_start_0
    iget v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v0, :cond_2

    .line 2648
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 2649
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "|cache NOT found|"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    :cond_0
    const/4 v0, 0x0

    monitor-exit v2

    .line 2667
    :cond_1
    :goto_0
    return-object v0

    .line 2653
    :cond_2
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/database/SQLiteCompiledSql;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 2654
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2655
    if-eqz v1, :cond_4

    .line 2656
    iget v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheHits:I

    .line 2661
    :goto_2
    sget-boolean v2, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v2, :cond_1

    .line 2662
    const-string v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|cache_stats|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheHits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheMisses:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2653
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2654
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2658
    :cond_4
    iget v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheMisses:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheMisses:I

    goto :goto_2
.end method

.method public declared-synchronized getMaxSqlCacheSize()I
    .locals 1

    .prologue
    .line 2705
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumSize()J
    .locals 6

    .prologue
    .line 1327
    const/4 v2, 0x0

    .line 1328
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1329
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :cond_0
    :try_start_0
    new-instance v1, Lnet/sqlcipher/database/SQLiteStatement;

    const-string v0, "PRAGMA max_page_count;"

    invoke-direct {v1, p0, v0}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    :try_start_1
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    .line 1336
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPageSize()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    mul-long/2addr v2, v4

    .line 1338
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1339
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v2

    .line 1338
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1339
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0

    .line 1338
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public getPageSize()J
    .locals 4

    .prologue
    .line 1379
    const/4 v2, 0x0

    .line 1380
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1381
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1385
    :cond_0
    :try_start_0
    new-instance v1, Lnet/sqlcipher/database/SQLiteStatement;

    const-string v0, "PRAGMA page_size;"

    invoke-direct {v1, p0, v0}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    :try_start_1
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1390
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1391
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v2

    .line 1390
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1391
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0

    .line 1390
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2469
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 909
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v2

    .line 910
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 911
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 912
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;

    .line 913
    iget-object v5, v1, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 914
    iget-object v1, v1, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 917
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public getVersion()I
    .locals 4

    .prologue
    .line 1294
    const/4 v2, 0x0

    .line 1295
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1296
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1300
    :cond_0
    :try_start_0
    new-instance v1, Lnet/sqlcipher/database/SQLiteStatement;

    const-string v0, "PRAGMA user_version;"

    invoke-direct {v1, p0, v0}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    :try_start_1
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1302
    long-to-int v0, v2

    .line 1304
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1305
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return v0

    .line 1304
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1305
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0

    .line 1304
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    .prologue
    .line 1850
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1853
    :goto_0
    return-wide v0

    .line 1851
    :catch_0
    move-exception v0

    .line 1852
    const-string v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error inserting <redacted values> into "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1853
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 1872
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x28

    const/4 v1, 0x0

    .line 1936
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1937
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1941
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x98

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1942
    const-string v0, "INSERT"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    sget-object v0, Lnet/sqlcipher/database/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    const-string v0, " INTO "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1950
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1951
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    .line 1952
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1953
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1956
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1957
    if-eqz v0, :cond_1

    .line 1958
    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    :cond_1
    const/4 v2, 0x1

    .line 1962
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1963
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    const/16 v0, 0x3f

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    .line 1965
    goto :goto_0

    .line 1967
    :cond_2
    const/16 v0, 0x29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 1973
    :goto_1
    const-string v2, " VALUES("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1975
    const-string v2, ");"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1980
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v4

    .line 1983
    if-eqz v0, :cond_4

    .line 1984
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 1985
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1986
    :goto_2
    if-ge v1, v2, :cond_4

    .line 1987
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1988
    add-int/lit8 v5, v1, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1969
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    const-string v0, "NULL"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v4

    goto :goto_1

    .line 1994
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V

    .line 1996
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lastInsertRow()J

    move-result-wide v0

    .line 1997
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_7

    .line 1998
    const-string v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Error inserting <redacted values> using <redacted sql> into "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2010
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    .line 2011
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 2013
    :cond_6
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v0

    .line 2000
    :cond_7
    :try_start_2
    const-string v2, "Database"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2001
    const-string v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Inserting row "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from <redacted values> using <redacted sql> into "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 2006
    :catch_0
    move-exception v0

    .line 2007
    :try_start_3
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 2008
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2010
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_8

    .line 2011
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 2013
    :cond_8
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCompiledSqlCache(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2675
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2676
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2677
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 2455
    iget v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNativeHandle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2448
    iget v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native lastChangeCount()I
.end method

.method native lastInsertRow()J
.end method

.method lock()V
    .locals 2

    .prologue
    .line 519
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 521
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 525
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredThreadTime:J

    goto :goto_0
.end method

.method logTimeStat(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 2473
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 2474
    return-void
.end method

.method logTimeStat(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .prologue
    const/16 v4, 0x40

    .line 2480
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 2487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 2488
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string v2, "GETLOCK:"

    if-ne p4, v2, :cond_1

    .line 2531
    :cond_0
    :goto_0
    return-void

    .line 2493
    :cond_1
    sget v2, Lnet/sqlcipher/database/SQLiteDatabase;->sQueryLogTimeInMillis:I

    if-nez v2, :cond_2

    .line 2494
    const/16 v2, 0x1f4

    sput v2, Lnet/sqlcipher/database/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 2496
    :cond_2
    sget v2, Lnet/sqlcipher/database/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 2499
    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    sget v2, Lnet/sqlcipher/database/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 2500
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mRandom:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 2505
    :cond_3
    if-eqz p4, :cond_4

    .line 2506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2509
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_0
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1424
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    new-instance v0, Lnet/sqlcipher/database/SQLiteException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Lnet/sqlcipher/database/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1428
    :cond_0
    const-string v0, "_id"

    invoke-direct {p0, p1, v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1452
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    new-instance v0, Lnet/sqlcipher/database/SQLiteException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Lnet/sqlcipher/database/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1456
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    return-void
.end method

.method native native_execSQL(Ljava/lang/String;)V
.end method

.method native native_setLocale(Ljava/lang/String;I)V
.end method

.method public needUpgrade(I)Z
    .locals 1

    .prologue
    .line 2460
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 470
    :cond_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->dbclose()V

    .line 472
    sget-object v1, Lnet/sqlcipher/database/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 473
    :try_start_0
    sget-object v0, Lnet/sqlcipher/database/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    monitor-exit v1

    .line 476
    :cond_1
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onCorruption()V
    .locals 3

    .prologue
    .line 504
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling error handler for corrupt database (detected) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mErrorHandler:Lnet/sqlcipher/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Lnet/sqlcipher/DatabaseErrorHandler;->onCorruption(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 508
    return-void
.end method

.method public purgeFromCompiledSqlCache(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2685
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2686
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2687
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 10

    .prologue
    .line 1690
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lnet/sqlcipher/database/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 10

    .prologue
    .line 1733
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lnet/sqlcipher/database/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 11

    .prologue
    .line 1601
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lnet/sqlcipher/database/SQLiteDatabase;->queryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 8

    .prologue
    .line 1643
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1646
    invoke-static/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1649
    invoke-static {p3}, Lnet/sqlcipher/database/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p6, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQueryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawExecSQL(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2206
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 2207
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2210
    :cond_0
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v3, "GETLOCK:"

    invoke-virtual {p0, v2, v0, v1, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 2212
    :try_start_0
    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->native_rawExecSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2217
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 2223
    const-string v2, "COMMIT;"

    if-ne p1, v2, :cond_1

    .line 2224
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v3, "COMMIT;"

    invoke-virtual {p0, v2, v0, v1, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 2228
    :goto_0
    return-void

    .line 2213
    :catch_0
    move-exception v0

    .line 2214
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 2215
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2217
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0

    .line 2226
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1752
    invoke-virtual {p0, v0, p1, p2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQueryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;II)Lnet/sqlcipher/Cursor;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1831
    invoke-virtual {p0, v0, p1, p2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQueryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/CursorWrapper;

    .line 1832
    invoke-virtual {v0}, Lnet/sqlcipher/CursorWrapper;->getWrappedCursor()Lnet/sqlcipher/Cursor;

    move-result-object v1

    check-cast v1, Lnet/sqlcipher/database/SQLiteCursor;

    invoke-virtual {v1, p3, p4}, Lnet/sqlcipher/database/SQLiteCursor;->setLoadStyle(II)V

    .line 1833
    return-object v0
.end method

.method public rawQueryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 1774
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1775
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1777
    :cond_0
    const-wide/16 v0, 0x0

    .line 1779
    iget v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v3, v2, :cond_1

    .line 1780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1783
    :cond_1
    new-instance v4, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;

    invoke-direct {v4, p0, p2, p4}, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    if-eqz p1, :cond_4

    :goto_0
    :try_start_0
    invoke-interface {v4, p1, p3}, Lnet/sqlcipher/database/SQLiteCursorDriver;->query(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1791
    iget v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v5, v2, :cond_3

    .line 1795
    if-eqz v3, :cond_2

    .line 1796
    invoke-interface {v3}, Lnet/sqlcipher/Cursor;->getCount()I

    move-result v2

    .line 1799
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 1801
    iget v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-ltz v5, :cond_3

    .line 1802
    const-string v5, "Database"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "query ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", args are <redacted>, count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_3
    new-instance v0, Lnet/sqlcipher/CrossProcessCursorWrapper;

    invoke-direct {v0, v3}, Lnet/sqlcipher/CrossProcessCursorWrapper;-><init>(Lnet/sqlcipher/Cursor;)V

    return-object v0

    .line 1787
    :cond_4
    :try_start_1
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1791
    :catchall_0
    move-exception v3

    iget v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v5, v2, :cond_5

    .line 1799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 1801
    iget v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v6, v2

    cmp-long v2, v0, v6

    if-ltz v2, :cond_5

    .line 1802
    const-string v2, "Database"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "query ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", args are <redacted>, count is -1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :cond_5
    throw v3
.end method

.method removeSQLiteClosable(Lnet/sqlcipher/database/SQLiteClosable;)V
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 458
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    .prologue
    .line 1888
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1892
    :goto_0
    return-wide v0

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    const-string v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error inserting <redacted values> into "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1892
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 1910
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetCompiledSqlCache()V
    .locals 2

    .prologue
    .line 2695
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2696
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2697
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rowUpdated(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 1501
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1502
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;

    .line 1503
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    if-eqz v0, :cond_0

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;->masterTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SET _sync_dirty=1 WHERE _id=(SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;->foreignKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1509
    :cond_0
    return-void

    .line 1503
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 2562
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 2564
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFlags:I

    invoke-virtual {p0, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->native_setLocale(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2566
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 2567
    return-void

    .line 2566
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setLockingEnabled(Z)V
    .locals 0

    .prologue
    .line 494
    iput-boolean p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockingEnabled:Z

    .line 495
    return-void
.end method

.method public declared-synchronized setMaxSqlCacheSize(I)V
    .locals 2

    .prologue
    .line 2724
    monitor-enter p0

    const/16 v0, 0xfa

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2725
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected value between 0 and 250"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2726
    :cond_1
    :try_start_1
    iget v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ge p1, v0, :cond_2

    .line 2727
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2730
    :cond_2
    iput p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2731
    monitor-exit p0

    return-void
.end method

.method public setMaximumSize(J)J
    .locals 11

    .prologue
    .line 1351
    const/4 v2, 0x0

    .line 1352
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1353
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPageSize()J

    move-result-wide v6

    .line 1358
    div-long v0, p1, v6

    .line 1360
    rem-long v4, p1, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    .line 1361
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    move-wide v4, v0

    .line 1363
    :goto_0
    new-instance v1, Lnet/sqlcipher/database/SQLiteStatement;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "PRAGMA max_page_count = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    :try_start_1
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1366
    mul-long/2addr v2, v6

    .line 1368
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1369
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v2

    .line 1368
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1369
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0

    .line 1368
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-wide v4, v0

    goto :goto_0
.end method

.method public setPageSize(J)V
    .locals 3

    .prologue
    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA page_size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1404
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .prologue
    .line 765
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_1
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 772
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTransactionSuccessful may only be called once per call to beginTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 776
    return-void
.end method

.method public setVersion(I)V
    .locals 2

    .prologue
    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA user_version = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1319
    return-void
.end method

.method public status(IZ)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->native_status(IZ)I

    move-result v0

    return v0
.end method

.method unlock()V
    .locals 2

    .prologue
    .line 555
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 556
    :cond_0
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 558
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->checkLockHoldTime()V

    .line 561
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 2075
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2095
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2096
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2099
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x78

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2100
    const-string v0, "UPDATE "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    sget-object v0, Lnet/sqlcipher/database/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v0, v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2102
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    const-string v0, " SET "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    .line 2106
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2108
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    const-string v0, "=?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2113
    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2117
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2118
    const-string v0, " WHERE "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    :cond_4
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 2123
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2126
    :cond_5
    const/4 v1, 0x0

    .line 2128
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v1

    .line 2131
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    .line 2132
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2133
    const/4 v3, 0x1

    move v4, v2

    .line 2134
    :goto_1
    if-ge v4, v5, :cond_6

    .line 2135
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 2137
    add-int/lit8 v3, v3, 0x1

    .line 2134
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 2140
    :cond_6
    if-eqz p4, :cond_7

    .line 2141
    array-length v4, p4

    move v0, v2

    move v2, v3

    .line 2142
    :goto_2
    if-ge v0, v4, :cond_7

    .line 2143
    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Lnet/sqlcipher/database/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2144
    add-int/lit8 v2, v2, 0x1

    .line 2142
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2149
    :cond_7
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V

    .line 2150
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lastChangeCount()I

    move-result v0

    .line 2151
    const-string v2, "Database"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2152
    const-string v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Updated "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows using <redacted values> and <redacted sql> for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    :cond_8
    if-eqz v1, :cond_9

    .line 2164
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 2166
    :cond_9
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return v0

    .line 2156
    :catch_0
    move-exception v0

    .line 2157
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 2158
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2163
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_a

    .line 2164
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 2166
    :cond_a
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0

    .line 2159
    :catch_1
    move-exception v0

    .line 2160
    :try_start_2
    const-string v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error updating <redacted values> using <redacted sql> for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public yieldIfContended()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 819
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 821
    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    goto :goto_0
.end method

.method public yieldIfContendedSafely()Z
    .locals 4

    .prologue
    .line 836
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 838
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    goto :goto_0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 861
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    goto :goto_0
.end method

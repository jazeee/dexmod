.class public Lnet/sqlcipher/database/SQLiteCursor;
.super Lnet/sqlcipher/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorState:I

.field private mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

.field private mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

.field private mEditTable:Ljava/lang/String;

.field private mInitialRead:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxRead:I

.field protected mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

.field private mPendingData:Z

.field private mQuery:Lnet/sqlcipher/database/SQLiteQuery;

.field private mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Lnet/sqlcipher/database/SQLiteCursorDriver;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteQuery;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7fffffff

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0}, Lnet/sqlcipher/AbstractWindowedCursor;-><init>()V

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    .line 76
    iput v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    .line 77
    iput v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    .line 78
    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    .line 79
    iput-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 80
    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z

    .line 217
    new-instance v1, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;

    invoke-direct {v1}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v1}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    .line 218
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 219
    iput-object p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    .line 220
    iput-object p3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 221
    iput-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 222
    iput-object p4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    .line 225
    :try_start_0
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 228
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteQuery;->columnCountLocked()I

    move-result v1

    .line 229
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 232
    :goto_0
    if-ge v0, v1, :cond_1

    .line 233
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {v2, v0}, Lnet/sqlcipher/database/SQLiteQuery;->columnNameLocked(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 241
    const-string v3, "_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mRowIdColumnIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method static synthetic access$002(Lnet/sqlcipher/database/SQLiteCursor;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z

    return p1
.end method

.method static synthetic access$100(Lnet/sqlcipher/database/SQLiteCursor;)Lnet/sqlcipher/CursorWindow;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    return-object v0
.end method

.method static synthetic access$200(Lnet/sqlcipher/database/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Lnet/sqlcipher/database/SQLiteCursor;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    return v0
.end method

.method static synthetic access$400(Lnet/sqlcipher/database/SQLiteCursor;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    return v0
.end method

.method static synthetic access$500(Lnet/sqlcipher/database/SQLiteCursor;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$502(Lnet/sqlcipher/database/SQLiteCursor;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return p1
.end method

.method static synthetic access$512(Lnet/sqlcipher/database/SQLiteCursor;I)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$600(Lnet/sqlcipher/database/SQLiteCursor;)Lnet/sqlcipher/database/SQLiteQuery;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    return-object v0
.end method

.method static synthetic access$700(Lnet/sqlcipher/database/SQLiteCursor;)V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->notifyDataSetChange()V

    return-void
.end method

.method private deactivateCommon()V
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    .line 492
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->close()V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 497
    :cond_0
    return-void
.end method

.method private fillWindow(I)V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-nez v0, :cond_1

    .line 279
    new-instance v0, Lnet/sqlcipher/CursorWindow;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sqlcipher/CursorWindow;-><init>(Z)V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 289
    :goto_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0, p1}, Lnet/sqlcipher/CursorWindow;->setStartPosition(I)V

    .line 290
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/sqlcipher/database/SQLiteQuery;->fillWindow(Lnet/sqlcipher/CursorWindow;II)I

    move-result v0

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    .line 292
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 293
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    .line 294
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;

    iget v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {v1, p0, v2}, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;-><init>(Lnet/sqlcipher/database/SQLiteCursor;I)V

    const-string v2, "query thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 297
    :cond_0
    return-void

    .line 281
    :cond_1
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    .line 282
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    .line 284
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method private queryThreadLock()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 102
    :cond_0
    return-void
.end method

.method private queryThreadUnlock()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 508
    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->close()V

    .line 509
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->deactivateCommon()V

    .line 510
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteQuery;->close()V

    .line 511
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v0}, Lnet/sqlcipher/database/SQLiteCursorDriver;->cursorClosed()V

    .line 512
    return-void
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 404
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->supportsUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const-string v0, "Cursor"

    const-string v1, "commitUpdates not supported on this cursor, did you include the _id column?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 486
    :goto_0
    return v0

    .line 414
    :cond_0
    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v5

    .line 415
    if-eqz p1, :cond_1

    .line 416
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 419
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 420
    monitor-exit v5

    move v0, v3

    goto :goto_0

    .line 428
    :cond_2
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 430
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 434
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 435
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 436
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 438
    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    .line 439
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "null rowId or values found! rowId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", values = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 481
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 443
    :cond_5
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 447
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 449
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 452
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "UPDATE "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " SET "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v11, v0, [Ljava/lang/Object;

    move v4, v2

    .line 458
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 459
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 460
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, "=?"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v11, v4

    .line 463
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 464
    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    .line 467
    goto :goto_2

    .line 469
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mRowIdColumnIndex:I

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const/16 v0, 0x3b

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v0, v1, v8, v9}, Lnet/sqlcipher/database/SQLiteDatabase;->rowUpdated(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 475
    :cond_8
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 477
    :try_start_4
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 480
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 481
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 484
    invoke-virtual {p0, v3}, Lnet/sqlcipher/database/SQLiteCursor;->onChange(Z)V

    move v0, v3

    .line 486
    goto/16 :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 501
    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->deactivate()V

    .line 502
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->deactivateCommon()V

    .line 503
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v0}, Lnet/sqlcipher/database/SQLiteCursorDriver;->cursorDeactivated()V

    .line 504
    return-void
.end method

.method public deleteRow()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->checkPosition()V

    .line 337
    iget v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mRowIdColumnIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCurrentRowID:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 338
    :cond_0
    const-string v0, "Cursor"

    const-string v2, "Could not delete row because either the row ID column is not available or ithas not been read."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 378
    :goto_0
    return v0

    .line 352
    :cond_1
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 355
    :try_start_0
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v6, p0, Lnet/sqlcipher/database/SQLiteCursor;->mRowIdColumnIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    .line 362
    :goto_1
    :try_start_1
    iget v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPos:I

    .line 363
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->requery()Z

    .line 369
    invoke-virtual {p0, v3}, Lnet/sqlcipher/database/SQLiteCursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 374
    if-eqz v2, :cond_2

    .line 375
    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteCursor;->onChange(Z)V

    goto :goto_0

    .line 359
    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_1

    .line 371
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0

    :cond_2
    move v0, v1

    .line 378
    goto :goto_0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 4

    .prologue
    .line 623
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-nez v0, :cond_1

    .line 625
    new-instance v0, Lnet/sqlcipher/CursorWindow;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sqlcipher/CursorWindow;-><init>(Z)V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 635
    :goto_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0, p1}, Lnet/sqlcipher/CursorWindow;->setStartPosition(I)V

    .line 636
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/sqlcipher/database/SQLiteQuery;->fillWindow(Lnet/sqlcipher/CursorWindow;II)I

    move-result v0

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    .line 638
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 639
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    .line 640
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;

    iget v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    invoke-direct {v1, p0, v2}, Lnet/sqlcipher/database/SQLiteCursor$QueryThread;-><init>(Lnet/sqlcipher/database/SQLiteCursor;I)V

    const-string v2, "query thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 645
    :cond_0
    return-void

    .line 627
    :cond_1
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    .line 628
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    .line 630
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method protected finalize()V
    .locals 6

    .prologue
    const/16 v0, 0x64

    .line 589
    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v1, v1, Lnet/sqlcipher/database/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 591
    const-string v2, "Cursor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finalizing a Cursor that has not been deactivated or closed. database = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", table = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", query = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    iget-object v4, v4, Lnet/sqlcipher/database/SQLiteQuery;->mSql:Ljava/lang/String;

    const/4 v5, 0x0

    if-le v1, v0, :cond_1

    :goto_0
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->close()V

    .line 596
    invoke-static {}, Lnet/sqlcipher/database/SQLiteDebug;->notifyActiveCursorFinalized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_0
    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->finalize()V

    .line 605
    return-void

    :cond_1
    move v0, v1

    .line 591
    goto :goto_0

    .line 604
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->finalize()V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 302
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 303
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 304
    array-length v3, v2

    .line 305
    new-instance v4, Ljava/util/HashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v0}, Ljava/util/HashMap;-><init>(IF)V

    .line 306
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 307
    aget-object v5, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    iput-object v4, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 313
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 314
    if-eq v0, v1, :cond_2

    .line 315
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 316
    const-string v3, "Cursor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requesting column name with table name -- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 320
    :cond_2
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 321
    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 324
    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/sqlcipher/database/SQLiteCursor;->fillWindow(I)V

    .line 273
    :cond_0
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object v0
.end method

.method public onMove(II)Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v1}, Lnet/sqlcipher/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 262
    :cond_0
    invoke-direct {p0, p2}, Lnet/sqlcipher/database/SQLiteCursor;->fillWindow(I)V

    .line 265
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 182
    invoke-super {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 183
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    if-eq v1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    if-nez v0, :cond_2

    .line 185
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    .line 187
    :try_start_0
    new-instance v0, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    invoke-direct {v0, p0}, Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;-><init>(Lnet/sqlcipher/database/SQLiteCursor;)V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mNotificationHandler:Lnet/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler;

    .line 188
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->notifyDataSetChange()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPendingData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_1
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    .line 197
    :cond_2
    return-void

    .line 193
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public requery()Z
    .locals 2

    .prologue
    .line 516
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 557
    :goto_0
    return v0

    .line 527
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 529
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->clear()V

    .line 532
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mPos:I

    .line 534
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v0, p0}, Lnet/sqlcipher/database/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    .line 535
    const/4 v0, -0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    .line 536
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    .line 537
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 539
    :try_start_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mQuery:Lnet/sqlcipher/database/SQLiteQuery;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteQuery;->requery()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :try_start_2
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 544
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 552
    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->requery()Z

    move-result v0

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 544
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setLoadStyle(II)V
    .locals 2

    .prologue
    .line 93
    iput p2, p0, Lnet/sqlcipher/database/SQLiteCursor;->mMaxRead:I

    .line 94
    iput p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mInitialRead:I

    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 96
    return-void
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mDriver:Lnet/sqlcipher/database/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Lnet/sqlcipher/database/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public setWindow(Lnet/sqlcipher/CursorWindow;)V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_0

    .line 563
    iget v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCursorState:I

    .line 564
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadLock()V

    .line 566
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    .line 570
    const/4 v0, -0x1

    iput v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mCount:I

    .line 572
    :cond_0
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 573
    return-void

    .line 568
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

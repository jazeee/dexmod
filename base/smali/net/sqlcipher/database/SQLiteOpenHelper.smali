.class public abstract Lnet/sqlcipher/database/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

.field private final mErrorHandler:Lnet/sqlcipher/DatabaseErrorHandler;

.field private final mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

.field private final mHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lnet/sqlcipher/database/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sqlcipher/database/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V
    .locals 7

    .prologue
    .line 63
    const/4 v5, 0x0

    new-instance v6, Lnet/sqlcipher/DefaultDatabaseErrorHandler;

    invoke-direct {v6}, Lnet/sqlcipher/DefaultDatabaseErrorHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)V
    .locals 7

    .prologue
    .line 80
    new-instance v6, Lnet/sqlcipher/DefaultDatabaseErrorHandler;

    invoke-direct {v6}, Lnet/sqlcipher/DefaultDatabaseErrorHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)V
    .locals 3

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 102
    if-gtz p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version must be >= 1, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    if-nez p6, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DatabaseErrorHandler param value can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

    .line 110
    iput p4, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    .line 111
    iput-object p5, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    .line 112
    iput-object p6, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mErrorHandler:Lnet/sqlcipher/DatabaseErrorHandler;

    .line 113
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 214
    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getReadableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReadableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 6

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 222
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getReadableDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 227
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getWritableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_2
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    :try_start_3
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v1, :cond_3

    throw v0

    .line 230
    :cond_3
    sget-object v1, Lnet/sqlcipher/database/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t open "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for writing (will try read-only):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 236
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 241
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 243
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 244
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 245
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getWritableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 246
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 247
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 249
    :cond_5
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

    const/4 v3, 0x1

    invoke-static {v0, p1, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result v2

    iget v3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    if-eq v2, v3, :cond_7

    .line 251
    new-instance v2, Lnet/sqlcipher/database/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t upgrade read-only database from version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/sqlcipher/database/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 260
    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 261
    if-eqz v1, :cond_6

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eq v1, v2, :cond_6

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    :cond_6
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 255
    :cond_7
    :try_start_6
    invoke-virtual {p0, v1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 256
    sget-object v0, Lnet/sqlcipher/database/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opened "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in read-only mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 258
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 260
    const/4 v2, 0x0

    :try_start_7
    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 261
    if-eqz v1, :cond_0

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getWritableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWritableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    monitor-exit p0

    return-object v0

    .line 137
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getWritableDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 149
    :cond_1
    :try_start_2
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    :cond_2
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 152
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 153
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->create(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;[C)Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 166
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 167
    iget v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    if-eq v1, v2, :cond_3

    .line 168
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 170
    if-nez v1, :cond_7

    .line 171
    :try_start_5
    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 175
    :goto_2
    iget v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->setVersion(I)V

    .line 176
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 178
    :try_start_6
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 182
    :cond_3
    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 186
    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 188
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_4

    .line 189
    :try_start_8
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 190
    :goto_3
    :try_start_9
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 192
    :cond_4
    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 156
    :cond_5
    :try_start_a
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 162
    :cond_6
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mErrorHandler:Lnet/sqlcipher/DatabaseErrorHandler;

    invoke-static {v0, p1, v2, v3, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;[CLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-object v0

    goto :goto_1

    .line 173
    :cond_7
    :try_start_b
    iget v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v1, v2}, Lnet/sqlcipher/database/SQLiteOpenHelper;->onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 178
    :catchall_1
    move-exception v1

    :try_start_c
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 186
    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_4
    const/4 v2, 0x0

    :try_start_d
    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 194
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 195
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    :cond_9
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 186
    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public abstract onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
.end method

.method public onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public abstract onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
.end method

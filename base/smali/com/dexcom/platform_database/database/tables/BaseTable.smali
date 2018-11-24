.class public abstract Lcom/dexcom/platform_database/database/tables/BaseTable;
.super Ljava/lang/Object;
.source "BaseTable.java"


# static fields
.field protected static final DATABASE_VERSION_1:I = 0x1

.field protected static final DATABASE_VERSION_2:I = 0x2


# instance fields
.field private m_database:Lnet/sqlcipher/database/SQLiteDatabase;

.field private final m_recordType:Ljava/lang/Class;

.field private m_shouldPrune:Z

.field private tableName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_shouldPrune:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 46
    iput-object p1, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_recordType:Ljava/lang/Class;

    .line 47
    iput-boolean p2, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_shouldPrune:Z

    .line 48
    return-void
.end method

.method private doesColumnExist(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 97
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 104
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 105
    array-length v3, v2

    move v0, v8

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 107
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    if-eqz v1, :cond_3

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_4

    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 115
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->tableName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_recordType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->tableName:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method private pruneDataIfNeeded()V
    .locals 6

    .prologue
    .line 180
    const-string v0, "recorded_time_stamp"

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->doesColumnExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 184
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 186
    const-string v2, "recorded_time_stamp <= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/dexcom/platform_database/database/tables/BaseTable;->deleteRecords(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readMinOrMaxNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 439
    const-string v0, "MAX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MIN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Developer error: Must pass in either \'MAX\' or \'MIN\' to readMinOrMaxRecordID()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1

    .line 450
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 451
    if-nez v0, :cond_3

    .line 460
    if-eqz v1, :cond_1

    .line 461
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    :cond_2
    :goto_0
    return v0

    .line 456
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 460
    if-eqz v1, :cond_2

    .line 461
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 461
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private readMinOrMaxRecordID(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 389
    const-string v0, "MAX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Developer error: Must pass in either \'MAX\' or \'MIN\' to readMinOrMaxRecordID()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(record_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 401
    if-nez v0, :cond_3

    .line 410
    if-eqz v1, :cond_1

    .line 411
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    :cond_2
    :goto_0
    return v0

    .line 406
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 410
    if-eqz v1, :cond_2

    .line 411
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 411
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private validateInput(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 196
    if-nez p1, :cond_0

    move v2, v1

    .line 197
    :goto_0
    if-nez p2, :cond_1

    .line 198
    :goto_1
    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 200
    const-string v0, "Developer error; queryString and queryParameters must either be both null, or both non-null. "

    .line 203
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v2, v0

    .line 196
    goto :goto_0

    :cond_1
    move v1, v0

    .line 197
    goto :goto_1

    .line 206
    :cond_2
    if-nez p1, :cond_4

    .line 233
    :cond_3
    return-void

    .line 210
    :cond_4
    const-string v1, "?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 211
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 214
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 217
    :cond_5
    if-gtz v0, :cond_6

    .line 219
    const-string v0, "Developer error; queryString was non-null, but did not contain a question mark (a query parameter). "

    .line 222
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 225
    :cond_6
    array-length v1, p2

    if-eq v0, v1, :cond_3

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer error; The number of parameters in queryString ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") did not match the number of parameters in queryParameters ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public countRecords()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v0, v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->countRecords(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected countRecords(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 473
    invoke-direct {p0, p1, p2}, Lcom/dexcom/platform_database/database/tables/BaseTable;->validateInput(Ljava/lang/String;[Ljava/lang/String;)V

    .line 479
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SELECT COUNT(*) FROM "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1

    .line 489
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 490
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 494
    if-eqz v1, :cond_0

    .line 495
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 486
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 495
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected createOrUpdateRecord(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->createOrUpdateRecord(Ljava/lang/Object;I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected createOrUpdateRecord(Ljava/lang/Object;I)J
    .locals 5

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_shouldPrune:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->pruneDataIfNeeded()V

    .line 158
    :cond_0
    invoke-static {p1, p2}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->contentValuesFromObject(Ljava/lang/Object;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 165
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 167
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occurred when inserting into "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to insert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_recordType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " record into database. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    return-wide v0
.end method

.method protected deleteRecords()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method protected deleteRecords(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method public printTable()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    :try_start_0
    iget-object v2, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 509
    if-nez v1, :cond_1

    .line 560
    if-eqz v1, :cond_0

    .line 561
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 515
    if-nez v0, :cond_2

    .line 517
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No entries to print in table: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    if-eqz v1, :cond_0

    .line 561
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 521
    :cond_2
    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Printing table: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 523
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    .line 526
    :cond_3
    const-string v2, ""

    .line 527
    const/4 v0, 0x0

    move-object v3, v2

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    .line 529
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    .line 530
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    .line 532
    packed-switch v0, :pswitch_data_0

    .line 547
    const-string v0, ""

    .line 550
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 535
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 538
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 541
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 544
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "byte array of size: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 554
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 556
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 560
    if-eqz v1, :cond_0

    .line 561
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 560
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 561
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public readHighestRecordID()I
    .locals 1

    .prologue
    .line 384
    const-string v0, "MAX"

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readMinOrMaxRecordID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public readLowestRecordID()I
    .locals 1

    .prologue
    .line 376
    const-string v0, "MIN"

    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readMinOrMaxRecordID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected readMaxNumber(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 426
    const-string v0, "MAX"

    invoke-direct {p0, p1, v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readMinOrMaxNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected readMinNumber(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 434
    const-string v0, "MIN"

    invoke-direct {p0, p1, v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readMinOrMaxNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected readRecords()Ljava/util/List;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, v0, v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 306
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/dexcom/platform_database/database/tables/BaseTable;->validateInput(Ljava/lang/String;[Ljava/lang/String;)V

    .line 262
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lez p4, :cond_3

    .line 274
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    .line 267
    invoke-virtual/range {v0 .. v8}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 276
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 277
    if-eqz v0, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_recordType:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->objectFromCursor(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 287
    if-nez v0, :cond_0

    .line 294
    :cond_1
    if-eqz v1, :cond_2

    .line 296
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v10

    :cond_3
    move-object v8, v9

    .line 274
    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_1
    if-eqz v1, :cond_4

    .line 296
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 294
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected readRecordsBasedOnTime(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 8

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 348
    invoke-virtual/range {v0 .. v6}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readRecordsBasedOnTime(Ljava/lang/String;JJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected readRecordsBasedOnTime(Ljava/lang/String;JJLjava/lang/String;)Ljava/util/List;
    .locals 4

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <= ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 355
    invoke-virtual {p0, v0, v1, p6}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readRecordsByID(II)Ljava/util/List;
    .locals 4

    .prologue
    .line 417
    const-string v0, "record_id >= ? AND record_id <= ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 418
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 417
    invoke-virtual {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected readTopRecord(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 335
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public resetTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method protected setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 2

    .prologue
    .line 570
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;-><init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->build()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method

.method public setDatabase(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_database:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 53
    return-void
.end method

.method public upgradeTableIfNeeded(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 7

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dexcom/platform_database/database/tables/BaseTable;->m_recordType:Ljava/lang/Class;

    invoke-static {v0, p2}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getCreateOrAlterStatementArray(Ljava/lang/Class;I)[Ljava/lang/String;

    move-result-object v1

    .line 71
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 76
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Executing:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Skipping for changes for version"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Bad Statement"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :cond_1
    return-void
.end method

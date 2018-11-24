.class public Lnet/sqlcipher/database/SQLiteStatement;
.super Lnet/sqlcipher/database/SQLiteProgram;
.source "SQLiteStatement.java"


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private final native native_1x1_long()J
.end method

.method private final native native_1x1_string()Ljava/lang/String;
.end method

.method private final native native_execute()V
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 54
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 56
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    .line 58
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_execute()V

    .line 59
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 62
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 62
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public executeInsert()J
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 80
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 82
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    .line 84
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_execute()V

    .line 85
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 86
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lastChangeCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lastInsertRow()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 88
    :goto_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 89
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v0

    .line 86
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 89
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public executeUpdateDelete()I
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 98
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 100
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    .line 102
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_execute()V

    .line 103
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 104
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lastChangeCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 106
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 107
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return v0

    .line 106
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 107
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public simpleQueryForLong()J
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 124
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 126
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    .line 128
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_1x1_long()J

    move-result-wide v2

    .line 129
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 133
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v2

    .line 132
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 133
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 146
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 150
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 152
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->acquireReference()V

    .line 154
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteStatement;->native_1x1_string()Ljava/lang/String;

    move-result-object v2

    .line 155
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 159
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-object v2

    .line 158
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->releaseReference()V

    .line 159
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteStatement;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

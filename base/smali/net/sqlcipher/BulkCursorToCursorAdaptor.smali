.class public final Lnet/sqlcipher/BulkCursorToCursorAdaptor;
.super Lnet/sqlcipher/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BulkCursor"


# instance fields
.field private mBulkCursor:Lnet/sqlcipher/IBulkCursor;

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mObserverBridge:Lnet/sqlcipher/AbstractCursor$SelfContentObserver;

.field private mWantsAllOnMoveCalls:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lnet/sqlcipher/AbstractWindowedCursor;-><init>()V

    return-void
.end method

.method public static findRowIdColumnIndex([Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 74
    array-length v1, p0

    .line 75
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 76
    aget-object v2, p0, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :goto_1
    return v0

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->close()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v0}, Lnet/sqlcipher/IBulkCursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 152
    return-void

    .line 149
    :catch_0
    move-exception v0

    const-string v0, "BulkCursor"

    const-string v1, "Remote process exception when closing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final commitUpdates(Ljava/util/Map;)Z
    .locals 5
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
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->supportsUpdates()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    const-string v1, "BulkCursor"

    const-string v2, "commitUpdates not supported on this cursor, did you include the _id column?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return v0

    .line 238
    :cond_0
    iget-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 239
    if-eqz p1, :cond_1

    .line 240
    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 243
    :cond_1
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 244
    monitor-exit v2

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 248
    :cond_2
    :try_start_1
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    iget-object v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-interface {v1, v3}, Lnet/sqlcipher/IBulkCursor;->updateRows(Ljava/util/Map;)Z

    move-result v1

    .line 250
    if-ne v1, v4, :cond_3

    .line 251
    iget-object v3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 254
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->onChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :cond_3
    :try_start_2
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    const-string v1, "BulkCursor"

    const-string v3, "Unable to commit updates because the remote process is dead"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public final deactivate()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->deactivate()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v0}, Lnet/sqlcipher/IBulkCursor;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 141
    return-void

    .line 138
    :catch_0
    move-exception v0

    const-string v0, "BulkCursor"

    const-string v1, "Remote process exception when deactivating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final deleteRow()Z
    .locals 3

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    iget v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I

    invoke-interface {v0, v1}, Lnet/sqlcipher/IBulkCursor;->deleteRow(I)Z

    move-result v0

    .line 189
    if-eqz v0, :cond_0

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 194
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1}, Lnet/sqlcipher/IBulkCursor;->count()I

    move-result v1

    iput v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    .line 195
    iget v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I

    iget v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    if-ge v1, v2, :cond_1

    .line 196
    iget v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I

    .line 197
    const/4 v2, -0x1

    iput v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I

    .line 198
    invoke-virtual {p0, v1}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->moveToPosition(I)Z

    .line 204
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->onChange(Z)V

    .line 209
    :cond_0
    :goto_1
    return v0

    .line 200
    :cond_1
    iget v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    iput v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    const-string v0, "BulkCursor"

    const-string v1, "Unable to delete row because the remote process is dead"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 217
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v0}, Lnet/sqlcipher/IBulkCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    const-string v0, "BulkCursor"

    const-string v1, "Unable to fetch column names because the remote process is dead"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    return v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 267
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v0}, Lnet/sqlcipher/IBulkCursor;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final declared-synchronized getObserver()Lnet/sqlcipher/IContentObserver;
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mObserverBridge:Lnet/sqlcipher/AbstractCursor$SelfContentObserver;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lnet/sqlcipher/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Lnet/sqlcipher/AbstractCursor$SelfContentObserver;-><init>(Lnet/sqlcipher/AbstractCursor;)V

    iput-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mObserverBridge:Lnet/sqlcipher/AbstractCursor$SelfContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onMove(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 105
    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v1}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v1}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result v1

    iget-object v2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v2}, Lnet/sqlcipher/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_2

    .line 108
    :cond_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1, p2}, Lnet/sqlcipher/IBulkCursor;->getWindow(I)Lnet/sqlcipher/CursorWindow;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-nez v1, :cond_4

    .line 126
    :goto_1
    return v0

    .line 109
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1, p2}, Lnet/sqlcipher/IBulkCursor;->onMove(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    const-string v1, "BulkCursor"

    const-string v2, "Unable to get window because the remote process is dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    :cond_3
    :try_start_2
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v1, p2}, Lnet/sqlcipher/IBulkCursor;->getWindow(I)Lnet/sqlcipher/CursorWindow;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 126
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public final requery()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 159
    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->getObserver()Lnet/sqlcipher/IContentObserver;

    move-result-object v2

    new-instance v3, Lnet/sqlcipher/CursorWindow;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lnet/sqlcipher/CursorWindow;-><init>(Z)V

    invoke-interface {v1, v2, v3}, Lnet/sqlcipher/IBulkCursor;->requery(Lnet/sqlcipher/IContentObserver;Lnet/sqlcipher/CursorWindow;)I

    move-result v1

    iput v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    .line 161
    iget v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    if-eq v1, v5, :cond_0

    .line 162
    const/4 v1, -0x1

    iput v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mPos:I

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 168
    invoke-super {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->requery()Z

    .line 169
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    const-string v2, "BulkCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to requery because the remote process exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->deactivate()V

    goto :goto_0
.end method

.method public final respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v0, p1}, Lnet/sqlcipher/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 283
    const-string v1, "BulkCursor"

    const-string v2, "respond() threw RemoteException, returning an empty bundle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final set(Lnet/sqlcipher/IBulkCursor;)V
    .locals 2

    .prologue
    .line 45
    iput-object p1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    .line 48
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v0}, Lnet/sqlcipher/IBulkCursor;->count()I

    move-result v0

    iput v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    .line 49
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v0}, Lnet/sqlcipher/IBulkCursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    .line 52
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    invoke-interface {v0}, Lnet/sqlcipher/IBulkCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    invoke-static {v0}, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->findRowIdColumnIndex([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mRowIdColumnIndex:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    const-string v0, "BulkCursor"

    const-string v1, "Setup failed because the remote process is dead"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final set(Lnet/sqlcipher/IBulkCursor;II)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mBulkCursor:Lnet/sqlcipher/IBulkCursor;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    .line 66
    iput p2, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mCount:I

    .line 67
    iput p3, p0, Lnet/sqlcipher/BulkCursorToCursorAdaptor;->mRowIdColumnIndex:I

    .line 68
    return-void
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

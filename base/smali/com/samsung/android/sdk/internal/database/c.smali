.class public final Lcom/samsung/android/sdk/internal/database/c;
.super Landroid/database/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"


# instance fields
.field private a:Lcom/samsung/android/sdk/internal/database/d;

.field private b:[Ljava/lang/String;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Attempted to access a cursor after it has been closed."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    invoke-interface {v0}, Lcom/samsung/android/sdk/internal/database/d;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iput-object v2, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "BulkCursor"

    const-string v1, "Remote process exception when closing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    iput-object v2, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    throw v0
.end method

.method protected final closeWindow()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->mWindow:Landroid/database/CursorWindow;

    .line 137
    :cond_0
    return-void
.end method

.method public final deactivate()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    invoke-interface {v0}, Lcom/samsung/android/sdk/internal/database/d;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    const-string v0, "BulkCursor"

    const-string v1, "Remote process exception when deactivating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final getColumnIndex(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 201
    .line 202
    iget-object v3, p0, Lcom/samsung/android/sdk/internal/database/c;->b:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    .line 203
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    :goto_1
    return v0

    .line 206
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 202
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/c;->a()V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/c;->a()V

    .line 73
    iget v0, p0, Lcom/samsung/android/sdk/internal/database/c;->d:I

    return v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/c;->a()V

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    invoke-interface {v0}, Lcom/samsung/android/sdk/internal/database/d;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final initialize(Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->cursor:Lcom/samsung/android/sdk/internal/database/d;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    .line 45
    iget-object v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->b:[Ljava/lang/String;

    .line 46
    iget-boolean v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/internal/database/c;->c:Z

    .line 47
    iget v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    iput v0, p0, Lcom/samsung/android/sdk/internal/database/c;->d:I

    .line 48
    iget-object v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/internal/database/c;->setWindow(Landroid/database/CursorWindow;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final onMove(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/c;->a()V

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/database/c;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/internal/database/c;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/internal/database/c;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/internal/database/c;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_3

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    invoke-interface {v1, p2}, Lcom/samsung/android/sdk/internal/database/d;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/internal/database/c;->setWindow(Landroid/database/CursorWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/database/c;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0

    .line 86
    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/sdk/internal/database/c;->c:Z

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    invoke-interface {v1, p2}, Lcom/samsung/android/sdk/internal/database/d;->onMove(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    const-string v1, "BulkCursor"

    const-string v2, "Unable to get window because the remote process is dead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final requery()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/c;->a()V

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    invoke-interface {v1}, Lcom/samsung/android/sdk/internal/database/d;->requery()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/internal/database/c;->d:I

    .line 146
    iget v1, p0, Lcom/samsung/android/sdk/internal/database/c;->d:I

    if-eq v1, v2, :cond_0

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/internal/database/c;->mPos:I

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/c;->closeWindow()V

    .line 151
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    .line 152
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/c;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
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

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/c;->deactivate()V

    goto :goto_0
.end method

.method public final respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/c;->a()V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/c;->a:Lcom/samsung/android/sdk/internal/database/d;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/internal/database/d;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "BulkCursor"

    const-string v2, "respond() threw RemoteException, returning an empty bundle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method

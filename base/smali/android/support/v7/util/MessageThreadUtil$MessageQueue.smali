.class Landroid/support/v7/util/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# instance fields
.field private mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 239
    :goto_0
    monitor-exit p0

    return-object v0

    .line 237
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 238
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeMessages(I)V
    .locals 4

    .prologue
    .line 260
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iget v0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v0, p1, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 262
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 263
    invoke-virtual {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 265
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 267
    invoke-static {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    .line 268
    :goto_1
    if-eqz v1, :cond_2

    .line 269
    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v2

    .line 270
    iget v3, v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_1

    .line 271
    invoke-static {v0, v2}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 272
    invoke-virtual {v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    move-object v1, v2

    .line 277
    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 274
    goto :goto_2

    .line 279
    :cond_2
    monitor-exit p0

    return-void
.end method

.method declared-synchronized sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 2

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-nez v0, :cond_0

    .line 249
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 253
    :goto_1
    invoke-static {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 254
    invoke-static {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    goto :goto_1

    .line 256
    :cond_1
    invoke-static {v0, p1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-static {p1, v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 244
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

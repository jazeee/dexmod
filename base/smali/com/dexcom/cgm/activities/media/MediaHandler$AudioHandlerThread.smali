.class Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;
.super Landroid/os/HandlerThread;
.source "MediaHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final RESOURCEID:I

.field private final URI:I

.field private mHandler:Landroid/os/Handler;

.field private m_mediaPlayer:Landroid/media/MediaPlayer;

.field private m_resourceId:I

.field private m_stream:I

.field private m_uri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/activities/media/MediaHandler;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    .line 122
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 117
    const/16 v0, 0xa

    iput v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->RESOURCEID:I

    .line 118
    const/16 v0, 0xb

    iput v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->URI:I

    .line 123
    return-void
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->destroyLocalPlayer()V

    return-void
.end method

.method private destroyLocalPlayer()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 268
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private playSound()V
    .locals 3

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 192
    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$200(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot start media player: "

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method private setupMediaPlayer()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 200
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread$1;-><init>(Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 214
    return-void
.end method

.method private startPlayingNewAudio(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$200(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot start. Media player is null!"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 225
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->stopPlayingExistingAudio()V

    .line 226
    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 228
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 229
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 237
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->playSound()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 241
    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$200(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to prepare mediaplayer for playback: "

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 230
    :cond_1
    const/16 v0, 0xb

    if-ne p2, v0, :cond_2

    .line 231
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_uri:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 232
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_stream:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 244
    :catch_1
    move-exception v0

    .line 246
    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$200(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to prepare mediaplayer for playback: "

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 234
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to play unknown data source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 249
    :catch_2
    move-exception v0

    .line 252
    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$200(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to prepare mediaplayer for playback: "

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 255
    :catch_3
    move-exception v0

    .line 257
    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$200(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to prepare mediaplayer for playback: "

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private stopPlayingExistingAudio()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->mHandler:Landroid/os/Handler;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 141
    const/4 v2, 0x0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->setupMediaPlayer()V

    .line 148
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown message handler msg received"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$200(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Exception thrown while handling thread message: "

    invoke-static {v1, v3, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 181
    :goto_0
    return v0

    .line 152
    :pswitch_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dexcom/cgm/i/a/a/a;

    .line 153
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundFileName()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "raw"

    iget-object v6, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v6}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$000(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_resourceId:I

    .line 155
    const/16 v0, 0xa

    invoke-direct {p0, v3, v0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->startPlayingNewAudio(Landroid/content/Context;I)V

    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_uri:Landroid/net/Uri;

    .line 160
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->m_stream:I

    .line 161
    const/16 v0, 0xb

    invoke-direct {p0, v3, v0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->startPlayingNewAudio(Landroid/content/Context;I)V

    move v0, v1

    .line 163
    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->stopPlayingExistingAudio()V

    move v0, v1

    .line 167
    goto :goto_0

    .line 169
    :pswitch_3
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->destroyLocalPlayer()V

    .line 170
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$100(Lcom/dexcom/cgm/activities/media/MediaHandler;)Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->quit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 172
    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

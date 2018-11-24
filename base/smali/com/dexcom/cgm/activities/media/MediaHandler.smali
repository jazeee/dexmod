.class public Lcom/dexcom/cgm/activities/media/MediaHandler;
.super Ljava/lang/Object;
.source "MediaHandler.java"


# instance fields
.field private final DESTROY:I

.field private final PLAY_ID:I

.field private final PLAY_URI:I

.field private final STOP:I

.field private TAG:Ljava/lang/String;

.field private m_audioHandlerThread:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

.field private m_errorListener:Lcom/dexcom/cgm/activities/media/MediaHandler$ErrorListener;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->PLAY_URI:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->PLAY_ID:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->STOP:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->DESTROY:I

    .line 42
    iput-object p1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->TAG:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->packageName:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;-><init>(Lcom/dexcom/cgm/activities/media/MediaHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->m_audioHandlerThread:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->m_audioHandlerThread:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->start()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/media/MediaHandler;)Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->m_audioHandlerThread:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/media/MediaHandler;)Lcom/dexcom/cgm/activities/media/MediaHandler$ErrorListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->m_errorListener:Lcom/dexcom/cgm/activities/media/MediaHandler$ErrorListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 93
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->m_audioHandlerThread:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method

.method public play(Landroid/net/Uri;I)V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 69
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 70
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 72
    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->m_audioHandlerThread:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    return-void
.end method

.method public play(Lcom/dexcom/cgm/i/a/a/a;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 57
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->m_audioHandlerThread:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-void
.end method

.method public setMediaPlayerErrorListener(Lcom/dexcom/cgm/activities/media/MediaHandler$ErrorListener;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->m_errorListener:Lcom/dexcom/cgm/activities/media/MediaHandler$ErrorListener;

    .line 105
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 82
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 83
    iget-object v1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler;->m_audioHandlerThread:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    return-void
.end method

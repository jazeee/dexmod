.class Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread$1;
.super Ljava/lang/Object;
.source "MediaHandler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$200(Lcom/dexcom/cgm/activities/media/MediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "POSSIBLE CRITICAL ERROR - media player error: ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->access$300(Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;)V

    .line 210
    iget-object v0, p0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread$1;->this$1:Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/media/MediaHandler$AudioHandlerThread;->this$0:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/media/MediaHandler;->access$400(Lcom/dexcom/cgm/activities/media/MediaHandler;)Lcom/dexcom/cgm/activities/media/MediaHandler$ErrorListener;

    move-result-object v0

    const-string v1, "MEDIAPLAYER ERROR"

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/activities/media/MediaHandler$ErrorListener;->onMediaPlayerError(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    return v0
.end method

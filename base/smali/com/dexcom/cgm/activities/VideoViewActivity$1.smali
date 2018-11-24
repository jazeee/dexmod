.class Lcom/dexcom/cgm/activities/VideoViewActivity$1;
.super Ljava/lang/Object;
.source "VideoViewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/VideoViewActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/VideoViewActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dexcom/cgm/activities/VideoViewActivity$1;->this$0:Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    const-string v1, "VIDEO_URL"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/VideoViewActivity$1;->this$0:Lcom/dexcom/cgm/activities/VideoViewActivity;

    iget-object v2, v2, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoURLString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/dexcom/cgm/activities/VideoViewActivity$1;->this$0:Lcom/dexcom/cgm/activities/VideoViewActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/activities/VideoViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/activities/VideoViewActivity$1;->this$0:Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/VideoViewActivity;->finish()V

    .line 72
    return-void
.end method

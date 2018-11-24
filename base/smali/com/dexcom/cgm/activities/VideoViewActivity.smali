.class public Lcom/dexcom/cgm/activities/VideoViewActivity;
.super Landroid/app/Activity;
.source "VideoViewActivity.java"


# static fields
.field static final DEFAULT_START_OFFSET:I = 0x0

.field static final START_OFFSET_IN_SECONDS:Ljava/lang/String; = "START_OFFSET_IN_SECONDS"

.field static final VIDEO_URL_STRING_EXTRA:Ljava/lang/String; = "VIDEO_URL"


# instance fields
.field m_StartOffset:I

.field m_videoURLString:Ljava/lang/String;

.field m_videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 87
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_video_view:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/VideoViewActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->videoView:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    .line 47
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VIDEO_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoURLString:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoURLString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    const-string v1, "VIDEO_URL"

    const-string v2, "Invalid URL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v3, v0}, Lcom/dexcom/cgm/activities/VideoViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 52
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/VideoViewActivity;->finish()V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "START_OFFSET_IN_SECONDS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoURLString:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    new-instance v3, Landroid/widget/MediaController;

    invoke-direct {v3, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 60
    iget-object v2, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 61
    iget-object v1, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/dexcom/cgm/activities/VideoViewActivity$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/VideoViewActivity$1;-><init>(Lcom/dexcom/cgm/activities/VideoViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 74
    iget-object v1, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 75
    iget-object v1, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 76
    if-eqz v0, :cond_1

    .line 78
    iget-object v1, p0, Lcom/dexcom/cgm/activities/VideoViewActivity;->m_videoView:Landroid/widget/VideoView;

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_0
.end method

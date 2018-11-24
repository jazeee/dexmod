.class public Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;
.super Landroid/os/AsyncTask;
.source "UserGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/activities/UserGuideActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 123
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$000(Lcom/dexcom/cgm/activities/UserGuideActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v1, "Test"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$000(Lcom/dexcom/cgm/activities/UserGuideActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 130
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 131
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v2, v1

    .line 132
    iget-object v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$100(Lcom/dexcom/cgm/activities/UserGuideActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 135
    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    .line 136
    invoke-static {v1}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$100(Lcom/dexcom/cgm/activities/UserGuideActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xc

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->publishProgress([Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$202(Lcom/dexcom/cgm/activities/UserGuideActivity;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    .line 146
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$100(Lcom/dexcom/cgm/activities/UserGuideActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 147
    iget-object v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$100(Lcom/dexcom/cgm/activities/UserGuideActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 148
    iget-object v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$202(Lcom/dexcom/cgm/activities/UserGuideActivity;Z)Z

    .line 149
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v4}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$100(Lcom/dexcom/cgm/activities/UserGuideActivity;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 150
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 151
    const v4, 0xc800

    new-array v4, v4, [B

    .line 154
    :goto_2
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 158
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 160
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 161
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v7}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$100(Lcom/dexcom/cgm/activities/UserGuideActivity;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-float v7, v8

    long-to-float v8, v2

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 168
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$202(Lcom/dexcom/cgm/activities/UserGuideActivity;Z)Z

    .line 165
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$500(Lcom/dexcom/cgm/activities/UserGuideActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$600(Lcom/dexcom/cgm/activities/UserGuideActivity;)V

    .line 192
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$300(Lcom/dexcom/cgm/activities/UserGuideActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 182
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->access$400(Lcom/dexcom/cgm/activities/UserGuideActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/UserGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->download_percentage:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

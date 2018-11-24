.class final Lcom/soundcloud/android/crop/e;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/soundcloud/android/crop/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/soundcloud/android/crop/e;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 171
    iget-object v1, p0, Lcom/soundcloud/android/crop/e;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v1}, Lcom/soundcloud/android/crop/CropImageActivity;->access$200(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/f;

    invoke-direct {v2, p0, v0}, Lcom/soundcloud/android/crop/f;-><init>(Lcom/soundcloud/android/crop/e;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    new-instance v0, Lcom/soundcloud/android/crop/i;

    iget-object v1, p0, Lcom/soundcloud/android/crop/e;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/i;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;B)V

    .line 1225
    iget-object v1, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v1}, Lcom/soundcloud/android/crop/CropImageActivity;->access$200(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/j;

    invoke-direct {v2, v0}, Lcom/soundcloud/android/crop/j;-><init>(Lcom/soundcloud/android/crop/i;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

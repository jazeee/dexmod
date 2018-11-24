.class final Lcom/soundcloud/android/crop/f;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/concurrent/CountDownLatch;

.field private synthetic b:Lcom/soundcloud/android/crop/e;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/e;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/soundcloud/android/crop/f;->b:Lcom/soundcloud/android/crop/e;

    iput-object p2, p0, Lcom/soundcloud/android/crop/f;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Lcom/soundcloud/android/crop/f;->b:Lcom/soundcloud/android/crop/e;

    iget-object v0, v0, Lcom/soundcloud/android/crop/e;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/soundcloud/android/crop/f;->b:Lcom/soundcloud/android/crop/e;

    iget-object v0, v0, Lcom/soundcloud/android/crop/e;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/soundcloud/android/crop/CropImageView;->center(ZZ)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/f;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    return-void
.end method

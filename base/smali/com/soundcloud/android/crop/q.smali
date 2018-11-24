.class final Lcom/soundcloud/android/crop/q;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:F

.field private synthetic b:J

.field private synthetic c:F

.field private synthetic d:F

.field private synthetic e:F

.field private synthetic f:F

.field private synthetic g:Lcom/soundcloud/android/crop/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;FJFFFF)V
    .locals 1

    .prologue
    .line 311
    iput-object p1, p0, Lcom/soundcloud/android/crop/q;->g:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iput p2, p0, Lcom/soundcloud/android/crop/q;->a:F

    iput-wide p3, p0, Lcom/soundcloud/android/crop/q;->b:J

    iput p5, p0, Lcom/soundcloud/android/crop/q;->c:F

    iput p6, p0, Lcom/soundcloud/android/crop/q;->d:F

    iput p7, p0, Lcom/soundcloud/android/crop/q;->e:F

    iput p8, p0, Lcom/soundcloud/android/crop/q;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 314
    iget v2, p0, Lcom/soundcloud/android/crop/q;->a:F

    iget-wide v4, p0, Lcom/soundcloud/android/crop/q;->b:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 315
    iget v1, p0, Lcom/soundcloud/android/crop/q;->c:F

    iget v2, p0, Lcom/soundcloud/android/crop/q;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 316
    iget-object v2, p0, Lcom/soundcloud/android/crop/q;->g:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iget v3, p0, Lcom/soundcloud/android/crop/q;->e:F

    iget v4, p0, Lcom/soundcloud/android/crop/q;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 318
    iget v1, p0, Lcom/soundcloud/android/crop/q;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/soundcloud/android/crop/q;->g:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iget-object v0, v0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    :cond_0
    return-void
.end method

.class final Lcom/soundcloud/android/crop/p;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/soundcloud/android/crop/v;

.field private synthetic b:Z

.field private synthetic c:Lcom/soundcloud/android/crop/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;Lcom/soundcloud/android/crop/v;Z)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/soundcloud/android/crop/p;->c:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iput-object p2, p0, Lcom/soundcloud/android/crop/p;->a:Lcom/soundcloud/android/crop/v;

    iput-boolean p3, p0, Lcom/soundcloud/android/crop/p;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/soundcloud/android/crop/p;->c:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iget-object v1, p0, Lcom/soundcloud/android/crop/p;->a:Lcom/soundcloud/android/crop/v;

    iget-boolean v2, p0, Lcom/soundcloud/android/crop/p;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/v;Z)V

    .line 161
    return-void
.end method

.class final Lcom/soundcloud/android/crop/b;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Lcom/soundcloud/android/crop/r;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final recycle(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 75
    return-void
.end method

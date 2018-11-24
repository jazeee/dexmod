.class public Lcom/soundcloud/android/crop/CropImageActivity;
.super Lcom/soundcloud/android/crop/s;
.source "CropImageActivity.java"


# static fields
.field private static final SIZE_DEFAULT:I = 0x800

.field private static final SIZE_LIMIT:I = 0x1000


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private cropView:Lcom/soundcloud/android/crop/m;

.field private exifRotation:I

.field private final handler:Landroid/os/Handler;

.field private imageView:Lcom/soundcloud/android/crop/CropImageView;

.field private isSaving:Z

.field private maxX:I

.field private maxY:I

.field private rotateBitmap:Lcom/soundcloud/android/crop/v;

.field private sampleSize:I

.field private saveUri:Landroid/net/Uri;

.field private sourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/soundcloud/android/crop/s;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/v;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/v;

    return-object v0
.end method

.method static synthetic access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I

    return v0
.end method

.method static synthetic access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I

    return v0
.end method

.method static synthetic access$800(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/m;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/m;

    return-object v0
.end method

.method static synthetic access$802(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/m;)Lcom/soundcloud/android/crop/m;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/m;

    return-object p1
.end method

.method static synthetic access$900(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private calculateBitmapSampleSize(Landroid/net/Uri;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 128
    .line 129
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 130
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 133
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getMaxImageSize()I

    move-result v1

    .line 140
    :goto_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v0

    if-gt v3, v1, :cond_0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v0

    if-le v3, v1, :cond_1

    .line 141
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 143
    :cond_1
    return v0
.end method

.method private clearImageView()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->clear()V

    .line 345
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/v;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->f()V

    .line 348
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 349
    return-void
.end method

.method private decodeRegionCrop(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->clearImageView()V

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 301
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v7, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v8

    .line 303
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v9

    .line 305
    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    if-eqz v2, :cond_1

    .line 307
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 308
    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 310
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 311
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 314
    iget v2, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_4

    int-to-float v2, v8

    :goto_0
    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_0

    int-to-float v0, v9

    :cond_0
    invoke-virtual {v4, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 315
    new-instance p1, Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v2, v4, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v5, v4, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {p1, v0, v2, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 319
    :cond_1
    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v3, p1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 320
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v1, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v1, p3, :cond_3

    .line 321
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 322
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 323
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 338
    :cond_3
    invoke-static {v7}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    .line 340
    :goto_1
    return-object v0

    :cond_4
    move v2, v0

    .line 314
    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 327
    :goto_2
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rectangle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is outside of the image ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 331
    :catch_1
    move-exception v0

    move-object v2, v7

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 332
    :goto_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error cropping image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/soundcloud/android/crop/a;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 338
    invoke-static {v2}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 334
    :catch_2
    move-exception v0

    move-object v7, v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 335
    :goto_4
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OOM cropping image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/soundcloud/android/crop/a;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 338
    invoke-static {v7}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_5
    invoke-static {v7}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v7, v2

    goto :goto_5

    .line 334
    :catch_3
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    .line 331
    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v2, v7

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_8
    move-exception v1

    move-object v2, v7

    goto :goto_3

    .line 325
    :catch_9
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_2
.end method

.method private getMaxImageSize()I
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getMaxTextureSize()I

    move-result v0

    .line 148
    if-nez v0, :cond_0

    .line 149
    const/16 v0, 0x800

    .line 151
    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getMaxTextureSize()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 158
    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 159
    aget v0, v0, v2

    return v0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 68
    sget v0, Lcom/dexcom/cgm/test/g;->crop_image:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/CropImageView;

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    .line 69
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iput-object p0, v0, Lcom/soundcloud/android/crop/CropImageView;->context:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v1, Lcom/soundcloud/android/crop/b;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/b;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/CropImageView;->setRecycler(Lcom/soundcloud/android/crop/r;)V

    .line 78
    sget v0, Lcom/dexcom/cgm/test/g;->btn_cancel:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/c;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/c;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget v0, Lcom/dexcom/cgm/test/g;->btn_done:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/d;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/d;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method private onSaveClicked()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 239
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/m;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iput-boolean v6, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    .line 245
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/m;

    iget v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    int-to-float v1, v1

    .line 1356
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iget-object v4, v0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iget-object v5, v0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iget-object v0, v0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 246
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 247
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 251
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    if-gt v1, v3, :cond_2

    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    if-le v0, v3, :cond_3

    .line 252
    :cond_2
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v3, v1, v0

    .line 253
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 254
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    .line 255
    iget v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v7

    float-to-int v1, v1

    .line 263
    :cond_3
    :goto_1
    :try_start_0
    invoke-direct {p0, v2, v1, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->decodeRegionCrop(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    if-eqz v0, :cond_4

    .line 271
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v2, Lcom/soundcloud/android/crop/v;

    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-direct {v2, v0, v3}, Lcom/soundcloud/android/crop/v;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v2, v6}, Lcom/soundcloud/android/crop/CropImageView;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/v;Z)V

    .line 272
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v1, v6, v6}, Lcom/soundcloud/android/crop/CropImageView;->center(ZZ)V

    .line 273
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v1, v1, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 275
    :cond_4
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->saveImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 257
    :cond_5
    iget v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    .line 258
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v0, v7

    float-to-int v0, v0

    goto :goto_1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 266
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    goto/16 :goto_0
.end method

.method private saveImage(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/tx/mediator/h;->crop__saving:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/g;

    invoke-direct {v2, p0, p1}, Lcom/soundcloud/android/crop/g;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/soundcloud/android/crop/a;->startBackgroundJob(Lcom/soundcloud/android/crop/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    goto :goto_0
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 353
    const/4 v1, 0x0

    .line 355
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_0

    .line 357
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_0
    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    .line 367
    :goto_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-static {p0, v0, v1}, Lcom/soundcloud/android/crop/a;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 368
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-static {p0, v1, v2}, Lcom/soundcloud/android/crop/a;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 366
    invoke-static {v0, v1}, Lcom/soundcloud/android/crop/a;->copyExifRotation(Ljava/io/File;Ljava/io/File;)Z

    .line 371
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultUri(Landroid/net/Uri;)V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/soundcloud/android/crop/h;

    invoke-direct {v1, p0, p1}, Lcom/soundcloud/android/crop/h;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    .line 383
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    :try_start_1
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot open file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/a;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private setResultException(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 407
    const/16 v0, 0x194

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 408
    return-void
.end method

.method private setResultUri(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 403
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "output"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 404
    return-void
.end method

.method private setupFromIntent()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const-string v3, "aspect_x"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I

    .line 98
    const-string v3, "aspect_y"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I

    .line 99
    const-string v3, "max_x"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    .line 100
    const-string v3, "max_y"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    .line 101
    const-string v3, "output"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    .line 104
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    .line 105
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-static {p0, v0, v2}, Lcom/soundcloud/android/crop/a;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/soundcloud/android/crop/a;->getExifRotation(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->calculateBitmapSampleSize(Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    .line 111
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 112
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 113
    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 114
    new-instance v2, Lcom/soundcloud/android/crop/v;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-direct {v2, v0, v3}, Lcom/soundcloud/android/crop/v;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/a;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OOM reading image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/a;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/soundcloud/android/crop/a;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private startCrop()V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/v;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/CropImageView;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/v;Z)V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/tx/mediator/h;->crop__wait:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/e;

    invoke-direct {v2, p0}, Lcom/soundcloud/android/crop/e;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/soundcloud/android/crop/a;->startBackgroundJob(Lcom/soundcloud/android/crop/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic addLifeCycleListener(Lcom/soundcloud/android/crop/t;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/s;->addLifeCycleListener(Lcom/soundcloud/android/crop/t;)V

    return-void
.end method

.method public isSaving()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/s;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->requestWindowFeature(I)Z

    .line 56
    sget v0, Lcom/dexcom/cgm/k/l;->crop__activity_crop:I

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->initViews()V

    .line 59
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->setupFromIntent()V

    .line 60
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/v;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->startCrop()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Lcom/soundcloud/android/crop/s;->onDestroy()V

    .line 388
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/v;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->f()V

    .line 391
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic removeLifeCycleListener(Lcom/soundcloud/android/crop/t;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/s;->removeLifeCycleListener(Lcom/soundcloud/android/crop/t;)V

    return-void
.end method

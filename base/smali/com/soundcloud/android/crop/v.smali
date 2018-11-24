.class final Lcom/soundcloud/android/crop/v;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    .line 16
    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lcom/soundcloud/android/crop/v;->b:I

    .line 17
    return-void
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/soundcloud/android/crop/v;->b:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/soundcloud/android/crop/v;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/soundcloud/android/crop/v;->b:I

    .line 21
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    .line 33
    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/soundcloud/android/crop/v;->b:I

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 43
    iget-object v2, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 44
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 45
    iget v1, p0, Lcom/soundcloud/android/crop/v;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 46
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/v;->e()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/v;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 48
    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/soundcloud/android/crop/v;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/soundcloud/android/crop/v;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/soundcloud/android/crop/v;->a:Landroid/graphics/Bitmap;

    .line 78
    :cond_0
    return-void
.end method

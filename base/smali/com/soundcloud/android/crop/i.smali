.class final Lcom/soundcloud/android/crop/i;
.super Ljava/lang/Object;
.source "CropImageActivity.java"


# instance fields
.field final synthetic a:Lcom/soundcloud/android/crop/CropImageActivity;


# direct methods
.method private constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;B)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/i;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/i;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 190
    .line 1193
    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$400(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1197
    new-instance v3, Lcom/soundcloud/android/crop/m;

    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/soundcloud/android/crop/m;-><init>(Landroid/view/View;)V

    .line 1198
    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$400(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->e()I

    move-result v4

    .line 1199
    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$400(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->d()I

    move-result v5

    .line 1201
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1204
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v0, 0x5

    .line 1208
    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1209
    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    iget-object v7, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v7}, Lcom/soundcloud/android/crop/CropImageActivity;->access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v7

    if-le v0, v7, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v7, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v7}, Lcom/soundcloud/android/crop/CropImageActivity;->access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v7

    div-int/2addr v0, v7

    .line 1216
    :goto_0
    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 1217
    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    .line 1219
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v4

    int-to-float v9, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {v7, v8, v9, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1220
    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v1, v6, v7, v0}, Lcom/soundcloud/android/crop/m;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 1221
    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/soundcloud/android/crop/CropImageView;->add(Lcom/soundcloud/android/crop/m;)V

    .line 190
    :cond_0
    return-void

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v7, p0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v7}, Lcom/soundcloud/android/crop/CropImageActivity;->access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I

    move-result v7

    div-int/2addr v0, v7

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1220
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

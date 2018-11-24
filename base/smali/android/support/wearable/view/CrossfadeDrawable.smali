.class public Landroid/support/wearable/view/CrossfadeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CrossfadeDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# instance fields
.field private mAlpha:I

.field private mBase:Landroid/graphics/drawable/Drawable;

.field private mChangingConfigs:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorFilterColor:I

.field private mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

.field private mDither:Z

.field private mFading:Landroid/graphics/drawable/Drawable;

.field private mFilterBitmap:Z

.field private mProgress:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method private initDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 97
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 98
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 102
    iget v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilterColor:I

    iget-object v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 104
    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mDither:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 105
    iget-boolean v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFilterBitmap:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 106
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 107
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    .line 230
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 233
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 237
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 113
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 116
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mProgress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 117
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    :cond_2
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mAlpha:I

    return v0
.end method

.method public getBase()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mChangingConfigs:I

    return v0
.end method

.method public getFading()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 132
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v1

    .line 134
    :goto_0
    iget-object v2, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 136
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 123
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v1

    .line 125
    :goto_0
    iget-object v2, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 127
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    :goto_1
    invoke-static {v0, v1}, Landroid/support/wearable/view/CrossfadeDrawable;->resolveOpacity(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_1
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 155
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 158
    :cond_1
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 147
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->invalidateSelf()V

    .line 148
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 260
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 262
    :cond_0
    iget-object v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 265
    :cond_1
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 250
    :cond_0
    iget-object v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 253
    :cond_1
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 314
    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 282
    iput p1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mAlpha:I

    .line 283
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->invalidateSelf()V

    .line 285
    :cond_0
    return-void
.end method

.method public setBase(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 78
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 81
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-direct {p0, p1}, Landroid/support/wearable/view/CrossfadeDrawable;->initDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->invalidateSelf()V

    .line 85
    :cond_1
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mChangingConfigs:I

    if-eq v0, p1, :cond_1

    .line 163
    iput p1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mChangingConfigs:I

    .line 164
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 167
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 171
    :cond_1
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilterColor:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p2, :cond_2

    .line 215
    :cond_0
    iput p1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilterColor:I

    .line 216
    iput-object p2, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    .line 217
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 220
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 224
    :cond_2
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_1

    .line 202
    iput-object p1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 203
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 206
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 210
    :cond_1
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mDither:Z

    if-eq v0, p1, :cond_1

    .line 189
    iput-boolean p1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mDither:Z

    .line 190
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 197
    :cond_1
    return-void
.end method

.method public setFading(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 61
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 64
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    .line 65
    if-eqz p1, :cond_1

    .line 66
    invoke-direct {p0, p1}, Landroid/support/wearable/view/CrossfadeDrawable;->initDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->invalidateSelf()V

    .line 70
    :cond_2
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFilterBitmap:Z

    if-eq v0, p1, :cond_1

    .line 176
    iput-boolean p1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFilterBitmap:Z

    .line 177
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 184
    :cond_1
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/support/wearable/view/Func;->clamp(FII)F

    move-result v0

    .line 89
    iget v1, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mProgress:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 90
    iput v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mProgress:F

    .line 91
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->invalidateSelf()V

    .line 93
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mFading:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CrossfadeDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0}, Landroid/support/wearable/view/CrossfadeDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 321
    :cond_1
    return-void
.end method

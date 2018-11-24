.class public Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
.super Ljava/lang/Object;
.source "WatchFaceStyle.java"


# instance fields
.field private mAcceptsTapEvents:Z

.field private mAmbientPeekMode:I

.field private mBackgroundVisibility:I

.field private mCardPeekMode:I

.field private mCardProgressMode:I

.field private final mComponent:Landroid/content/ComponentName;

.field private mHotwordIndicatorGravity:I

.field private mPeekOpacityMode:I

.field private mShowSystemUiTime:Z

.field private mShowUnreadCountIndicator:Z

.field private mStatusBarGravity:I

.field private mViewProtectionMode:I


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 2

    .prologue
    .line 465
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/content/ComponentName;)V

    .line 466
    return-void
.end method

.method private constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardPeekMode:I

    .line 424
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardProgressMode:I

    .line 426
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mBackgroundVisibility:I

    .line 428
    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowSystemUiTime:Z

    .line 430
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mAmbientPeekMode:I

    .line 432
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mPeekOpacityMode:I

    .line 434
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mViewProtectionMode:I

    .line 436
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mStatusBarGravity:I

    .line 438
    iput v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mHotwordIndicatorGravity:I

    .line 440
    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowUnreadCountIndicator:Z

    .line 442
    iput-boolean v0, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mAcceptsTapEvents:Z

    .line 476
    iput-object p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mComponent:Landroid/content/ComponentName;

    .line 477
    return-void
.end method

.method public static forActivity(Landroid/app/Activity;)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 3

    .prologue
    .line 458
    if-nez p0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public static forComponentName(Landroid/content/ComponentName;)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2

    .prologue
    .line 448
    if-nez p0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "component must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_0
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    invoke-direct {v0, p0}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public static forDefault()Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2

    .prologue
    .line 472
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;-><init>(Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/support/wearable/watchface/WatchFaceStyle;
    .locals 14

    .prologue
    .line 680
    new-instance v0, Landroid/support/wearable/watchface/WatchFaceStyle;

    iget-object v1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardPeekMode:I

    iget v3, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardProgressMode:I

    iget v4, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mBackgroundVisibility:I

    iget-boolean v5, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowSystemUiTime:Z

    iget v6, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mAmbientPeekMode:I

    iget v7, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mPeekOpacityMode:I

    iget v8, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mViewProtectionMode:I

    iget v9, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mStatusBarGravity:I

    iget v10, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mHotwordIndicatorGravity:I

    iget-boolean v11, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowUnreadCountIndicator:Z

    iget-boolean v12, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mAcceptsTapEvents:Z

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Landroid/support/wearable/watchface/WatchFaceStyle;-><init>(Landroid/content/ComponentName;IIIZIIIIIZZLandroid/support/wearable/watchface/WatchFaceStyle$1;)V

    return-object v0
.end method

.method public setAcceptsTapEvents(Z)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 0

    .prologue
    .line 672
    iput-boolean p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mAcceptsTapEvents:Z

    .line 673
    return-object p0
.end method

.method public setAmbientPeekMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2

    .prologue
    .line 549
    packed-switch p1, :pswitch_data_0

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ambient peek mode must be AMBIENT_PEEK_MODE_VISIBLE or AMBIENT_PEEK_MODE_HIDDEN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :pswitch_0
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mAmbientPeekMode:I

    .line 553
    return-object p0

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundVisibility(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2

    .prologue
    .line 518
    packed-switch p1, :pswitch_data_0

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "backgroundVisibility must be BACKGROUND_VISIBILITY_INTERRUPTIVE or BACKGROUND_VISIBILITY_PERSISTENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :pswitch_0
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mBackgroundVisibility:I

    .line 522
    return-object p0

    .line 518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCardPeekMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2

    .prologue
    .line 485
    packed-switch p1, :pswitch_data_0

    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "peekMode must be PEEK_MODE_VARIABLE or PEEK_MODE_SHORT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :pswitch_0
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardPeekMode:I

    .line 489
    return-object p0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCardProgressMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2

    .prologue
    .line 500
    packed-switch p1, :pswitch_data_0

    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progressMode must be PROGRESS_MODE_NONE or PROGRESS_MODE_DISPLAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :pswitch_0
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mCardProgressMode:I

    .line 504
    return-object p0

    .line 500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setHotwordIndicatorGravity(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 0

    .prologue
    .line 644
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mHotwordIndicatorGravity:I

    .line 645
    return-object p0
.end method

.method public setPeekOpacityMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2

    .prologue
    .line 567
    packed-switch p1, :pswitch_data_0

    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Peek card opacity must be PEEK_OPACITY_MODE_OPAQUE or PEEK_OPACITY_MODE_TRANSLUCENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :pswitch_0
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mPeekOpacityMode:I

    .line 571
    return-object p0

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowSystemUiTime(Z)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 0

    .prologue
    .line 537
    iput-boolean p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowSystemUiTime:Z

    .line 538
    return-object p0
.end method

.method public setShowUnreadCountIndicator(Z)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 0

    .prologue
    .line 656
    iput-boolean p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mShowUnreadCountIndicator:Z

    .line 657
    return-object p0
.end method

.method public setStatusBarGravity(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 0

    .prologue
    .line 626
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mStatusBarGravity:I

    .line 627
    return-object p0
.end method

.method public setViewProtection(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p0, p1}, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->setViewProtectionMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setViewProtectionMode(I)Landroid/support/wearable/watchface/WatchFaceStyle$Builder;
    .locals 2

    .prologue
    .line 604
    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View protection must be combination PROTECT_STATUS_BAR, PROTECT_HOTWORD_INDICATOR or PROTECT_WHOLE_SCREEN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_1
    iput p1, p0, Landroid/support/wearable/watchface/WatchFaceStyle$Builder;->mViewProtectionMode:I

    .line 611
    return-object p0
.end method

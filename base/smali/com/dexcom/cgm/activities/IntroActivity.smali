.class public Lcom/dexcom/cgm/activities/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"


# instance fields
.field busyAnimating:Z

.field currentScreen:I

.field forward:Z

.field minDistance:I

.field nextScreen:I

.field screenWidth:I

.field screenWidthTrigger:I

.field startTime:J

.field startXEventPosition:I

.field theAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field theListener:Landroid/view/animation/Animation$AnimationListener;

.field totalAnimations:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->forward:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/IntroActivity;II)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/IntroActivity;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->briefPause()V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/IntroActivity;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/IntroActivity;->prepareScreen(I)V

    return-void
.end method

.method private assignAndStartAnimation(II)V
    .locals 4

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 197
    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 198
    iget-object v2, p0, Lcom/dexcom/cgm/activities/IntroActivity;->theListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 199
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/IntroActivity;->busyAnimating:Z

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    .line 205
    return-void
.end method

.method private assignAndStartAnimator(II)V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->busyAnimating:Z

    .line 211
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 214
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 215
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 216
    iget-object v1, p0, Lcom/dexcom/cgm/activities/IntroActivity;->theAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 217
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 218
    iget v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    .line 219
    return-void
.end method

.method private briefPause()V
    .locals 2

    .prologue
    .line 177
    const-wide/16 v0, 0x2ee

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private makeInvisible(I)V
    .locals 2

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 470
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    return-void
.end method

.method private makeVisible(I)V
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 464
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    return-void
.end method

.method private prepareScreen(I)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 488
    iput p1, p0, Lcom/dexcom/cgm/activities/IntroActivity;->currentScreen:I

    .line 490
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_1:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_circle_white:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 491
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_2:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_circle_white:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 492
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_3:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_circle_white:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 493
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_4:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_circle_white:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 495
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeInvisible(I)V

    .line 496
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeInvisible(I)V

    .line 497
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_3:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeInvisible(I)V

    .line 498
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_4:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeInvisible(I)V

    .line 500
    iget v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->currentScreen:I

    if-gtz v0, :cond_0

    .line 501
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->currentScreen:I

    .line 503
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->currentScreen:I

    if-le v0, v2, :cond_1

    .line 504
    iput v2, p0, Lcom/dexcom/cgm/activities/IntroActivity;->currentScreen:I

    .line 507
    :cond_1
    iget v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 522
    :goto_0
    return-void

    .line 510
    :pswitch_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->prepareScreen1()V

    goto :goto_0

    .line 513
    :pswitch_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->prepareScreen2()V

    goto :goto_0

    .line 516
    :pswitch_2
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->prepareScreen3()V

    goto :goto_0

    .line 519
    :pswitch_3
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->prepareScreen4()V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private prepareScreen0()V
    .locals 4

    .prologue
    .line 391
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_header:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->g5splash_white_logo:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 392
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_header2:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->g5splash_green_logo:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 393
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_header:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 394
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_background:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 395
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeInvisible(I)V

    .line 396
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_login:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeInvisible(I)V

    .line 397
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_copyright:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 398
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_version:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    .line 400
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->startTime:J

    .line 401
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_header:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_title_up1:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimator(II)V

    .line 402
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_header2:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_title_up2:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimator(II)V

    .line 403
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_background:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_fade_in:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimator(II)V

    .line 404
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->nextScreen:I

    .line 405
    return-void
.end method

.method private prepareScreen1()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 409
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_copyright:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeInvisible(I)V

    .line 410
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_version:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeInvisible(I)V

    .line 411
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_background:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 412
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 413
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 414
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_3:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 415
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_4:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 416
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 417
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 418
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 419
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 420
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_footer:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 421
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 422
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_login:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 423
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image1:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setViewAlpha(IF)V

    .line 424
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setViewAlpha(IF)V

    .line 425
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_1:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_circle_green:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 426
    return-void
.end method

.method private prepareScreen2()V
    .locals 2

    .prologue
    .line 430
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_background:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 431
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 432
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 433
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 434
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 435
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image1:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setViewAlpha(IF)V

    .line 436
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setViewAlpha(IF)V

    .line 437
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_2:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_circle_green:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 438
    return-void
.end method

.method private prepareScreen3()V
    .locals 2

    .prologue
    .line 442
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_background:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 443
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image2:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->guy_showing_xmitter:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 444
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeInvisible(I)V

    .line 445
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 446
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 447
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_3:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 448
    sget v0, Lcom/dexcom/cgm/activities/R$id;->wife_at_home:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeInvisible(I)V

    .line 449
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setViewAlpha(IF)V

    .line 450
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_3:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_circle_green:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 451
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen_header:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 453
    return-void
.end method

.method private prepareScreen4()V
    .locals 2

    .prologue
    .line 457
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circle_4:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_circle_green:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 458
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_4:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 459
    return-void
.end method

.method private setImage(II)V
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 483
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    return-void
.end method

.method private setViewAlpha(IF)V
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 477
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 478
    return-void
.end method

.method private showClinicalTrialDisclaimerIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->isClinicalTrialMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 160
    const-string v1, "CAUTION - Investigation Device. Limited by Federal (or United States) law to Investigational use."

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 161
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 162
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 163
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 164
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0
.end method

.method private showIntent(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->finish()V

    .line 190
    return-void
.end method


# virtual methods
.method public moveBackToPrevScreen()V
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 353
    :goto_0
    return-void

    .line 342
    :pswitch_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->transitionScreen2_to_1()V

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->transitionScreen3_to_2()V

    goto :goto_0

    .line 348
    :pswitch_2
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->transitionScreen4_to_3()V

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public moveForwardToNextScreen()V
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 324
    :pswitch_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->transitionScreen1_to_2()V

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->transitionScreen2_to_3()V

    goto :goto_0

    .line 330
    :pswitch_2
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->transitionScreen3_to_4()V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->finish()V

    .line 529
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasCompletedInitialSetupWizard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-class v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->showIntent(Ljava/lang/Class;)V

    .line 152
    :goto_0
    return-void

    .line 61
    :cond_0
    const-class v0, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->showIntent(Ljava/lang/Class;)V

    goto :goto_0

    .line 66
    :cond_1
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_intro:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->setContentView(I)V

    .line 67
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_version:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 81
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->screenWidth:I

    .line 83
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->screenWidthTrigger:I

    .line 84
    iget v0, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->minDistance:I

    .line 85
    iput v4, p0, Lcom/dexcom/cgm/activities/IntroActivity;->currentScreen:I

    .line 87
    new-instance v0, Lcom/dexcom/cgm/activities/IntroActivity$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/IntroActivity$1;-><init>(Lcom/dexcom/cgm/activities/IntroActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->theAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 121
    new-instance v0, Lcom/dexcom/cgm/activities/IntroActivity$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/IntroActivity$2;-><init>(Lcom/dexcom/cgm/activities/IntroActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->theListener:Landroid/view/animation/Animation$AnimationListener;

    .line 150
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->showClinicalTrialDisclaimerIfNeeded()V

    .line 151
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->prepareScreen0()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onLogIn(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_in_bottom:I

    sget v2, Lcom/dexcom/cgm/activities/R$anim;->stay_stationary:I

    .line 314
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 311
    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 316
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->finish()V

    .line 317
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 171
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 358
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->busyAnimating:Z

    if-eqz v0, :cond_1

    .line 360
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 386
    :cond_0
    :goto_0
    return v1

    .line 363
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 364
    iget v2, p0, Lcom/dexcom/cgm/activities/IntroActivity;->startXEventPosition:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 366
    iget v3, p0, Lcom/dexcom/cgm/activities/IntroActivity;->startXEventPosition:I

    if-le v3, v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->forward:Z

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->startXEventPosition:I

    goto :goto_0

    .line 366
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 374
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 376
    iget v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->minDistance:I

    if-le v2, v0, :cond_0

    .line 378
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->forward:Z

    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->moveForwardToNextScreen()V

    goto :goto_0

    .line 381
    :cond_4
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/IntroActivity;->moveBackToPrevScreen()V

    goto :goto_0

    .line 386
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public transitionScreen1_to_2()V
    .locals 4

    .prologue
    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    .line 225
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->startTime:J

    .line 227
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 228
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 229
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 230
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 231
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image1:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->full_fade_out:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 232
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_1:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_out_left:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 233
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_2:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_in_right:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 234
    const/4 v0, 0x2

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->nextScreen:I

    .line 235
    return-void
.end method

.method public transitionScreen2_to_1()V
    .locals 4

    .prologue
    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    .line 268
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->startTime:J

    .line 269
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 270
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 271
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_1:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_in_left:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 272
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_2:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_out_right:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 273
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image1:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->full_fade_in:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 274
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->nextScreen:I

    .line 275
    return-void
.end method

.method public transitionScreen2_to_3()V
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    .line 240
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->startTime:J

    .line 241
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 242
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_3:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 243
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_disappear_girl:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimator(II)V

    .line 244
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image2:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_zoom_guy:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimator(II)V

    .line 245
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_2:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_out_left:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 246
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_3:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_in_right:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 247
    const/4 v0, 0x3

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->nextScreen:I

    .line 248
    return-void
.end method

.method public transitionScreen3_to_2()V
    .locals 4

    .prologue
    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    .line 280
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->startTime:J

    .line 281
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 282
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_3:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 284
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image2:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_screen2_image2sm:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 285
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 286
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_screen2_image1sm:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 287
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_reappear_girl:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimator(II)V

    .line 288
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image2:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_zoomdown_guy:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimator(II)V

    .line 289
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_2:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_in_left:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 290
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_3:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_out_right:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 292
    const/4 v0, 0x2

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->nextScreen:I

    .line 293
    return-void
.end method

.method public transitionScreen3_to_4()V
    .locals 4

    .prologue
    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    .line 253
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->startTime:J

    .line 254
    sget v0, Lcom/dexcom/cgm/activities/R$id;->wife_at_home:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/IntroActivity;->makeVisible(I)V

    .line 255
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image2:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->splash_screen2_image2sm:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->setImage(II)V

    .line 256
    sget v0, Lcom/dexcom/cgm/activities/R$id;->wife_at_home:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_in_left:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 257
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image2:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_zoomdown_guy:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimator(II)V

    .line 258
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_3:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_out_left:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 259
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_4:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_in_right:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 260
    const/4 v0, 0x4

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->nextScreen:I

    .line 261
    return-void
.end method

.method public transitionScreen4_to_3()V
    .locals 4

    .prologue
    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    .line 298
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->startTime:J

    .line 299
    sget v0, Lcom/dexcom/cgm/activities/R$id;->wife_at_home:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_out_left:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 300
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen2_image1a:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_out_left:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 301
    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_screen1_image2:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_zoom_guy:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimator(II)V

    .line 302
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_3:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_in_left:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 303
    sget v0, Lcom/dexcom/cgm/activities/R$id;->tour_text_4:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_slide_out_right:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->assignAndStartAnimation(II)V

    .line 304
    const/4 v0, 0x3

    iput v0, p0, Lcom/dexcom/cgm/activities/IntroActivity;->nextScreen:I

    .line 305
    return-void
.end method

.class public Landroid/support/wearable/view/ProgressSpinner;
.super Landroid/widget/ProgressBar;
.source "ProgressSpinner.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final SHOWINGNESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/wearable/view/ProgressSpinner;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOWINGNESS_ANIMATION_MS:I = 0x1cc


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mColors:[I

.field private mEvaluator:Landroid/animation/ArgbEvaluator;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mShowingness:F

.field private mStartingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/support/wearable/view/ProgressSpinner$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "showingness"

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/view/ProgressSpinner$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/wearable/view/ProgressSpinner;->SHOWINGNESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object v1, p0, Landroid/support/wearable/view/ProgressSpinner;->mColors:[I

    .line 69
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/wearable/view/ProgressSpinner;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mColors:[I

    .line 69
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/ProgressSpinner;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mColors:[I

    .line 69
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/support/wearable/view/ProgressSpinner;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/ProgressSpinner;F)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/wearable/view/ProgressSpinner;->setShowingness(F)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/wearable/view/ProgressSpinner;)F
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/wearable/view/ProgressSpinner;->getShowingness()F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/support/wearable/view/ProgressSpinner;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mStartingLevel:I

    return v0
.end method

.method static synthetic access$202(Landroid/support/wearable/view/ProgressSpinner;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Landroid/support/wearable/view/ProgressSpinner;->mStartingLevel:I

    return p1
.end method

.method static synthetic access$302(Landroid/support/wearable/view/ProgressSpinner;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/wearable/view/ProgressSpinner;)[I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mColors:[I

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/wearable/view/ProgressSpinner;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mShowingness:F

    return v0
.end method

.method static synthetic access$600(FFF)F
    .locals 1

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Landroid/support/wearable/view/ProgressSpinner;->lerpInvSat(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/support/wearable/view/ProgressSpinner;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/wearable/view/ProgressSpinner;FFII)I
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/wearable/view/ProgressSpinner;->getColor(FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(FFF)F
    .locals 1

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Landroid/support/wearable/view/ProgressSpinner;->lerpInv(FFF)F

    move-result v0

    return v0
.end method

.method private static clamp(FFF)F
    .locals 1

    .prologue
    .line 340
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 346
    :goto_0
    return p1

    .line 343
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 344
    goto :goto_0

    :cond_1
    move p1, p0

    .line 346
    goto :goto_0
.end method

.method private getColor(FFII)I
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x0

    invoke-static {v1, p2, p1}, Landroid/support/wearable/view/ProgressSpinner;->lerpInv(FFF)F

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getColorsFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)[I
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 279
    const/4 v0, 0x0

    .line 280
    sget-object v1, Landroid/support/wearable/R$styleable;->ProgressSpinner:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 283
    sget v2, Landroid/support/wearable/R$styleable;->ProgressSpinner_color_sequence:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :try_start_0
    sget v2, Landroid/support/wearable/R$styleable;->ProgressSpinner_color_sequence:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 287
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 294
    :cond_0
    sget v0, Landroid/support/wearable/R$styleable;->ProgressSpinner_color_sequence:I

    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 296
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v4

    .line 300
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 302
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getShowingness()F
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mShowingness:F

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 100
    :cond_0
    new-instance v0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;-><init>(Landroid/support/wearable/view/ProgressSpinner;)V

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/ProgressSpinner;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mShowingness:F

    .line 105
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mColors:[I

    .line 106
    if-eqz p2, :cond_2

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/support/wearable/view/ProgressSpinner;->getColorsFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)[I

    move-result-object v0

    .line 111
    :cond_2
    if-nez v0, :cond_4

    .line 112
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/wearable/R$array;->progress_spinner_sequence:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v2, v0, [I

    move v0, v1

    .line 116
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 117
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    aput v4, v2, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v2

    .line 123
    :cond_4
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/ProgressSpinner;->setColors([I)V

    .line 124
    return-void
.end method

.method private static lerpInv(FFF)F
    .locals 2

    .prologue
    .line 331
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_0

    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lerpInvSat(FFF)F
    .locals 1

    .prologue
    .line 321
    invoke-static {p0, p1, p2}, Landroid/support/wearable/view/ProgressSpinner;->lerpInv(FFF)F

    move-result v0

    invoke-static {v0}, Landroid/support/wearable/view/ProgressSpinner;->saturate(F)F

    move-result v0

    return v0
.end method

.method private static saturate(F)F
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/support/wearable/view/ProgressSpinner;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method private setShowingness(F)V
    .locals 0

    .prologue
    .line 267
    iput p1, p0, Landroid/support/wearable/view/ProgressSpinner;->mShowingness:F

    .line 268
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner;->invalidate()V

    .line 269
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 200
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/ProgressSpinner;->setVisibility(I)V

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/view/ProgressSpinner;->setShowingness(F)V

    .line 202
    return-void
.end method

.method public hideWithAnimation()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/ProgressSpinner;->hideWithAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    .line 212
    return-void
.end method

.method public hideWithAnimation(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 230
    iput-object v1, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 234
    sget-object v0, Landroid/support/wearable/view/ProgressSpinner;->SHOWINGNESS:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/wearable/view/ProgressSpinner;->getShowingness()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 236
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/support/wearable/view/ProgressSpinner;->getShowingness()F

    move-result v1

    const/high16 v2, 0x43e60000    # 460.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 237
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/support/wearable/view/ProgressSpinner$3;

    invoke-direct {v1, p0, p1}, Landroid/support/wearable/view/ProgressSpinner$3;-><init>(Landroid/support/wearable/view/ProgressSpinner;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method public setColors([I)V
    .locals 1

    .prologue
    .line 310
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 311
    iput-object p1, p0, Landroid/support/wearable/view/ProgressSpinner;->mColors:[I

    .line 313
    :cond_0
    return-void
.end method

.method public showWithAnimation()V
    .locals 2

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/wearable/view/ProgressSpinner;->showWithAnimation(J)V

    .line 132
    return-void
.end method

.method public showWithAnimation(J)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/wearable/view/ProgressSpinner;->showWithAnimation(JLandroid/animation/AnimatorListenerAdapter;)V

    .line 143
    return-void
.end method

.method public showWithAnimation(JLandroid/animation/AnimatorListenerAdapter;)V
    .locals 5
    .param p3    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 156
    iput-object v2, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 160
    sget-object v0, Landroid/support/wearable/view/ProgressSpinner;->SHOWINGNESS:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 161
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1cc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 163
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 165
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/support/wearable/view/ProgressSpinner$2;

    invoke-direct {v1, p0, p3}, Landroid/support/wearable/view/ProgressSpinner$2;-><init>(Landroid/support/wearable/view/ProgressSpinner;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 190
    :cond_2
    :goto_0
    return-void

    .line 186
    :cond_3
    if-eqz p3, :cond_2

    .line 187
    invoke-virtual {p3, v2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 188
    invoke-virtual {p3, v2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 160
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

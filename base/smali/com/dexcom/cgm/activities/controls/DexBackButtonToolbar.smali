.class public Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;
.super Landroid/widget/Toolbar;
.source "DexBackButtonToolbar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->setup()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->setup()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->setup()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->setup()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 72
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 76
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->setTitleTextColor(I)V

    .line 55
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_arrow_back:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->setNavigationIcon(I)V

    .line 56
    new-instance v0, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar$1;-><init>(Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.class Landroid/support/v4/content/res/ConfigurationHelper$DonutImpl;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"

# interfaces
.implements Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/res/ConfigurationHelper$1;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$DonutImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDensityDpi(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperDonut;->getDensityDpi(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperDonut;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperDonut;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperDonut;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
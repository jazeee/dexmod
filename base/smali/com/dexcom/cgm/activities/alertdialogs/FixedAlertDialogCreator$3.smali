.class final Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3;
.super Ljava/lang/Object;
.source "FixedAlertDialogCreator.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 148
    sget v0, Lcom/dexcom/cgm/activities/R$id;->transmitter_compatibility_website_link:I

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    new-instance v1, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3$1;-><init>(Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3;)V

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/CustomViewUtil;->createHyperlink(Landroid/widget/TextView;Landroid/text/style/ClickableSpan;)V

    .line 163
    return-void
.end method

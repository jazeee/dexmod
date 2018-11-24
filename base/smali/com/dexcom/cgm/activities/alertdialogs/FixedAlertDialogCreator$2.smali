.class final Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$2;
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
    .line 110
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    sget v0, Lcom/dexcom/cgm/activities/R$id;->sensor_removal_help:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_tip_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$2$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$2$1;-><init>(Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget v0, Lcom/dexcom/cgm/activities/R$id;->sensor_insertion_help:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_tip_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$2$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$2$2;-><init>(Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

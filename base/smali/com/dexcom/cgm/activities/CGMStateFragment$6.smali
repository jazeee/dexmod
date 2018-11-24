.class Lcom/dexcom/cgm/activities/CGMStateFragment$6;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$6;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 925
    sget v0, Lcom/dexcom/cgm/activities/R$id;->textViewTimePeriod:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 927
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$6;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1600(Lcom/dexcom/cgm/activities/CGMStateFragment;)Ljava/lang/String;

    move-result-object v1

    .line 928
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    sget v0, Lcom/dexcom/cgm/activities/R$id;->bg_meter_value_help_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/HelpTip;

    .line 930
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/HelpTip;->getHelpTipIcon()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/CGMStateFragment$6$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$6$1;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    return-void
.end method

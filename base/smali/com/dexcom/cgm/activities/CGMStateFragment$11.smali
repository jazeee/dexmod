.class Lcom/dexcom/cgm/activities/CGMStateFragment$11;
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
    .line 1063
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$11;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1067
    sget v0, Lcom/dexcom/cgm/activities/R$id;->transmitter_insertion_help_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/HelpTip;

    .line 1069
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/HelpTip;->getHelpTipIcon()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/CGMStateFragment$11$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$11$1;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment$11;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    sget v0, Lcom/dexcom/cgm/activities/R$id;->error_still_present_help_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/HelpTip;

    .line 1093
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/HelpTip;->getHelpTipIcon()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/CGMStateFragment$11$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$11$2;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment$11;)V

    .line 1094
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    return-void
.end method

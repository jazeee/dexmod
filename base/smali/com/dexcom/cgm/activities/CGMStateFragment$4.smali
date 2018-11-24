.class Lcom/dexcom/cgm/activities/CGMStateFragment$4;
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
    .line 784
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$4;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 788
    sget v0, Lcom/dexcom/cgm/activities/R$id;->transmitter_insertion_help_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/HelpTip;

    .line 790
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/HelpTip;->getHelpTipIcon()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/CGMStateFragment$4$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$4$1;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    return-void
.end method

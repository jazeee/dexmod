.class Lcom/dexcom/cgm/activities/CGMStateFragment$8;
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
    .line 973
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$8;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 977
    sget v0, Lcom/dexcom/cgm/activities/R$id;->sensor_removal_help_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/HelpTip;

    .line 978
    new-instance v1, Lcom/dexcom/cgm/activities/CGMStateFragment$8$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$8$1;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment$8;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/HelpTip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    sget v0, Lcom/dexcom/cgm/activities/R$id;->email_technical_support_help_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/HelpTip;

    .line 989
    new-instance v1, Lcom/dexcom/cgm/activities/CGMStateFragment$8$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$8$2;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment$8;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/HelpTip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1004
    return-void
.end method

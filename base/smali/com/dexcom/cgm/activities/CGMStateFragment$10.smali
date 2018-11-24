.class Lcom/dexcom/cgm/activities/CGMStateFragment$10;
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
    .line 1038
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$10;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$10;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    sget v0, Lcom/dexcom/cgm/activities/R$id;->toggleSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1702(Lcom/dexcom/cgm/activities/CGMStateFragment;Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 1044
    return-void
.end method

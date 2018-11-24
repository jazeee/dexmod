.class Lcom/dexcom/cgm/activities/CGMStateFragment$5$1$1;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$2:Lcom/dexcom/cgm/activities/CGMStateFragment$5$1;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment$5$1;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$5$1$1;->this$2:Lcom/dexcom/cgm/activities/CGMStateFragment$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 890
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$5$1$1;->this$2:Lcom/dexcom/cgm/activities/CGMStateFragment$5$1;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$5$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$5;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$5;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    .line 891
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 893
    sget v0, Lcom/dexcom/cgm/activities/R$id;->error_text:I

    .line 894
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 895
    iget-object v2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$5$1$1;->this$2:Lcom/dexcom/cgm/activities/CGMStateFragment$5$1;

    iget-object v2, v2, Lcom/dexcom/cgm/activities/CGMStateFragment$5$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$5;

    iget-object v2, v2, Lcom/dexcom/cgm/activities/CGMStateFragment$5;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    sget v3, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_text_14:I

    .line 896
    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "600"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    const-string v5, "20"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    .line 895
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    return-void
.end method

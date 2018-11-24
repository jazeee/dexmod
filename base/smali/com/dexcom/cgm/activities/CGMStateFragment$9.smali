.class Lcom/dexcom/cgm/activities/CGMStateFragment$9;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$9;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$9;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$9;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1700(Lcom/dexcom/cgm/activities/CGMStateFragment;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1800(Lcom/dexcom/cgm/activities/CGMStateFragment;Z)V

    .line 1052
    return-void
.end method

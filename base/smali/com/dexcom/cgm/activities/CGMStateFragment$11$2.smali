.class Lcom/dexcom/cgm/activities/CGMStateFragment$11$2;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$11;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment$11;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$11$2;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1099
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$11$2;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$11;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$11;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dexcom/cgm/activities/support/TechnicalSupportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1101
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$11$2;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$11;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$11;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->startActivity(Landroid/content/Intent;)V

    .line 1102
    return-void
.end method

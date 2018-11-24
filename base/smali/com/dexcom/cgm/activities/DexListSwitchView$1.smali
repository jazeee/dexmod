.class Lcom/dexcom/cgm/activities/DexListSwitchView$1;
.super Ljava/lang/Object;
.source "DexListSwitchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/DexListSwitchView;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/DexListSwitchView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexListSwitchView$1;->this$0:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexListSwitchView$1;->this$0:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView$1;->this$0:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/dexcom/cgm/activities/DexListSwitchView$2;
.super Ljava/lang/Object;
.source "DexListSwitchView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/DexListSwitchView;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/DexListSwitchView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexListSwitchView$2;->this$0:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView$2;->this$0:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 84
    return-void
.end method

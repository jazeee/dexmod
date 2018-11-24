.class Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3$1;
.super Ljava/lang/Object;
.source "DexListEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3$1;->this$1:Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3$1;->this$1:Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getDexAccountEditText()Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->rollBackToOldText()V

    .line 207
    return-void
.end method

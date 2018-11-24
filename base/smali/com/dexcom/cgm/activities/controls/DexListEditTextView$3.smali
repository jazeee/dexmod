.class Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;
.super Ljava/lang/Object;
.source "DexListEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

.field final synthetic val$newText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;->val$newText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$700(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;->val$newText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;->onSave(Ljava/lang/String;)Z

    move-result v0

    .line 198
    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    new-instance v1, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3$1;-><init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;)V

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$800(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Ljava/lang/Runnable;)V

    .line 211
    :cond_0
    return-void
.end method

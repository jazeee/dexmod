.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;
.super Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;
.source "EditFollowerActivity.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

.field final synthetic val$nicknameField:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;->val$nicknameField:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSave(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 152
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    new-instance v2, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$1;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;)V

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    :goto_0
    return v0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;->val$nicknameField:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getOldText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    new-instance v2, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$2;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3$2;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;)V

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->access$600(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
